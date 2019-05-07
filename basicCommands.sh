#!/bin/bash
echo $((4+3))
VAR="Username is `whoami`"
echo $VAR

t="My PID is $PPID"
echo $t

echo $USER

echo $HOME

date +%s%N
tail -n 1 /etc/passwd | fold -w4 | shuf

