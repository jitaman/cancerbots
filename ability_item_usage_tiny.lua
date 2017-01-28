
local ability = require("bots/ability_library")

function AbilityUsageThink()
	
	ability.useOnNearestAlly(GetBot(), "tiny_toss")

end
