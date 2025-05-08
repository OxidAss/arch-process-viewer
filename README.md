# 🕒 Process Uptime Script for Arch Linux

A simple and interactive Bash script that displays all running processes started within a given number of minutes. Built for Arch Linux users who want quick insight into recent process activity — straight from the terminal.

---

## ✨ Features

- 🧼 Clears the console before execution
- 🎨 Displays a stylish ASCII banner
- ⌛ Prompts user for time (in minutes)
- 🔍 Filters and lists processes started within the given timeframe
- 📄 Shows detailed output: `PID`, `USER`, `START TIME`, `COMMAND`

---

## 📦 Requirements

- Bash
- `ps` (from `procps-ng`)
- `date` (from GNU coreutils)

---

## 🚀 Usage

```bash
# Clone the repository
git clone <your-repo-link-here>

# Move into the script directory
cd <your-repo-folder>

# Make the script executable
chmod +x start.sh

# Run the script
./start.sh
```