local ability = require("bots/ability_library" )
function AbilityUsageThink()





    ability.useOnNearestAlly(GetBot(), "kunkka_x_marks_the_spot")

end


local skillbuild = {3,2,3,2,3,
					4,3,2,2,1,
					1,1,1,4,4}

function AbilityLevelUpThink()


	local abilities =  {"kunkka_torrent",
"kunkka_tidebringer",
"kunkka_x_marks_the_spot",
"kunkka_ghostship"}


	ability.skill(abilities, skillbuild)

end
