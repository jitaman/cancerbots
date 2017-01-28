local ability = {}

function ability.hello() --test function
	print "hello, called from the hello function"
end

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
	
	
	victim = nearbyHeroes[2]
	
	if victim ~= nil then
		bot:Action_UseAbilityOnEntity(ability, victim)
	end
end


return ability