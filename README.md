# Termux Automation Scripts

This repository contains a collection of bash scripts that automate various tasks in the Termux terminal environment. These scripts are designed to simplify repetitive tasks, making Termux usage more efficient.

## Features

- **Bash Script Registration**: Automate the process of registering and setting up bash scripts for easy global access.
- **`.gitignore` Generator**: Quickly generate a `.gitignore` file for different languages and frameworks.
- **Additional Automations**: More scripts for common tasks in Termux will be added over time.

## Installation

1. Clone the repository to your Termux environment:

   ```bash
   git clone https://github.com/Chaos-19/termux-scripts.git
   cd termux-scripts
   ```

2. Make sure the scripts are executable:

   ```bash
   chmod +x *.sh
   ```

3. Add the repository to your `PATH` to access the scripts globally:

   ```bash
   echo 'export PATH="$HOME/termux-scripts:$PATH"' >> ~/.bashrc
   source ~/.bashrc
   ```

4. Now you can run the scripts from anywhere in Termux.

## Available Scripts

### 1. Bash Script Registration (`register-script.sh`)

This script automates the process of making a bash script globally accessible in the Termux environment by adding it to your `$PATH` and ensuring it is executable.

#### Usage:

```bash
./register-script.sh /path/to/your-script.sh
```

This will:
- Ensure the script is executable.
- Add the script's directory to the global `$PATH`.

### 2. `.gitignore` Generator (`generate-gitignore.sh`)

Automatically generate a `.gitignore` file tailored for a specific language or framework.

#### Usage:

```bash
./generate-gitignore.sh nodejs  # For a Node.js project
```

The script will fetch the appropriate `.gitignore` template and save it to your current working directory.

### 3. Custom Scripts

This section will be updated as more scripts are added.

## Contributing

Feel free to submit a pull request if you have a useful automation script you'd like to add. Make sure to include documentation for your script in the `README.md`.

## License

This repository is licensed under the MIT License. See the `LICENSE` file for more information.
