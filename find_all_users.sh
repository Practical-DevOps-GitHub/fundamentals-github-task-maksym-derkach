#!/bin/bash

# Шлях до файлу /etc/passwd, де зберігаються дані користувачів
passwd_file="/etc/passwd"

# Знайти користувачів з /bin/bash CLI та вивести їх імена
sudo awk -F: '$NF == "/bin/bash" { print $1 }' "$passwd_file"
