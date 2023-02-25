#!/usr/bin/env bash
CALCULATOR=$1

# Test 01: Ensure the program runs without error with a simple, valid invocation.
if ! $CALCULATOR 1 - 1; then  # If the return code of $PROGRAM is non-zero (i.e. error)...
  echo 'ERROR! A valid run of the calculator (1 - 1) failed!'
  exit 1
fi

# Test 02: Ensure simple case has correct output...
if [[ $($CALCULATOR 1 - 1) -ne 0 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (1 - 1) failed to produce 0 as an output!'
  exit 1
fi

# Test 03: Ensure program errors with an invalid operand
if $CALCULATOR 0 ? 4; then  # If the return code of $PROGRAM is zero (i.e. success)...
  echo 'ERROR! An invalid run of the application (0 ? 4) apparently succeeded?!'
  exit 1
fi
