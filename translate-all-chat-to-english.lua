local language = "en" -- works with 'en' (english), 'es' (spanish), and 'fr' (french)
game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(messsage)
        local xd = messsage:lower()
        local message = messsage:gsub(" ", "+") 
        print(message)  
        local xd = game:HttpGet('https://normal-api.ml/translate?text='..message..'&to='..language..'')
	    local data = game.HttpService:JSONDecode(xd)
	    local res = data.translated
        print(res)
        rconsoleprint("["..player.Name.."]: "..res.." (translated to english)\n")
    end)
end)
for i, player in pairs(game.Players:GetPlayers()) do
    player.Chatted:Connect(function(messsage)
        local xd = messsage:lower()
        local message = messsage
            print(message)  
            local xd = game:HttpGet('https://normal-api.ml/translate?text='..message..'&to='..language..'')
	        local data = game.HttpService:JSONDecode(xd)
	        local res = data.translated
	        print(res)
	         rconsoleprint("["..player.Name.."]: "..res.." (translated to english)\n")
    end)
end
