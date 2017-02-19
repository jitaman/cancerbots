local ability = require "bots/ability_library"


local skillbuild = {1,2,1,2,1,
					4,3,2,2,1,
					3,3,3,4,4,
          6,8,10,12}

function AbilityLevelUpThink()

  local abilities = {
  "earth_spirit_boulder_smash",
  "earth_spirit_rolling_boulder",
  "earth_spirit_geomagnetic_grip",
--  "earth_spirit_stone_caller",
--  "earth_spirit_petrify",
  "earth_spirit_magnetize",
  "special_bonus_intelligence_10",
  "special_bonus_armor_4",
  "special_bonus_magic_resistance_15",
  "special_bonus_gold_income_15",
  "special_bonus_spell_amplify_15",
  "special_bonus_hp_300",
  "special_bonus_respawn_reduction_35",
  "special_bonus_unique_earth_spirit" }


	ability.skill(abilities, skillbuild)

end

function AbilityUsageThink()
  --ability.useOnNearestAlly(GetBot(), "boulder_smash")
end
