# RConsole

RConsole is a extension made for the convinience of Roblox scripters. It takes whatever is logged in the Developer Console, and places it into its own custom output to make scripting easier for everyone.

Instructions:
# 1.) Install the Extension
Marketplace Link: https://marketplace.visualstudio.com/items?itemName=hyperclocked333.rconsole

# 2.) Put the ROBLOX script in your executor's autoexec folder.
Script: 
```  
loadstring(game:HttpGet("https://github.com/hyperclocked333/RConsole/blob/main/consoleToVSC.lua",true))()
```
# 2.5) MAKE SURE THAT YOU HAVE A VSCODE WINDOW OPEN BEFORE YOU JOIN THE GAME
This is because due to how the script refreshes, not having the websocket open will result in lag-spikes every retry (bad) so make sure you have the window and the lag will go away.

# 3.) Enjoy!
Console output should also replicate to the **RConsole** output.


