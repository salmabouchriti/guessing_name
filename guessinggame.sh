
#!/bin/bash

# Function to count files
count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Get the number of files
correct_number=$(count_files)

# Welcome message
echo "Welcome to the Guessing Game!"
echo "Guess the number of files in this directory."

# Initialize the guess
guess=-1

# Repeat until the guess is correct
while [[ $guess -ne $correct_number ]]
do
    echo "Enter your guess:"
    read guess

    if [[ $guess -lt $correct_number ]]
    then
        echo "Too low! Try again."
    elif [[ $guess -gt $correct_number ]]
    then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed correctly!"
    fi
done
