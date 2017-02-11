


local tableItemsToBuy = {

				"item_relic",
				"item_demon_edge"

			};

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



function ItemPurchaseThink()



	local bot = GetBot()
	local item

	if GetItemStockCount("item_courier") ~= 0 then
		item = "item_courier"
	elseif GetItemStockCount("item_gem") ~= 0 then
		item = "item_gem"
	elseif hasItem(bot, "item_relic") then
		item = "item_demon_edge"
		--print("item has been set to demon edge")
	else
		item = "item_relic"
	end





	bot:SetNextItemPurchaseValue(GetItemCost(item))

	if bot:GetGold() >= GetItemCost(item) then
		bot:ActionImmediate_PurchaseItem (item);
		--print(item.." has been supposedly purchased")

	end
end
