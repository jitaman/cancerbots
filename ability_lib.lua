--local ability = {}
--[[

function ability.flame(bot)
	
	bot:Action_Chat("reported", true)
end

function ability.useOnNearestAlly(bot, abilityName)
	if bot:IsUsingAbility() then
		return
	end
	
	local ability = bot:GetAbilityByName(abilityName)
	
	if not ability:IsFullyCastable() then
		return
	end
	
	local nearbyHeroes = bot:GetNearbyHeroes(ability:GetCastRange(), false, BOT_MODE_NONE)
	
	for k,v in pairs(nearbyHeroes) do
		print(k, v:GetUnitName())
	end
	
	victim = nearbyHeroes[2]
	
	if victim ~= nil then
		bot:Action_UseAbilityOnEntity(ability, victim)
		flame(bot)
	end
end
]]--

return {}