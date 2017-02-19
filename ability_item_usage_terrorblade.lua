local ability = require "bots/ability_library"


local skillbuild = {1,2,1,2,1,
					4,3,2,2,1,
					3,3,3,4,4,
          6,8,10,12}

function AbilityLevelUpThink()

  local abilities = {
    "terrorblade_reflection",
    "terrorblade_conjure_image",
    "terrorblade_metamorphosis",
    "terrorblade_sunder",
    "special_bonus_hp_regen_6",
    "special_bonus_attack_speed_15",
    "special_bonus_attack_damage_25",
    "special_bonus_hp_175",
    "special_bonus_agility_15",
    "special_bonus_movement_speed_15",
    "special_bonus_all_stats_15",
    "special_bonus_unique_terrorblade"
  }


	ability.skill(abilities, skillbuild)

end

function AbilityUsageThink()
  if GetBot():GetHealth() < GetBot():GetMaxHealth() * 0.2 then
    ability.useOnNearestAlly(GetBot(), "terrorblade_sunder")
  end

end
