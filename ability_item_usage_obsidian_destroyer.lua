function john_say(str)
	print(str)
end

function AbilityUsageThink()
	

	
	local bot = GetBot();
	
	local orb = bot:GetAbilityByName("obsidian_destroyer_astral_imprisonment")
	
	--upgrade
	if orb:CanAbilityBeUpgraded() and orb:GetHeroLevelRequiredToUpgrade() <= GetHeroLevel(bot) then
		orb:UpgradeAbility()
	end
	
	
	if bot:IsUsingAbility() then
		return
	end
	
	 
	
	
	
	if not orb:IsFullyCastable() then
		return
	end
	
	
	
	local nearbyHeroes = bot:GetNearbyHeroes(orb:GetCastRange(), false, BOT_MODE_NONE)
	
	for k,v in pairs(nearbyHeroes) do
		print(k, v:GetUnitName())
	end
	
	victim = nearbyHeroes[2]
	
	if victim ~= nil then
		bot:Action_UseAbilityOnEntity(orb, victim)
	end
	

end