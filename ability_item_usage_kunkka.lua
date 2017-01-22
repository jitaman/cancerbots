function AbilityUsageThink()
	
	
	local bot = GetBot();
	if bot:IsUsingAbility() then
		return
	end
	
	local xmark = bot:GetAbilityByName("kunkka_x_marks_the_spot")
	
	if not xmark:IsFullyCastable() then
		return
	end
	
	local nearbyHeroes = bot:GetNearbyHeroes(xmark:GetCastRange(), false, BOT_MODE_NONE)
	
	for k,v in pairs(nearbyHeroes) do
		print(k, v:GetUnitName())
	end
	
	victim = nearbyHeroes[2]
	
	if victim ~= nil then
		bot:Action_UseAbilityOnEntity(xmark, victim)
		bot:Action_Chat("lol noob", true)
	end
	

end