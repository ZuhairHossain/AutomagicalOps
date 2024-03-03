## Bash Scripts
That are needed in regular day to day activities.

### Hello World
```bash
#!/bin/bash
echo "Hello, World!"
```

### File Backup
```bash
#!/bin/bash
source_dir="/path/to/source"
backup_dir="/path/to/backup"
timestamp=$(date +%Y%m%d%H%M%S)
backup_file="backup_$timestamp.tar.gz"
tar -czvf "$backup_dir/$backup_file" "$source_dir"
```

### Directory Listing
```bash
#!/bin/bash
ls -l
```

### File Count
```bash
#!/bin/bash
file_count=$(ls | wc -l)
echo "Number of files: $file_count"
```

### Disk Usage
```bash
#!/bin/bash
df -h
```

### System Info
```bash
#!/bin/bash
uname -a
```

### File Rename
```bash
#!/bin/bash
old_name="old.txt"
new_name="new.txt"
mv "$old_name" "$new_name"
```

### File Permissions
```bash
#!/bin/bash
file="file.txt"
chmod +x "$file"
```

### User Info
```bash
#!/bin/bash
username=$(whoami)
echo "Current user: $username"
```

### Process List
```bash
#!/bin/bash
ps aux
```

### Process Kill
```bash
#!/bin/bash
process_id=12345
kill -9 "$process_id"
```

### Check Internet Connection
```bash
#!/bin/bash
ping -c 5 google.com
```

### Disk Cleanup
```bash
#!/bin/bash
du -sh /var/log/*
rm -rf /var/log/*
```

### System Shutdown
```bash
#!/bin/bash
shutdown -h now
```

### System Reboot
```bash
#!/bin/bash
shutdown -h now
```

### File Search
```bash
#!/bin/bash
search_dir="/path/to/search"
search_term="pattern"
grep -r "$search_term" "$search_dir"
```

### Disk Space Alert
```bash
#!/bin/bash
threshold=90
current_usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
if [ "$current_usage" -ge "$threshold" ]; then
    echo "Disk space is running low!"
else
    echo "Disk space is okay."
fi
```

### Check Service Status
```bash
#!/bin/bash
service_name="nginx"
if systemctl is-active --quiet "$service_name"; then
    echo "$service_name is running."
else
    echo "$service_name is not running."
fi
```

### System Backup Script
```bash
#!/bin/bash
source_dir="/path/to/source"
backup_dir="/path/to/backup"
timestamp=$(date +%Y%m%d%H%M%S)
backup_file="backup_$timestamp.tar.gz"
tar -czvf "$backup_dir/$backup_file" "$source_dir"
```

### Log Rotation
```bash
#!/bin/bash
log_file="/path/to/logfile.log"
max_log_size=10M
if [ -f "$log_file" ]; then
    current_size=$(du -b "$log_file" | awk '{print $1}')
    if [ "$current_size" -ge "$max_log_size" ]; then
        mv "$log_file" "$log_file.old"
        touch "$log_file"
    fi
fi
```

### User Management
```bash
#!/bin/bash
username="newuser"
password="password123"
useradd "$username"
echo "$username:$password" | chpasswd
```

### File Encryption
```bash
#!/bin/bash
file_to_encrypt="file.txt"
gpg -c "$file_to_encrypt"
```

### File Decryption
```bash
#!/bin/bash
encrypted_file="file.txt.gpg"
gpg -d "$encrypted_file" > "decrypted_file.txt"
```

### File Compression
```bash
#!/bin/bash
compressed_file="compressed_file.tar.gz"
tar -xzvf "$compressed_file"
```

### File Decompression
```bash
#!/bin/bash
compressed_file="compressed_file.tar.gz"
tar -xzvf "$compressed_file"
```

### CSV File Processing
```bash
#!/bin/bash
input_csv="data.csv"
output_file="output.txt"
awk -F ',' '{print $1,$2}' "$input_csv" > "$output_file"
```

### Log Analysis
```bash
#!/bin/bash
log_file="access.log"
unique_ips=$(awk '{print $1}' "$log_file" | sort -u | wc -l)
error_count=$(grep -c 'ERROR' "$log_file")
echo "Unique IPs: $unique_ips"
echo "Total Errors: $error_count"
```

### Send Email Alert
```bash
#!/bin/bash
email="user@example.com"
subject="Alert"
message="Disk space is running low!"
echo "$message" | mail -s "$subject" "$email"
```

### Database Backup
```bash
#!/bin/bash
db_name="mydb"
backup_file="backup.sql"
mysqldump -u username -p$password "$db_name" > "$backup_file"
```

### SSH Key Generation
```bash
#!/bin/bash
ssh-keygen -t rsa -b 4096 -f ~/.ssh/mykey
```

### SSH Key Copy
```bash
#!/bin/bash
ssh-copy-id user@hostname
```

### File Comparison
```bash
#!/bin/bash
file1="file1.txt"
file2="file2.txt"
if cmp -s "$file1" "$file2"; then
    echo "Files are identical."
else
    echo "Files are different."
fi
```

### Cron Job Example
```bash
#!/bin/bash
backup_dir="/path/to/backup"
timestamp=$(date +%Y%m%d%H%M%S)
backup_file="backup_$timestamp.tar.gz"
tar -czvf "$backup_dir/$backup_file" /path/to/source
```

### Folder Synchrorization
```bash
#!/bin/bash
source_dir="/path/to/source"
destination_dir="/path/to/destination"
rsync -av "$source_dir/" "$destination_dir/"
```

### URL Download
```bash
#!/bin/bash
url="https://example.com/file.txt"
output_file="downloaded_file.txt"
wget "$url" -O "$output_file"
```

### Input Validation
```bash
#!/bin/bash
read -p "Enter a number: " number
if [[ ! "$number" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a number."
else
    echo "You entered: $number"
fi
```

### String Manipulation
```bash
#!/bin/bash
string="Hello, World!"
uppercase_string=$(echo "$string" | tr '[:lower:]' '[:upper:]')
echo "$uppercase_string"
```

### 
