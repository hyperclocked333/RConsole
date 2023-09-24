repeat task.wait() until game:IsLoaded()
local players = game:GetService("Players")
local lp = players.LocalPlayer
local logServ = game:GetService("LogService")
getgenv().wsConnected = false
local function main()
	local connected, ws = pcall(WebSocket.connect, "ws://localhost:3000")
	if not connected then
		return error("no localhost :(")
    else
        wsConnected = true
    end
    ws.OnClose:Once(function()
        wsConnected = false
        return wsConnected
    end)
    ws.OnMessage:Connect(function(m)
        print(m)
    end)
	local function toVSC(msg)
		ws:Send(msg)
	end
	logServ.MessageOut:Connect(function(m)
		toVSC(m)
	end)
    players.PlayerRemoving:Connect(function(p)
        if p == lp then
            ws:Send('__RCONSOLE_EXCLUSIVE_FUNCTION.PLAYER_LEFT_GAME')
        end
    end)
end
local function attemptToConnect()
    repeat local success, fail = pcall(main);task.wait(1) until success
    return success
end
while task.wait() do
    if wsConnected then
        return
    else
        attemptToConnect()
    end
end

            
