@echo off
echo =======Welcome to BAIL NAS server========
echo This program will disconnect your existing R drive (if any)
echo and reconnect it using new username.
echo =========================================
echo ===Password will not display on screen===
echo =========================================
net use R: /delete /y
@echo on
net use R: \\140.142.20.40\Data