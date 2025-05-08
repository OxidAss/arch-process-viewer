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
git clone https://github.com/OxidAss/arch-process-viewer.git

# Move into the script directory
cd arch-process-viewer

# Make the script executable
chmod +x start.sh

# Run the script
./start.sh
```