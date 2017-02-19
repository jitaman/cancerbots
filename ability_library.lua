local ability_lib = {}

function ability_lib.hello() --test function
  print "hello, called from the hello function"
end

function ability_lib.flame(bot)
  local msg = {"lol noob",
    "get rekt",
    "reported" }
  bot:ActionImmediate_Chat(msg[RandomInt(1, 3)], true)
end

function ability_lib.useOnNearestAlly(bot, abilityName)


  if bot:IsUsingAbility() then
    return
  end

  local hero_ability = bot:GetAbilityByName(abilityName)

  if not hero_ability:IsFullyCastable() then
    return
  end

  local nearbyHeroes = bot:GetNearbyHeroes(hero_ability:GetCastRange(), false, BOT_MODE_NONE)

  victim = nearbyHeroes[2]

  if victim ~= nil then
    bot:Action_UseAbilityOnEntity(hero_ability, victim)

  end
  ability_lib.flame(bot)
end

function ability_lib.skill(abilities, skillbuild)
  local ability = GetBot():GetAbilityByName(abilities[skillbuild[1]]);

  if( ability:CanAbilityBeUpgraded() and ability:GetLevel() < ability:GetMaxLevel()) then

    GetBot():ActionImmediate_LevelAbility(ability:GetName())
    table.remove(skillbuild, 1)
  end
end

return ability_lib
