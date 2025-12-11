#!/bin/bash

# PSQL variable for querying the database
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Prompt for username
echo "Enter your username:"
read USERNAME

# Look up user_id by username
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")

# If user doesn't exist, insert and welcome
if [[ -z $USER_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  $PSQL "INSERT INTO users(username) VALUES('$USERNAME');" > /dev/null
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")
else
  # Existing user: get games played and best game
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID;")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID;")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate secret number between 1 and 1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

NUMBER_OF_GUESSES=0

# Prompt to start guessing
echo "Guess the secret number between 1 and 1000:"

# Game loop: keep asking until the correct number is guessed
while true
do
  read GUESS

  # Check if integer
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi

  # Valid integer: count the guess
  NUMBER_OF_GUESSES=$(( NUMBER_OF_GUESSES + 1 ))

  if (( GUESS < SECRET_NUMBER ))
  then
    echo "It's higher than that, guess again:"
  elif (( GUESS > SECRET_NUMBER ))
  then
    echo "It's lower than that, guess again:"
  else
    # Correct guess: exit loop
    break
  fi
done

# Save the completed game with the number of guesses
$PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES);" > /dev/null

# Final message
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
