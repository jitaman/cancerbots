
----------------------------------------------------------------------------------------------------

_G._savedEnv = getfenv()
module( "mode_generic_secret_shop", package.seeall )

----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------

function GetDesire()
	
	function hasItem(bot, itemName) 
	

		for i = 0, 8 do
			if bot:GetItemInSlot(i) ~= nil then
				if  bot:GetItemInSlot(i):GetName() == itemName then
					--print("Apparently bot has item "..itemName)
					return true
				end
			end
		end
		return false
	end
				
	
	if GetItemStockCount("item_gem") == 0 and GetItemStockCount("item_courier") == 0 then
		local gold = GetBot():GetGold()
		if gold > GetBot():GetNextItemPurchaseValue() then
			return 1
		else
			return 0
		end
			
	else 
		return 0
	end

end

----------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------

for k,v in pairs( mode_generic_secret_shop ) do	_G._savedEnv[k] = v end

----------------------------------------------------------------------------------------------------
