# mc-server
* GitHub hosted MineCraft server. **Please follow instructions or shit will break!**
* If you don't want to host the server, then you can ask someone on chat for the current server IP and use that normally.
* If you don't want to set up static IP and port forwarding, then you can ignore those steps and just play on the server solo.

## Set Up
1. Install Java and Git. Ensure both are in your path.
2. Clone this repo with the command `git clone https://github.com/ooksei/mc-server.git`
3. Download the [server file](https://www.minecraft.net/en-us/download/server/ "Server"), save as server.jar in the server folder of the repo
4. Switch your IPv4 settings to use a static IP.
5. Set up [port forwarding](https://minecraft.gamepedia.com/Tutorials/Setting_up_a_server#Port_forwarding "Port Forwarding")

## On Start Up
1. Run the startup.bat file
2. If a server is already running, the script will tell you the IP the server is running on. Press any key to close the window.
3. If no server is currently running, the script will start up a server. Keep the window open while the server is running.
4. If you are running the server, use the IP address **127.0.0.1**. If you aren't, use the IP address the script outputs.

## On Shut Down
1. If you are hosting the server, tell everyone online that you're shutting it down. Someone else will have to restart.
2. Type `/stop` into the window. Then press any key to continue.
3. Once the commit text is finished, the window will close automatically. **DO NOT CLOSE THE WINDOW PREMATURELY!** Or the world will turn to ash.
