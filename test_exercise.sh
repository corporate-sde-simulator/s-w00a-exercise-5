#!/bin/bash
# =============================================================================
#  Tests for Exercise 5: Bash Scripting
#  Run with: bash test_exercise.sh
# =============================================================================

source ./starter.sh

PASSED=0
FAILED=0
TOTAL=0

test_case() {
    local name="$1"
    local expected="$2"
    local actual="$3"
    TOTAL=$((TOTAL + 1))
    if [ "$actual" = "$expected" ]; then
        echo "  ✅ $name"
        PASSED=$((PASSED + 1))
    else
        echo "  ❌ $name"
        echo "     Expected: $expected"
        echo "     Got:      $actual"
        FAILED=$((FAILED + 1))
    fi
}

echo ""
echo "📦 Part 1: Variables"
RESULT=$(greet_user "Alice")
TODAY=$(date +%Y-%m-%d)
test_case "greet_user Alice" "Welcome, Alice! Today is $TODAY." "$RESULT"

echo ""
echo "🔀 Part 2: Conditionals"
test_case "check_number 5" "positive" "$(check_number 5)"
test_case "check_number -3" "negative" "$(check_number -3)"
test_case "check_number 0" "zero" "$(check_number 0)"

# Create temp files for file access test
TMPFILE=$(mktemp)
echo "test" > "$TMPFILE"
test_case "check_file_access existing" "File is accessible" "$(check_file_access "$TMPFILE")"
test_case "check_file_access nonexistent" "File not found" "$(check_file_access "/nonexistent/file.txt")"
rm -f "$TMPFILE"

echo ""
echo "🔄 Part 3: Loops"
test_case "sum_to 5" "15" "$(sum_to 5)"
test_case "sum_to 3" "6" "$(sum_to 3)"
test_case "sum_to 1" "1" "$(sum_to 1)"

# Create temp dir with test files for count_files
TMPDIR=$(mktemp -d)
touch "$TMPDIR/a.log" "$TMPDIR/b.log" "$TMPDIR/c.log" "$TMPDIR/d.txt"
RESULT=$(count_files "$TMPDIR" "log")
# Trim whitespace
RESULT=$(echo "$RESULT" | tr -d ' ')
test_case "count_files *.log" "3" "$RESULT"
rm -rf "$TMPDIR"

echo ""
echo "📝 Part 4: Strings"
test_case "get_filename path" "error.log" "$(get_filename "/var/log/app/error.log")"
test_case "get_filename python" "code.py" "$(get_filename "/home/user/code.py")"
test_case "sanitize spaces" "hello_world_foo" "$(sanitize "hello world foo")"

echo ""
echo "⚠️  Part 5: Exit Codes"
TMPDIR=$(mktemp -d)
rmdir "$TMPDIR"  # Remove so we can test creation
RESULT=$(safe_mkdir "$TMPDIR")
test_case "safe_mkdir creates" "Directory created" "$RESULT"
RESULT=$(safe_mkdir "$TMPDIR")
test_case "safe_mkdir exists" "Directory already exists" "$RESULT"
rm -rf "$TMPDIR"

echo ""
echo "=================================================="
echo "Results: $PASSED/$TOTAL tests passed"
if [ $FAILED -gt 0 ]; then
    echo "❌ $FAILED tests failed — keep working!"
else
    echo "🎉 All tests passed! Bash scripting mastered!"
fi
echo "=================================================="
echo ""
