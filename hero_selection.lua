

----------------------------------------------------------------------------------------------------


 --
function Think()
	
	local the_list = {"npc_dota_hero_tiny",
	
	"npc_dota_hero_terrorblade",
	"npc_dota_hero_techies",
	"npc_dota_hero_zuus",
	"npc_dota_hero_abyssal_underlord",
	"npc_dota_hero_meepo",
	"npc_dota_hero_wisp",
	"npc_dota_hero_medusa",
	"npc_dota_hero_monkey_king",
	"npc_dota_hero_chen",
		"npc_dota_hero_kunkka",
	"npc_dota_hero_bane",
	"npc_dota_hero_obsidian_destroyer",
	"npc_dota_hero_tiny"

	
}


	if GameTime() > 10 then
		for i = 0, 11 do
			if IsPlayerBot(i) then
				SelectHero(i, table.remove(the_list))
			end
		end
	end

end

 

----------------------------------------------------------------------------------------------------
