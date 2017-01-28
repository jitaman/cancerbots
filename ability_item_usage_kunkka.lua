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
						
					
	
	local ability = GetBot():GetAbilityByName(abilities[skillbuild[1]]);
	          
	if( ability:CanAbilityBeUpgraded() and ability:GetLevel() < ability:GetMaxLevel())  then
	
	    
		GetBot():Action_LevelAbility(ability:GetName())
		table.remove(skillbuild, 1)
	end
	
end

