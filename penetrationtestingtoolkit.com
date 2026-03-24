import port_scanner, hash_cracker, password_strength_checker, file_integrity_checker, subdomain_scanner

def main():
    print("\n==== Python Penetration Testing Toolkit ====\n")
    print("1. Port Scanner")
    print("2. Hash Cracker (Dictionary Based)")
    print("3. Password Strength Checker")
    print("4. File Integrity Checker")
    print("5. Subdomain Scanner")
    print("6. Exit")

    choice = input("Select an option: ")

    if choice == "1":
        port_scanner.run()
    elif choice == "2":
        hash_cracker.run()
    elif choice == "3":
        password_strength_checker.run()
    elif choice == "4":
        file_integrity_checker.run()
    elif choice == "5":
        subdomain_scanner.run()
    elif choice == "6":
        print("Exiting...")
    else:
        print("Invalid choice")

if __name__ == "__main__":
    main()



import socket

def run():
    target = input("Enter target IP: ")
    start_port = int(input("Start Port: "))
    end_port = int(input("End Port: "))

    print(f"\nScanning {target}...\n")

    for port in range(start_port, end_port + 1):
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(0.5)
        result = sock.connect_ex((target, port))
        if result == 0:
            print(f"Port {port} is OPEN")
        sock.close()


import hashlib

def run():
    target_hash = input("Enter MD5 hash: ")
    wordlist_path = input("Enter wordlist file path: ")

    try:
        with open(wordlist_path, "r") as file:
            for word in file:
                word = word.strip()
                hashed_word = hashlib.md5(word.encode()).hexdigest()
                if hashed_word == target_hash:
                    print(f"Password found: {word}")
                    return
        print("Password not found in wordlist.")
    except FileNotFoundError:
        print("Wordlist file not found.")


          import re

def run():
    password = input("Enter password: ")

    length = len(password) >= 8
    upper = re.search(r"[A-Z]", password)
    lower = re.search(r"[a-z]", password)
    digit = re.search(r"[0-9]", password)
    special = re.search(r"[!@#$%^&*(),.?\":{}|<>]", password)

    if length and upper and lower and digit and special:
        print("Strong Password")
    else:
        print("Weak Password")


  import hashlib

def run():
    file_path = input("Enter file path: ")

    try:
        with open(file_path, "rb") as f:
            bytes = f.read()
            hash_value = hashlib.sha256(bytes).hexdigest()
            print("SHA256 Hash:", hash_value)
    except FileNotFoundError:
        print("File not found.")


          import socket

def run():
    domain = input("Enter domain (example.com): ")
    subdomains = ["www", "mail", "ftp", "test", "dev"]

    print("\nScanning subdomains...\n")

    for sub in subdomains:
        try:
            ip = socket.gethostbyname(f"{sub}.{domain}")
            print(f"Found: {sub}.{domain} -> {ip}")
        except:
            pass
