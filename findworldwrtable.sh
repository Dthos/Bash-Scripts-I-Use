#!/bin/bash
find / -type d \( -perm -g+w -or -perm -o+w \) -exec ls -adl {} \;