local ability = require("bots/ability_library" )
function AbilityUsageThink()



    ability.useOnNearestAlly(GetBot(), "chen_test_of_faith_teleport")

end

local skillbuild = {2,1,3,2,1,
					4,3,2,2,1,
					3,3,1,4,4,
          6,8,10,12}
function AbilityLevelUpThink()
	abilities = {
    "chen_penitence",
		--"chen_test_of_faith",
		"chen_test_of_faith_teleport",
		"chen_holy_persuasion",
		"chen_hand_of_god",
		"special_bonus_movement_speed_15",
		"special_bonus_cast_range_125",
		"special_bonus_hp_200",
		"special_bonus_spell_amplify_25",
		"special_bonus_gold_income_15",
		"special_bonus_respawn_reduction_40",
		"special_bonus_unique_chen_1",
		"special_bonus_unique_chen_2"
}

	ability.skill(abilities, skillbuild)
end
