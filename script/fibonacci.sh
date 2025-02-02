#!/bin/sh  # Use /bin/sh for POSIX-compliant systems

n="$1"

# Validate input
if ! echo "$n" | grep -qE '^[0-9]+$'; then
  echo "Error: The argument must be a positive integer."
  exit 1
fi

# Fibonacci logic
a=0
b=1

echo "Fibonacci sequence up to $n terms:"
i=0
while [ "$i" -lt "$n" ]; do
  echo -n "$a "
  fn=$((a + b))
  a=$b
  b=$fn
  i=$((i + 1))
done
echo
