import os
import subprocess

# -------------------------------
# Helper Functions
# -------------------------------

def clear():
    os.system("cls")

def pause():
    input("\nPress Enter to continue...")

def run_command(command):
    clear()
    print(f"Executing: {command}\n")
    subprocess.run(command, shell=True)
    pause()

# -------------------------------
# Menu
# -------------------------------

def show_menu():
    clear()

    print("=" * 50)
    print("        NETWORK TROUBLESHOOT TOOLKIT")
    print("=" * 50)

    print("1. Show IP Configuration")
    print("2. Flush DNS Cache")
    print("3. Release IP Address")
    print("4. Renew IP Address")
    print("5. Reset Winsock")
    print("6. Reset TCP/IP Stack")
    print("7. Ping Google")
    print("8. Network Statistics")
    print("9. Open Network Connections")
    print("10. Open Wi-Fi Settings")
    print("11. Full Network Repair")
    print("12. Exit")

    print("=" * 50)

# -------------------------------
# Main Program
# -------------------------------

while True:
    show_menu()

    choice = input("Select option: ")

    if choice == "1":
        run_command("ipconfig /all")

    elif choice == "2":
        run_command("ipconfig /flushdns")

    elif choice == "3":
        run_command("ipconfig /release")

    elif choice == "4":
        run_command("ipconfig /renew")

    elif choice == "5":
        run_command("netsh winsock reset")

    elif choice == "6":
        run_command("netsh int ip reset")

    elif choice == "7":
        run_command("ping google.com")

    elif choice == "8":
        run_command("netstat -ano")

    elif choice == "9":
        run_command("ncpa.cpl")

    elif choice == "10":
        run_command("start ms-settings:network-wifi")

    elif choice == "11":
        clear()
        print("Running Full Network Repair...\n")

        commands = [
            "ipconfig /flushdns",
            "ipconfig /release",
            "ipconfig /renew",
            "netsh winsock reset",
            "netsh int ip reset"
        ]

        for cmd in commands:
            print(f"> {cmd}")
            subprocess.run(cmd, shell=True)

        print("\nRepair completed.")
        print("Restart your computer for best results.")
        pause()

    elif choice == "12":
        print("\nGoodbye!")
        break

    else:
        print("\nInvalid option.")
        pause()
