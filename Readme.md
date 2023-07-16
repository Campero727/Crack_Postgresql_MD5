# PostgreSQL MD5 Hash Cracker
![PostgreSQL Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Postgresql_elephant.svg/200px-Postgresql_elephant.svg.png)

[![GitHub top language](https://img.shields.io/github/languages/top/Campero727/Crack_Postgresql_MD5?logo=ruby&style=flat-square)](#)
[![GitHub repo size](https://img.shields.io/github/repo-size/Campero727/Crack_Postgresql_MD5?logo=webpack&style=flat-square)](#)
[![By](https://img.shields.io/badge/By-Campero727-green?style=flat-square&logo=github)](#)
----


This tool is designed to crack MD5 hashes used in older versions of PostgreSQL, where the hash format consisted of the prefix 'md5' followed by a hash that was the combination of the username and password.

## Usage
1. Make sure you have a dictionary of usernames and passwords, as well as the password hash you want to decrypt..
2. Run the tool using the following command:

   ```bash
   ruby crack_postgresql_md5.rb <passlist>.txt <userlist>.txt "<password hash>"
    ```
## Prerequisites
- Ruby 2.0 or higher
- The digest library in Ruby (usually included by default)

## Disclaimer
Please note that cracking passwords without proper authorization is illegal and unethical. This tool is intended for educational and research purposes only, to demonstrate the vulnerabilities of older MD5-based password hashing mechanisms. Use this tool responsibly and only with explicit permission from the system owner.

Note: This tool is for educational purposes only. Use responsibly and with permission.
