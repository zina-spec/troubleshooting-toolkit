# 🌐 Network Troubleshoot Toolkit

A lightweight Windows network troubleshooting toolkit available in **both Python and Batch Script** versions. This project provides quick access to common networking commands used by IT Support technicians to diagnose and repair network-related issues.

## Features

- View detailed IP configuration
- Flush DNS cache
- Release IP address
- Renew IP address
- Reset Winsock
- Reset TCP/IP stack
- Ping Google to test connectivity
- Display active network connections and statistics
- Open Network Connections
- Open Windows Wi-Fi Settings
- Perform a complete network repair

---

# Project Structure

```
Network-Troubleshoot-Toolkit/
│
├── network_toolkit.py      # Python version
├── NetworkToolkit.bat      # Batch version
├── README.md
└── LICENSE (optional)
```

---

# Requirements

## Python Version

- Windows 10 or Windows 11
- Python 3.8 or newer
- Administrator privileges

No external Python packages are required.

The script only uses Python's built-in modules:

- os
- subprocess

---

## Batch Version

- Windows 10 or Windows 11
- Administrator privileges

No installation required.

---

# Installation

Clone the repository:

```bash
git clone https://github.com/YourUsername/Network-Troubleshoot-Toolkit.git
```

Or download it as a ZIP from GitHub.

---

# Running the Python Version

Open Command Prompt **as Administrator**.

Navigate to the project folder.

Run:

```bash
python network_toolkit.py
```

or

```bash
py network_toolkit.py
```

---

# Running the Batch Version

Simply:

1. Right-click **NetworkToolkit.bat**
2. Select **Run as administrator**

No Python installation is required.

---

# Menu

```
1. Show IP Configuration
2. Flush DNS Cache
3. Release IP Address
4. Renew IP Address
5. Reset Winsock
6. Reset TCP/IP Stack
7. Ping Google
8. Network Statistics
9. Open Network Connections
10. Open Wi-Fi Settings
11. Full Network Repair
12. Exit
```

---

# Full Network Repair

The **Full Network Repair** option automatically performs:

- Flush DNS Cache
- Release IP Address
- Renew IP Address
- Reset Winsock
- Reset TCP/IP Stack

After completion, restarting Windows is recommended.

---

# Administrator Privileges

Most networking commands require elevated permissions.

If the toolkit is not run as Administrator, some commands may fail or produce an **Access is denied** message.

---

# Python vs Batch

| Feature | Python | Batch |
|----------|--------|-------|
| No installation required | ❌ Requires Python | ✅ Yes |
| Easy to extend | ✅ | ⚠️ Limited |
| Better code organization | ✅ | ❌ |
| Native Windows support | ⚠️ | ✅ |
| Uses Windows networking commands | ✅ | ✅ |

---

# Why Two Versions?

This project is provided in both languages because each has its own advantages.

### Python

Ideal for:

- Learning Python
- Expanding with new features
- Better maintainability
- Object-oriented programming

### Batch

Ideal for:

- IT technicians
- Portable troubleshooting
- Running on any Windows computer
- Quick execution without Python

---

# Future Improvements

Planned features include:

- Administrator privilege detection
- Internet connectivity diagnostics
- Network adapter restart
- Public IP lookup
- Automatic diagnostic reports
- Export logs to text files
- Wi-Fi signal information
- DNS changer (Google / Cloudflare / Quad9)
- Continuous ping monitor
- Colorized terminal output
- System repair tools (SFC / DISM)

---

# Disclaimer

This toolkit executes built-in Windows networking commands.

Although these commands are generally safe, resetting network settings may temporarily disconnect active network connections.

Use the toolkit responsibly and only on systems you are authorized to manage.

---

# License

This project is licensed under the MIT License.

Feel free to use, modify, and distribute it.

---

# Author

Created by Zina

Computer Science Student • IT Support Enthusiast • Aspiring Cybersecurity Professional

GitHub:
https://github.com/zina-spec
