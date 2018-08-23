Access instructions
======
---
# Access within UW network

Mounting the NAS as a network drive is the recommended method to access BAILnas.
Please follow the instructions below to mount BAILnas as network drive:

## Windows

1. Press <kbd>Win</kbd>+<kbd>R</kbd> and type `cmd`, then <kbd>Enter</kbd>

2. In command prompt, type `net use n: \\nas.bail.bioeng.washington.edu\NAS`, then <kbd>Enter</kbd>

3. Input your username and password when prompted. Note that your password may not show while you are typing.


**Shortcut for windows**

* Alternatively, if you prefer not to use windows commands, please download and run the shortcut executables below:

    <a href="/res/connect-NAS+Data.bat" download>	Click to Download connect-NAS+Data.bat</a>

## Mac OS 


1. From Mac OS Finder, press <kbd>⌘</kbd>+<kbd>K</kbd> to bring up the ‘Connect to Server’ window.
2. Enter the path to the network drive:  `smb:\\nas.bail.bioeng.washington.edu\NAS`.
3. Enter your username and password, then click "OK".
4. The NAS drive will appear as "NAS" on your desktop and Finder.

---

# Access from anywhere else

Below is the instructions for using a software "WinSCP" to access NAS with SFTP protocol.

1. Click [here to download WinSCP](https://winscp.net/eng/download.php).

2. Install WinSCP with "typical installation" option.

    ![winscp2](./res/winscp/2.PNG)

3. Select "Explorer" interface style

    ![winscp3](/res/winscp/3.PNG)

4. Enter you logon details as below, then click "save"

    ![winscp4](/res/winscp/4.PNG)

5. You can save a shortcut to desktop in the next window

    ![winscp5](/res/winscp/5.PNG)

6. Click "yes" to accept server key

    ![winscp6](/res/winscp/6.PNG)

7. Now you have access to NAS folder. To navigate to other folders (e.g. BAILnas/Data), you may need to click on upper level directory in order to refresh.

    ![winscp7](/res/winscp/7.PNG)