-- https://www.roblox.com/games/8457678089/Texas-State-Roleplay
_G.on = true
waittime = 0.2

while _G.on == true do
		wait(waittime)
		game:GetService("ReplicatedStorage").SpawnCar:FireServer("Rolls")
end

--feel free to make a gui or something to make toggling it easier
