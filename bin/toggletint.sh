#!/usr/bin/python
import commands
import subprocess

output = commands.getoutput('ps -A')
if 'tint2' in output:
    subprocess.call( ["killall", "tint2"] )
else:
    subprocess.call( ["tint2"] )
