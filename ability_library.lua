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

function ability.skill(abilities, skillbuild)
	local ability = GetBot():GetAbilityByName(abilities[skillbuild[1]]);

	if( ability:CanAbilityBeUpgraded() and ability:GetLevel() < ability:GetMaxLevel())  then


		GetBot():ActionImmediate_LevelAbility(ability:GetName())
		table.remove(skillbuild, 1)
	end
end


return ability
