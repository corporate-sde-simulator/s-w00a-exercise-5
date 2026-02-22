#!/bin/bash
# =============================================================================
#  EXERCISE 5: BASH / SHELL SCRIPTING
# =============================================================================
#  Bash is the language of Linux terminals and automation.
#
#  HOW TO USE:
#  1. Read each section — examples show you the pattern
#  2. Fill in the TODO sections (replace 'echo "TODO"' with your code)
#  3. Run tests: bash test_exercise.sh
#
#  IMPORTANT BASH RULES:
#  - NO SPACES around = in assignments:  NAME="Alice" (not NAME = "Alice")
#  - ALWAYS QUOTE variables: "$NAME" (not $NAME) to handle spaces
#  - Use [ ] for conditions (with spaces inside!): [ "$x" = "y" ]
#  - End if with 'fi', end for with 'done'
# =============================================================================


# ============================================================================
# PART 1: VARIABLES
# ============================================================================
#
# SYNTAX:
#   NAME="Alice"          ← no spaces around =
#   AGE=25
#   echo "Hello, $NAME"   ← use $ to read variable
#   echo "Age: ${AGE}"    ← ${} is safer (avoids ambiguity)
#
# READING COMMAND OUTPUT INTO A VARIABLE:
#   TODAY=$(date +%Y-%m-%d)     ← runs 'date' and stores result
#   FILE_COUNT=$(ls | wc -l)   ← counts files in current dir
#
# EXAMPLE:
example_greeting() {
    local name="$1"    # $1 = first argument passed to function
    local time="morning"
    echo "Good $time, $name!"
}

# TODO 1: Write a function that takes a name and returns a greeting
# Use the format: "Welcome, [name]! Today is [date]."
# HINT: $(date +%Y-%m-%d) gives you today's date like 2026-02-16
# EXAMPLE: greet_user "Alice" → "Welcome, Alice! Today is 2026-02-16."
greet_user() {
    # $1 is the first argument (the name)
    # Write your code below this line
    echo "TODO"
}

# ============================================================================
# PART 2: CONDITIONALS
# ============================================================================
#
# SYNTAX:
#   if [ condition ]; then
#       # code if true
#   elif [ other_condition ]; then
#       # code if other is true
#   else
#       # code if nothing matched
#   fi
#
# CONDITIONS (note the spaces inside [ ]):
#   [ "$a" = "$b" ]     ← strings are equal
#   [ "$a" != "$b" ]    ← strings are not equal
#   [ -z "$a" ]         ← string is empty
#   [ -n "$a" ]         ← string is NOT empty
#   [ "$a" -eq 5 ]      ← numbers: equal
#   [ "$a" -gt 5 ]      ← numbers: greater than
#   [ "$a" -lt 5 ]      ← numbers: less than
#   [ "$a" -ge 5 ]      ← numbers: greater or equal
#   [ -f "file.txt" ]   ← file exists
#   [ -d "mydir" ]      ← directory exists
#
# EXAMPLE:
example_check_file() {
    local file="$1"
    if [ -f "$file" ]; then
        echo "File exists"
    elif [ -d "$file" ]; then
        echo "It's a directory"
    else
        echo "Not found"
    fi
}

# TODO 2: Write a function that checks if a number is positive, negative, or zero
# EXAMPLE: check_number 5  → "positive"
# EXAMPLE: check_number -3 → "negative"
# EXAMPLE: check_number 0  → "zero"
check_number() {
    local num="$1"
    # Write your code below this line
    echo "TODO"
}

# TODO 3: Write a function that checks if a file exists and is readable
# If file exists and is readable: echo "File is accessible"
# If file exists but not readable: echo "File is not readable"
# If file doesn't exist: echo "File not found"
# HINT: [ -f "$file" ] checks if file exists, [ -r "$file" ] checks if readable
check_file_access() {
    local file="$1"
    # Write your code below this line
    echo "TODO"
}

# ============================================================================
# PART 3: LOOPS
# ============================================================================
#
# FOR LOOP:
#   for item in "apple" "banana" "cherry"; do
#       echo "Fruit: $item"
#   done
#
#   for i in $(seq 1 5); do    ← loop 1 to 5
#       echo "Number: $i"
#   done
#
#   for file in *.txt; do       ← loop through all .txt files
#       echo "File: $file"
#   done
#
# WHILE LOOP:
#   count=0
#   while [ $count -lt 5 ]; do
#       echo $count
#       count=$((count + 1))    ← arithmetic: $(( ))
#   done
#
# EXAMPLE:
example_countdown() {
    local n="$1"
    while [ "$n" -gt 0 ]; do
        echo "$n"
        n=$((n - 1))
    done
    echo "Go!"
}

# TODO 4: Write a function that takes a number N and prints the sum of 1 to N
# EXAMPLE: sum_to 5  → "15"    (because 1+2+3+4+5 = 15)
# EXAMPLE: sum_to 3  → "6"     (because 1+2+3 = 6)
# HINT: Use a loop and $(( )) for arithmetic
sum_to() {
    local n="$1"
    # Write your code below this line
    echo "TODO"
}

# TODO 5: Write a function that counts files in a directory by extension
# Given a directory and extension, count matching files
# EXAMPLE: count_files "/tmp" "log"  → prints the count (e.g., "3")
# HINT: Use find "$dir" -name "*.$ext" -type f | wc -l
count_files() {
    local dir="$1"
    local ext="$2"
    # Write your code below this line
    echo "TODO"
}

# ============================================================================
# PART 4: STRING OPERATIONS
# ============================================================================
#
# String length:      ${#str}
# Substring:          ${str:0:5}          ← first 5 chars
# Replace first:      ${str/old/new}
# Replace all:        ${str//old/new}
# Uppercase:          ${str^^}
# Lowercase:          ${str,,}
# Default if empty:   ${str:-"default"}
#
# EXAMPLE:
example_format() {
    local str="$1"
    echo "Length: ${#str}, Upper: ${str^^}"
}

# TODO 6: Write a function that extracts the filename from a full path
# EXAMPLE: get_filename "/var/log/app/error.log" → "error.log"
# EXAMPLE: get_filename "/home/user/code.py"    → "code.py"
# HINT: basename "$path" (this is a bash command!)
# OR use: ${path##*/}   (removes everything before the last /)
get_filename() {
    local path="$1"
    # Write your code below this line
    echo "TODO"
}

# TODO 7: Write a function that replaces spaces with underscores in a string
# EXAMPLE: sanitize "hello world foo" → "hello_world_foo"
# HINT: ${str// /_}   (replaces all spaces with underscores)
sanitize() {
    local str="$1"
    # Write your code below this line
    echo "TODO"
}

# ============================================================================
# PART 5: EXIT CODES & ERROR HANDLING
# ============================================================================
#
# Every command returns an EXIT CODE:
#   0 = success
#   non-zero = failure
#
# $? gives you the last command's exit code:
#   ls /nonexistent
#   echo $?    → 2 (error!)
#
# Check if a command succeeded:
#   if command; then
#       echo "Success"
#   else
#       echo "Failed"
#   fi
#
# Exit the script with a code:
#   exit 0    ← success
#   exit 1    ← generic error

# TODO 8: Write a function that creates a directory if it doesn't exist
# If the directory already exists, echo "Directory already exists"
# If creation succeeds, echo "Directory created"
# If creation fails, echo "Failed to create directory" and return 1
# HINT: mkdir -p "$dir" creates the directory (and parents)
safe_mkdir() {
    local dir="$1"
    # Write your code below this line
    echo "TODO"
}
