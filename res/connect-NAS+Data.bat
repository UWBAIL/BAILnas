@echo off
echo =======Welcome to BAIL NAS server========
echo This program will disconnect your existing N drive (if any)
echo and reconnect it using new username.
echo =========================================
echo ===Password will not display on screen===
echo =========================================
SET /P uname=Please enter your username:
net use n: /delete /y
net use t: /delete /y
@echo on
net use n: \\nas.bail.bioeng.washington.edu\NAS /user:%uname% /p:yes
net use t: \\nas.bail.bioeng.washington.edu\Data
@pause