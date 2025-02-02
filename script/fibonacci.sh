#!/bin/bash

# Check if an argument is passed
if [ -z "$1" ]; then
  echo "Usage: $0 <number_of_terms>"
  exit 1
fi

# Read the number of terms from the argument
n=$1

# Validate the input (must be a positive integer)
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
  echo "Error: The argument must be a positive integer."
  exit 1
fi

# Initialize the first two Fibonacci numbers
a=0
b=1

# Generate the Fibonacci sequence
echo "Fibonacci sequence up to $n terms:"
for (( i=0; i<n; i++ )); do
  echo -n "$a "
  # Calculate the next number in the sequence
  fib=$((a + b))
  a=$b
  b=$fib
done

# Print a newline at the end
echo
