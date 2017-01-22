function AbilityUsageThink()
	

	
	local bot = GetBot();
	if bot:IsUsingAbility() then
		return
	end
	
	local nm = bot:GetAbilityByName("bane_nightmare")
	
	if not nm:IsFullyCastable() then
		return
	end
	
	local nearbyHeroes = bot:GetNearbyHeroes(nm:GetCastRange(), false, BOT_MODE_NONE)
	
	for k,v in pairs(nearbyHeroes) do
		print(k, v:GetUnitName())
	end
	
	victim = nearbyHeroes[2]
	
	if victim ~= nil then
		bot:Action_UseAbilityOnEntity(nm, victim)
		bot:Action_Chat("lol noob", true)
	end
	

end