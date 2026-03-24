# PENETRATION TESTING TOOLKIT

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: N RUPA SHREE

*INTERN ID*: CTIS6532

*DOMAIN*: 4 WEEKS

*MENTOR*: NEELA SANTHOSH

DESCRIPTION:
    The Penetration Testing Toolkit is a Python-based modular application designed to perform basic security assessments on computer systems and networks. Penetration testing, also known as ethical hacking, is the process of identifying vulnerabilities in a system before malicious attackers can exploit them. This project aims to provide a simplified and educational platform for understanding the core concepts of cybersecurity and vulnerability assessment.

The toolkit is developed using the Python programming language due to its simplicity, flexibility, and extensive library support. The system follows a modular architecture, where each security function is implemented as an independent module. This approach improves code organization, reusability, and scalability, allowing new features to be added easily in the future.

The toolkit includes several essential modules that simulate real-world penetration testing techniques. The Port Scanner module is used to identify open ports on a target system. Open ports indicate active services, which may serve as potential entry points for attackers. By scanning a range of ports, the tool helps users understand network exposure and possible vulnerabilities.

Another important component is the Hash Cracker, which demonstrates how weak passwords can be compromised using dictionary-based attacks. It takes a hashed value as input and compares it against a list of commonly used passwords. This module highlights the importance of using strong and complex passwords in modern systems.

The Password Strength Checker module evaluates the strength of a given password based on various criteria such as length, use of uppercase and lowercase letters, numbers, and special characters. This helps users create secure passwords and understand best practices in authentication.

The File Integrity Checker module uses cryptographic hashing (SHA-256) to verify whether a file has been altered. It generates a unique hash value for a file, which can later be used to detect unauthorized modifications. This is particularly useful in maintaining data integrity and detecting tampering.

Additionally, the Subdomain Scanner module identifies active subdomains associated with a given domain. Subdomains often host different services, and discovering them helps in understanding the broader attack surface of a system.

The toolkit operates through a command-line interface, where users can select different modules based on their requirements. The design is simple and user-friendly, making it suitable for students and beginners in cybersecurity.

However, this toolkit has certain limitations. It performs only basic-level scanning and does not include advanced exploitation techniques. It is intended strictly for educational purposes and should only be used on systems with proper authorization.

In conclusion, the Penetration Testing Toolkit serves as a practical implementation of fundamental cybersecurity concepts. It helps users gain hands-on experience in identifying vulnerabilities, understanding security mechanisms, and developing a strong foundation in ethical hacking. Future enhancements may include a graphical user interface, multi-threaded scanning for improved performance, and automated report generation.


OUTPUT:
  ==== Python Penetration Testing Toolkit ====

1. Port Scanner
2. Hash Cracker (Dictionary Based)
3. Password Strength Checker
4. File Integrity Checker
5. Subdomain Scanner
6. Exit
Select an option: 1
Enter target IP: 127.0.0.1
Start Port: 20
End Port: 100

Scanning 127.0.0.1...

==== Python Penetration Testing Toolkit ====

1. Port Scanner
2. Hash Cracker (Dictionary Based)
3. Password Strength Checker
4. File Integrity Checker
5. Subdomain Scanner
6. Exit
Select an option: 2
Enter MD5 hash: 5f4dcc3b5aa765d61d8327deb882cf99
Enter wordlist file path: wordlist.txt
Wordlist file not found.

==== Python Penetration Testing Toolkit ====

1. Port Scanner
2. Hash Cracker (Dictionary Based)
3. Password Strength Checker
4. File Integrity Checker
5. Subdomain Scanner
6. Exit
Select an option: 3
Enter password: Abc@1234
Strong Password

==== Python Penetration Testing Toolkit ====

1. Port Scanner
2. Hash Cracker (Dictionary Based)
3. Password Strength Checker
4. File Integrity Checker
5. Subdomain Scanner
6. Exit
Select an option: 4
Enter file path: sampl.txt
File not found.

==== Python Penetration Testing Toolkit ====

1. Port Scanner
2. Hash Cracker (Dictionary Based)
3. Password Strength Checker
4. File Integrity Checker
5. Subdomain Scanner
6. Exit
Select an option: 5
Enter domain (example.com): google.com

Scanning subdomains...

Found: www.google.com -> 142.251.150.119
Found: mail.google.com -> 142.251.221.165
