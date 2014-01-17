#!/bin/sh
#File System Audit (FSA)
find / -type f \( -perm -2 \) -exec /bin/ls -iGFalohZ {} \; 2>/dev/null > audit_writable_files.txt
find / -type d \( -perm -2 \) -exec /bin/ls -iGFalohZd {} \; 2>/dev/null > audit_writable_dirs.txt
find / -type f \( -perm -002000 -o -perm -004000 \) -exec /bin/ls -GFalohZ {} \; 2>/dev/null > audit_setuidgid_combined.txt
find / -type f \( -perm -006000 \) -exec /bin/ls -GFalohZ {} \; 2>/dev/null > audit_suidsgid_files.txt
find / -type f \( -perm -004000 \) -exec /bin/ls -GFalohZ {} \; 2>/dev/null > audit_setuid_files.txt
find / -type f \( -perm -002000 \) -exec /bin/ls -GFalohZ {} \; 2>/dev/null > audit_setgid_files.txt
find / -type d \( -perm -001000 \) -exec /bin/ls -GFalohZd {} \; 2>/dev/null > audit_sticky_dirs.txt
find / -flags -exec /bin/ls -GFalohZd {} \; 2>/dev/null > audit_chflags.txt
find / -acls -exec /bin/ls -GFalohZd {} \; 2>/dev/null > audit_acls.txt
find / -acls -exec /bin/getfacl {} \; 2>/dev/null > audit_acls_backup.txt
