--[[ Adicionar dano  ]]

local vento = script.Parent
local DANO = 5
local Players = game:GetService("Players")

local function hurtPlayer(player) 
	if player then
		local character = player.Character
		local humanoid = character:FindFirstChildWhichIsA("Humanoid")
		if humanoid then
			humanoid.Health = humanoid.Health - DANO
			return humanoid
		end
	end

end

vento.Touched:Connect(function(otherPart)
	hurtPlayer(Players:GetPlayerFromCharacter(otherPart.Parent))
end)