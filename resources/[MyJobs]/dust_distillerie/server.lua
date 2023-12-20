RedEM = exports["redem_roleplay"]:RedEM()

data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent('distillerie:CraftItem')
AddEventHandler('distillerie:CraftItem', function(itemNameStr, menu, amount)
	local _source = tonumber(source)
	
	for i = 1, amount, 1 do
		TriggerEvent("redemrp_inventory:getData", function(Inventory)
			if Config.CraftingsReceipe[itemNameStr].Itemtocraft == 1 then
				local ItemData = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe1Name)
				if ItemData.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe1Amount) then
					local ItemDatagive = data.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemToGive)
					ItemDatagive.AddItem(Config.CraftingsReceipe[itemNameStr].Amount)
				end
			end
			if Config.CraftingsReceipe[itemNameStr].Itemtocraft == 2 then
				local ItemData = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe1Name)
				local ItemData2 = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe2Name)
				if ItemData.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe1Amount) and ItemData2.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe2Amount) then
					local ItemDatagive = data.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemToGive)
					ItemDatagive.AddItem(Config.CraftingsReceipe[itemNameStr].Amount)
				end
			end
			if Config.CraftingsReceipe[itemNameStr].Itemtocraft == 3 then
				local ItemData = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe1Name)
				local ItemData2 = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe2Name)
				local ItemData3 = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe3Name)
				if ItemData.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe1Amount) and ItemData2.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe2Amount) and ItemData3.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe3Amount) then
					local ItemDatagive = data.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemToGive)
					ItemDatagive.AddItem(Config.CraftingsReceipe[itemNameStr].Amount)
				end
			end
			if Config.CraftingsReceipe[itemNameStr].Itemtocraft == 4 then
				local ItemData = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe1Name)
				local ItemData2 = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe2Name)
				local ItemData3 = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe3Name)
				local ItemData4 = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe4Name)
				if ItemData.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe1Amount) and ItemData2.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe2Amount) and ItemData3.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe3Amount) and ItemData4.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe4Amount) then
					local ItemDatagive = data.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemToGive)
					ItemDatagive.AddItem(Config.CraftingsReceipe[itemNameStr].Amount)
				end
			end
			if Config.CraftingsReceipe[itemNameStr].Itemtocraft == 5 then
				local ItemData = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe1Name)
				local ItemData2 = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe2Name)
				local ItemData3 = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe3Name)
				local ItemData4 = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe4Name)
				local ItemData5 = Inventory.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemReceipe5Name)
				if ItemData.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe1Amount) and ItemData2.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe2Amount) and ItemData3.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe3Amount) and ItemData4.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe4Amount) and ItemData5.RemoveItem(Config.CraftingsReceipe[itemNameStr].ItemReceipe5Amount) then
					local ItemDatagive = data.getItem(_source, Config.CraftingsReceipe[itemNameStr].ItemToGive)
					ItemDatagive.AddItem(Config.CraftingsReceipe[itemNameStr].Amount)
				end
			end
		end)
				TriggerClientEvent("distillerie:CraftingAction", _source)

		Citizen.Wait(Config.WorkingTime)
	end
end)

RegisterServerEvent('distillerie:AddItem')
AddEventHandler('distillerie:AddItem', function(item, amount)
	print (item, amount)
	local _source = tonumber(source)
	local ItemData = data.getItem(_source, item)
	ItemData.AddItem(amount)

end)


RegisterServerEvent("distillerie:MaxRessourcesAmount", function(dataType)
    local _source = tonumber(source)
    
	if Config.CraftingsReceipe[dataType].Itemtocraft == 1 then
		local ItemData = data.getItem(_source, Config.CraftingsReceipe[dataType].ItemReceipe1Name)
		
		local rItem1Amount = tonumber(ItemData.ItemAmount / Config.CraftingsReceipe[dataType].ItemReceipe1Amount)
		
		if rItem1Amount >= 1 then
			TriggerClientEvent("distillerie:client:SetMaxAmount", _source, math.floor(rItem1Amount))
		else 
			TriggerClientEvent("distillerie:client:SetMaxAmount", _source, 0)
		end
	elseif Config.CraftingsReceipe[dataType].Itemtocraft == 2 then
		local ItemData = data.getItem(_source, Config.CraftingsReceipe[dataType].ItemReceipe1Name)
		local ItemData2 = data.getItem(_source, Config.CraftingsReceipe[dataType].ItemReceipe2Name)
		
		local rItem1Amount = tonumber(ItemData.ItemAmount / Config.CraftingsReceipe[dataType].ItemReceipe1Amount)
		local rItem2Amount = tonumber(ItemData2.ItemAmount / Config.CraftingsReceipe[dataType].ItemReceipe2Amount)
		
		if rItem1Amount >= rItem2Amount then
			hAmount = rItem1Amount
			lAmount = rItem2Amount
		else
			lAmount = rItem1Amount
			hAmount = rItem2Amount
		end
	
		if hAmount >= 1 and lAmount >= 1 then
			TriggerClientEvent("distillerie:client:SetMaxAmount", _source, math.floor(lAmount))
		else 
			TriggerClientEvent("distillerie:client:SetMaxAmount", _source, 0)
		end
	elseif Config.CraftingsReceipe[dataType].Itemtocraft == 3 then
		local ItemData = data.getItem(_source, Config.CraftingsReceipe[dataType].ItemReceipe1Name)
		local ItemData2 = data.getItem(_source, Config.CraftingsReceipe[dataType].ItemReceipe2Name)
		local ItemData3 = data.getItem(_source, Config.CraftingsReceipe[dataType].ItemReceipe3Name)
		
		local Item1Amount = tonumber(ItemData.ItemAmount / Config.CraftingsReceipe[dataType].ItemReceipe1Amount)
		local Item2Amount = tonumber(ItemData2.ItemAmount / Config.CraftingsReceipe[dataType].ItemReceipe2Amount)
		local Item3Amount = tonumber(ItemData3.ItemAmount / Config.CraftingsReceipe[dataType].ItemReceipe3Amount)

		local lAmount = Item1Amount
		if Item2Amount < lAmount then
			lAmount = Item2Amount
		end
		if Item3Amount < lAmount then
			lAmount = Item3Amount
		end
		if Item1Amount >= 1 and Item2Amount >= 1 and Item3Amount >= 1 then
			TriggerClientEvent("distillerie:client:SetMaxAmount", _source, math.floor(lAmount))
		else
			TriggerClientEvent("distillerie:client:SetMaxAmount", _source, 0)
		end
	elseif Config.CraftingsReceipe[dataType].Itemtocraft == 4 then
		local ItemData = data.getItem(_source, Config.CraftingsReceipe[dataType].ItemReceipe1Name)
		local ItemData2 = data.getItem(_source, Config.CraftingsReceipe[dataType].ItemReceipe2Name)
		local ItemData3 = data.getItem(_source, Config.CraftingsReceipe[dataType].ItemReceipe3Name)
		local ItemData4 = data.getItem(_source, Config.CraftingsReceipe[dataType].ItemReceipe4Name)
		
		local Item1Amount = tonumber(ItemData.ItemAmount / Config.CraftingsReceipe[dataType].ItemReceipe1Amount)
		local Item2Amount = tonumber(ItemData2.ItemAmount / Config.CraftingsReceipe[dataType].ItemReceipe2Amount)
		local Item3Amount = tonumber(ItemData3.ItemAmount / Config.CraftingsReceipe[dataType].ItemReceipe3Amount)
		local Item4Amount = tonumber(ItemData4.ItemAmount / Config.CraftingsReceipe[dataType].ItemReceipe4Amount)

		local lAmount = Item1Amount
		if Item2Amount < lAmount then
			lAmount = Item2Amount
		end
		if Item3Amount < lAmount then
			lAmount = Item3Amount
		end
		if Item4Amount < lAmount then
			lAmount = Item4Amount
		end
		if Item1Amount >= 1 and Item2Amount >= 1 and Item3Amount >= 1 and Item4Amount >= 1 then
			TriggerClientEvent("distillerie:client:SetMaxAmount", _source, math.floor(lAmount))
		else
			TriggerClientEvent("distillerie:client:SetMaxAmount", _source, 0)
		end
	end

end)



RegisterServerEvent("distillerie:depStash", function()
    local _source = source
	if RedEM.GetPlayer(source).job == "distillerie" then
        TriggerClientEvent("redemrp_inventory:OpenStash", _source, "dep_distillerie", 3000.0)
    end
end)


RegisterServerEvent("distillerie:retStash", function()
    local _source = source
	if tonumber(RedEM.GetPlayer(_source).jobgrade) > 1 then
        TriggerClientEvent("redemrp_inventory:OpenStash", _source, "ret_distillerie", 6000.0)
    end
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2000)
		TriggerEvent("redemrp_inventory:server:removeitemstashter", "sucre", 1, {}, "moutwhisky", 1, {}, "charbon", 1, {},"dep_distillerie","dirty_whiskey", 1, {}, "ret_distillerie")
		Citizen.Wait(2000)
		TriggerEvent("redemrp_inventory:server:removeitemstashter", "sucre", 1, {}, "moutwhiskybon", 1, {}, "charbon", 1, {},"dep_distillerie","good_whisky", 1, {}, "ret_distillerie")
		Citizen.Wait(2000)
		TriggerEvent("redemrp_inventory:server:removeitemstashter", "sucre", 1, {}, "moutgin", 1, {}, "charbon", 1, {},"dep_distillerie","gin", 1, {}, "ret_distillerie")	
	end
end)

RegisterServerEvent('distillerie:addorge')
AddEventHandler('distillerie:addorge', function() 
	local _source = source
	local ItemData = data.getItem(_source, 'orge')
	local amount = math.random(2)
	ItemData.AddItem(amount)
end)

---- free access

local pricetable = {}

Citizen.CreateThread(function()
	for item, v in pairs(Config.Sell) do
		pricetable[item] = math.random(v.pricelow ,v.pricehigh)/100
	end
end)

RegisterServerEvent('distillerie:askpricetable')
AddEventHandler('distillerie:askpricetable', function() 
	local _source = source
	Wait(1000)
	TriggerClientEvent("distillerie:getpricetable", _source, pricetable)
end)



RegisterServerEvent("distillerie:MaxSellingAmount", function(dataType)
    local _source = tonumber(source)
    local ItemData = data.getItem(_source, dataType)
    local ItemAmount = tonumber(ItemData.ItemAmount)
	if ItemAmount >= 1 then
		TriggerClientEvent("distillerie:client:SetMaxAmount", _source, math.floor(ItemAmount))
	else 
		TriggerClientEvent("distillerie:client:SetMaxAmount", _source, 0)
	end
end)

RegisterServerEvent('distillerie:SellItem')
AddEventHandler('distillerie:SellItem', function(itemNameStr, menu, amount, localisation)
	local _source = tonumber(source)
    local user = RedEM.GetPlayer(_source)
    local ItemData = data.getItem(_source, itemNameStr)
	if ItemData.RemoveItem(amount) then
		user.AddMoney(pricetable[itemNameStr] * amount)
		if itemNameStr == "tonneaumout" then
			TriggerEvent("redemrp_inventory:server:additemstash", "mixturedistillerie", amount*10, {}, "boss_distillerie")
		else
			TriggerEvent("redemrp_inventory:server:additemstash", itemNameStr, amount, {}, "boss_distillerie")
		end
	end
end)



--- achat

RegisterServerEvent("distillerie:checkstash", function(item, menudata, stash)
	local _source = source
	local ItemData = data.getItemStash(_source, stash, item)
	local ItemAmount = tonumber(ItemData.ItemAmount)
	TriggerClientEvent("distillerie:client:SetMaxAmount", _source, ItemAmount)
	-- Wait(500)
	-- TriggerClientEvent("distillerie:SelectBuyingAmount", item, menudata, stash)
end)

RegisterServerEvent("distillerie:checksellingstash", function(stash)
	local _source = source
	local sellingtable = {} 
	for k, v in pairs (Config.Buy) do
		local ItemData = data.getItemStash(_source, stash, k)
		local ItemAmount = tonumber(ItemData.ItemAmount)
		if ItemAmount >= 1 then
			sellingtable[k] = v
		end
	end
	TriggerClientEvent("distillerie:OpenBuyingMenu", _source, sellingtable, stash)
end)

--- acheter
RegisterServerEvent("distillerie:buyItem", function(item, amount, stash)
	local currentRealTime = os.date("*t")

    -- Vérifier si l'heure réelle est entre 19h et 01h
	local stashw = exports.redemrp_inventory.GetStashWeight(source, stash)
	local _source = tonumber(source)
	local user = RedEM.GetPlayer(_source)
	local ItemData = data.getItem(_source, item)
	local weight = ItemData.ItemInfo.weight 
	local money = user.money
	local itemprice = Config.Buy[item].price * amount
	if stashw >= weight * amount then
		if money >= itemprice then
			if ItemData.AddItem(amount) then
				user.RemoveMoney(itemprice)
				TriggerEvent("redemrp_inventory:server:removefromstash", item, amount, {}, stash)
			end
		end
		
	end
end)
