# Beginner Explanatory Guide: Exercise 5: Bash / Shell Scripting

> **Task Type**: Service Task  
> **Domain/Focus**: Bash Scripting Fundamentals

---

## 1. The Goal (In-Depth Beginner Explanation)

### The Core Problem
The goal of this exercise is to introduce you to the basics of Bash scripting, which is a powerful tool used for automating tasks in Unix-like operating systems. Bash scripts can help manage system operations, automate repetitive tasks, and streamline workflows. Currently, many organizations rely on manual processes for tasks such as log management, server health checks, and data backups, which can be time-consuming and error-prone. By learning Bash scripting, you will be able to automate these processes, making them more efficient and less prone to human error.

In this exercise, you will be working with a file named `starter.sh`, which contains several sections marked with TODO comments. Your task is to fill in these sections with appropriate Bash commands. This is important because it will not only help you understand how to write scripts but also how to think logically about automating tasks. Once completed, your script will be able to perform specific functions automatically, which is a crucial skill in the field of software engineering and DevOps.

### Jargon Buster (Key Terms Explained)
* **Bash**: Bash (Bourne Again SHell) is a command-line interpreter that allows users to interact with the operating system through commands. For example, typing `ls` in a Bash terminal lists the files in the current directory.
* **Script**: A script is a file containing a series of commands that the shell can execute. For instance, a script named `backup.sh` might contain commands to copy files from one directory to another.
* **Variable**: In programming, a variable is a named storage location that holds a value. For example, in Bash, you can create a variable called `NAME` and assign it a value like this: `NAME="Alice"`. You can then use `$NAME` to refer to that value later in your script.
* **Command Execution**: This refers to the process of running a command in the shell. For example, when you type `echo "Hello, World!"`, the shell executes the `echo` command, which outputs the text to the terminal.

### Expected Outcome
After completing the exercise, your Bash script should be able to execute specific tasks automatically. For example, if your script is designed to check if a directory exists and create it if it does not, the expected behavior would be:
- **Before**: If you run the script without it being completed, it may not perform any actions.
- **After**: Once you fill in the TODOs, running the script should check for the directory and create it if necessary, providing feedback in the terminal about what actions were taken.

---

## 2. Related Coding Concepts & Syntax (50% Theory, 50% Practice)

### Concept 1: Variables in Bash
#### 📘 Theoretical Overview (50%)
Variables in Bash are used to store data that can be referenced later in the script. They are essential for making scripts dynamic and flexible. Without variables, you would have to hard-code values, making your scripts less reusable and harder to maintain. For example, if you wanted to change a directory path, you would have to find and replace it throughout your script instead of just changing it in one place.

In Bash, variables are defined using the syntax `VARIABLE_NAME=value`, and they are accessed by prefixing the variable name with a dollar sign (`$`). This allows you to use the stored value in commands or other variables.

#### 💻 Syntax & Practical Examples (50%)
* **Language Syntax**:
  ```bash
  # Define a variable
  MY_VAR="Hello, World!"
  
  # Access the variable
  echo $MY_VAR
  ```
* **Real-World Application**:
  ```bash
  # A script that greets the user
  USER_NAME="Alice"
  echo "Hello, $USER_NAME! Welcome to the Bash scripting exercise."
  ```

### Concept 2: Conditional Statements
#### 📘 Theoretical Overview (50%)
Conditional statements allow you to execute different parts of your script based on certain conditions. This is crucial for making decisions in your scripts. For example, you might want to check if a file exists before trying to read it. If you don't use conditional statements, your script may fail or produce errors when it encounters unexpected situations.

In Bash, the `if` statement is used for this purpose. It evaluates a condition and executes a block of code if the condition is true. The basic structure is:
```bash
if [ condition ]; then
  # commands to execute if condition is true
fi
```

#### 💻 Syntax & Practical Examples (50%)
* **Language Syntax**:
  ```bash
  # Check if a file exists
  if [ -f "myfile.txt" ]; then
    echo "File exists."
  else
    echo "File does not exist."
  fi
  ```
* **Real-World Application**:
  ```bash
  # A script that checks for a directory and creates it if it doesn't exist
  DIR_NAME="my_directory"
  if [ ! -d "$DIR_NAME" ]; then
    mkdir "$DIR_NAME"
    echo "Directory created: $DIR_NAME"
  else
    echo "Directory already exists: $DIR_NAME"
  fi
  ```

---

## 3. Step-by-Step Logic & Walkthrough

1. **Step 1: Locate and Analyze the Target File**
   * Open the `s-w00a-exercise-5` folder and locate the `starter.sh` file. This is where you will be making your changes.
   * Look for sections marked with `TODO` comments. These indicate where you need to add your Bash commands.

2. **Step 2: Input Verification & Validation**
   * Before adding commands, think about what inputs your script will handle. For example, if your script checks for a directory, consider what should happen if the directory already exists or if the input is invalid.

3. **Step 3: Core Implementation / Modification**
   * Start filling in the TODO sections with appropriate Bash commands. For example, if a TODO asks you to check if a file exists, you might write:
   ```bash
   if [ -f "myfile.txt" ]; then
       echo "File exists."
   else
       echo "File does not exist."
   fi
   ```

4. **Step 4: Output Verification & Testing**
   * After completing your script, make it executable by running:
   ```bash
   chmod +x starter.sh
   ```
   * Then, run the test script to verify your implementation:
   ```bash
   bash test_exercise.sh
   ```
   * Check the output to ensure that your script behaves as expected.

---

## 4. Detailed Walkthrough of Test Cases

### Test Case 1: Standard / Success Case
* **Description**: This test checks if the script correctly identifies an existing directory.
* **Inputs**:
  ```json
  {
    "directory": "existing_directory"
  }
  ```
* **Step-by-Step Execution Trace**:
  1. The script checks if `existing_directory` exists.
  2. The condition evaluates to true.
  3. The script outputs: "Directory already exists: existing_directory."
* **Expected Output**: "Directory already exists: existing_directory."

### Test Case 2: Edge Case / Validation Fail
* **Description**: This test checks how the script handles a non-existent directory.
* **Inputs**:
  ```json
  {
    "directory": "non_existent_directory"
  }
  ```
* **Step-by-Step Execution Trace**:
  1. The script checks if `non_existent_directory` exists.
  2. The condition evaluates to false.
  3. The script creates the directory and outputs: "Directory created: non_existent_directory."
* **Expected Output**: "Directory created: non_existent_directory."

By following this guide, you should be able to successfully complete Exercise 5 and gain a foundational understanding of Bash scripting. Happy scripting!