ability = require "bots/ability_library"


local skillbuild = {1,2,1,2,1,
					4,3,2,2,1,
					3,3,3,4,4,
          6,8,10,12}

function AbilityLevelUpThink()

  local abilities = {"furion_sprout",
  "furion_teleportation",
  "furion_force_of_nature",
  "furion_wrath_of_nature",
  "special_bonus_attack_damage_20",
  "special_bonus_hp_175",
  "special_bonus_intelligence_15",
  "special_bonus_movement_speed_20",
  "special_bonus_attack_speed_35",
  "special_bonus_armor_8",
  "special_bonus_respawn_reduction_40",
  "special_bonus_unique_furion"
  }


	ability.skill(abilities, skillbuild)

end

function AbilityUsageThink()
  ability.useOnNearestAlly(GetBot(), "furion_sprout")
end
