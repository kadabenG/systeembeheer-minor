#!/usr/bin/expect -f
# exp_internal 1    ;# uncomment to turn on expect debugging
set timeout -1
spawn rsync -av -e "ssh -p 22345" /etc "r0713654@leia.uclllabs.be:/home/LDAP/r0713654/backup/"
expect "password:"
send "Mafia889\r"
expect eof
