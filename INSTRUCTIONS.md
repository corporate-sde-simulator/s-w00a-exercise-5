# Exercise 5: Bash / Shell Scripting 🐚

> **Goal:** Learn Bash scripting basics. Service Track uses Bash for system administration tasks,
> log management, and DevOps hotfixes.

---

## How This Exercise Works

1. Open `starter.sh`
2. Read each section and fill in the TODO parts
3. Make it executable and run the tests:
   ```bash
   chmod +x starter.sh test_exercise.sh
   bash test_exercise.sh
   ```

---

## Why Bash?

In service companies (TCS, Infosys, Wipro), SDEs write shell scripts for:
- Automating deployments
- Log file management and rotation
- Server health checks
- Data backup and cleanup
- Cron jobs

---

## Key Concepts

| Concept | Bash | Python equivalent |
|---------|------|-------------------|
| Variable | `NAME="Alice"` | `name = "Alice"` |
| Print | `echo "Hello"` | `print("Hello")` |
| If statement | `if [ condition ]; then ... fi` | `if condition:` |
| For loop | `for x in list; do ... done` | `for x in list:` |
| Function | `my_func() { ... }` | `def my_func():` |
| Command output | `result=$(command)` | `result = subprocess.run(...)` |
| File exists? | `[ -f file ]` | `os.path.isfile(file)` |
| Dir exists? | `[ -d dir ]` | `os.path.isdir(dir)` |
