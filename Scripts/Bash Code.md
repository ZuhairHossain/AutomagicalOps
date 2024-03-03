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

