RedEM = exports["redem_roleplay"]:RedEM()

data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent('usine:CraftItem')
AddEventHandler('usine:CraftItem', function(itemNameStr, playerPedId, menu)
	local _source = tonumber(source)
	TriggerEvent("redemrp_inventory:getData", function(Inventory)
	local ItemData = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe1Name)
	local ItemData2 = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe2Name)
	if ItemData.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe1Amount) and ItemData2.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe2Amount) then
		Citizen.CreateThread( function()
			TriggerClientEvent("usine:CraftingAction", playerPedId)
			Citizen.Wait(Config.WorkingTime * 1000)
			local ItemDatagive = data.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemToGive)
			ItemDatagive.AddItem(Config.CraftingsReceipe[itemNameStr].Amount)
		end)
	else 
		RedEM.Functions.NotifyRight( _source, "Vous n'avez pas les ressources nécessaire pour fabriquer cet objet", 3000)
	end

	end)
end)

RegisterServerEvent("usine:RequestBossMenu", function(menutype)
    local _source = source
    local user = RedEM.GetPlayer(_source)

	if user.job == "usine" then
		TriggerClientEvent("usine:OpenBossMenu", _source, menutype)
	else
		RedEM.Functions.NotifyRight( _source, "Your job rank is invalid, contact staff!", 3000)
	end
end)


RegisterServerEvent('usine:maxRessourcesAmount')
AddEventHandler('usine:maxRessourcesAmount', function(itemNameStr)
	local _source = tonumber(source)
	local maxCraftingItemNbr = 0
	local _meta = {}
	local _meta2 = {}

	TriggerEvent("redemrp_inventory:getData", function(Inventory)
		local rItem1 = Inventory.getItem(source, Config.CraftingsReceipe[itemNameStr].ItemReceipe1Name)
		local rItem2 = Inventory.getItem(source, Config.CraftingsReceipe[itemNameStr].ItemReceipe2Name)

		local identifier = RedEM.GetPlayer(source).GetIdentifier()
        local charid = RedEM.GetPlayer(source).GetActiveCharacter()


		print("identifier "..identifier)
		print("charid "..charid)
		--print(Inventory[identifier .. "_" .. charid])

		local item, id = getInventoryItemFromName(rItem1, Inventory[identifier .. "_" .. charid], {})
		local item2, id2 = getInventoryItemFromName(rItem2, Inventory[identifier .. "_" .. charid], {})

		local rItem1Amount = (item.getAmount()) / Config.CraftingsReceipe[itemNameStr].ItemReceipe1Amount
		local rItem2Amount = (item2.getAmount()) / Config.CraftingsReceipe[itemNameStr].ItemReceipe2Amount

		print(Config.CraftingsReceipe[itemNameStr].ItemReceipe1Name.." "..rItem1Amount)
		print(Config.CraftingsReceipe[itemNameStr].ItemReceipe2Name.." "..rItem2Amount)

		for i = 0, rItem1Amount, 1 do 
			if not rItem2Amount >= rItem1Amount then
				print("stop count")
				maxCraftingItemNbr = i
			end
		end
	end)

	return maxCraftingItemNbr
end)
