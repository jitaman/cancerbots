function AbilityUsageThink()
	
	
	local bot = GetBot();
	if bot:IsUsingAbility() then
		return
	end
	
	local ability = bot:GetAbilityByName("chen_test_of_faith_teleport")

	
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
		bot:Action_Chat("lol noob", true)
	end
	

end