#!/bin/bash
# This script displays various information to the screen.

# Display 'Hello'
echo 'Hello'

# Assign a value to a variable
WORD='script'

# Display that value using the variable
echo "$WORD"

# Demonstrate that single quotes cause variables to NOT get expanded.
echo '$WORD'

# combine the variable with hard-coded text.
echo "This is a shell $WORD"

echo 'This is a shell ${WORD}'