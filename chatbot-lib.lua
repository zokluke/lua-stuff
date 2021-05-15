--basically adds a listener for whatever word and responds when it detects said word
--really simple

--example:
--[[
local lib = loadstring(game:HttpGet('https://pastebin.com/raw/KU13Pdgc'))()
lib:addlistener("hood", "ayo cuh")
basically, when "hood" is said in chat, it will respond with "ayo cuh"
]]--
local lib = {}
function lib:addlistener(word,tochat)
    for i,v in pairs(game.Players:GetPlayers()) do
	v.Chatted:Connect(function(
	    msg
	    )
	if v.Name ~= game:GetService("Players").LocalPlayer.Name then
	    local message = msg:lower()
	    if string.find(message, string.lower(word)) then
	        return game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tochat,"All")
	    end
	end
	end)
	
    end
    game.Players.PlayerAdded:Connect(function(player)
	player.Chatted:Connect(function(
	    msg
	    )
	if player.Name ~= game:GetService("Players").LocalPlayer.Name then
	    local message = msg:lower()
	    if string.find(message, string.lower(word)) then
	        return game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tochat,"All")
	    end
	end
	end)
    end)
end
return lib
