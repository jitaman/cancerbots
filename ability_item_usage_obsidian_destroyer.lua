local ability = require("bots/ability_library" )
function AbilityUsageThink()

  ability.useOnNearestAlly(GetBot(), "obsidian_destroyer_astral_imprisonment")

end
local skillbuild = {
  3,2,3,2,3,
  4,3,2,2,1,
  1,1,1,4,4
}

function AbilityLevelUpThink()

  local abilities = {
    "obsidian_destroyer_arcane_orb",
    "obsidian_destroyer_astral_imprisonment",
    "obsidian_destroyer_essence_aura",
  	"obsidian_destroyer_sanity_eclipse"}

  ability.skill(abilities, skillbuild)

end
