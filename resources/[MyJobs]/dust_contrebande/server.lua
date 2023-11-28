RedEM = exports["redem_roleplay"]:RedEM()

data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)



Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2000)
		TriggerEvent("redemrp_inventory:server:removeitemstashbis", "sucre", 1, {}, "mout", 1, {}, "dep_moo_test","moonshine", 1, {}, "ret_moo_test")
		Citizen.Wait(2000)
		TriggerEvent("redemrp_inventory:server:removeitemstashbis", "sucre", 1, {}, "aromebayou", 1, {},"dep_moo_test","moonshinebayou", 1, {}, "ret_moo_test")
		Citizen.Wait(2000)
		TriggerEvent("redemrp_inventory:server:removeitemstashbis", "sucre", 1, {}, "arometrappeur", 1, {},"dep_moo_test","moonshinetrappeur", 1, {}, "ret_moo_test")
		Citizen.Wait(2000)
		TriggerEvent("redemrp_inventory:server:removeitemstashbis", "sucre", 1, {}, "aromecueilleur", 1, {},"dep_moo_test","moonshinecueilleur", 1, {}, "ret_moo_test")
		Citizen.Wait(2000)
		TriggerEvent("redemrp_inventory:server:removeitemstashbis", "sucre", 1, {}, "aromeforet", 1, {},"dep_moo_test","moonshineforet", 1, {}, "ret_moo_test")
		Citizen.Wait(2000)
		TriggerEvent("redemrp_inventory:server:removeitemstashbis", "sucre", 1, {}, "aromefongique", 1, {},"dep_moo_test","moonshinefongique", 1, {}, "ret_moo_test")
		Citizen.Wait(2000)
		TriggerEvent("redemrp_inventory:server:removeitemstashbis", "sucre", 1, {}, "aromecitadin", 1, {},"dep_moo_test","moonshinecitadin", 1, {}, "ret_moo_test")
		Citizen.Wait(2000)
		TriggerEvent("redemrp_inventory:server:removeitemstashbis", "sucre", 1, {}, "aromepeignecul", 1, {},"dep_moo_test","moonshinepeignecul", 1, {}, "ret_moo_test")
		Citizen.Wait(2000)
		TriggerEvent("redemrp_inventory:server:removeitemstashbis", "sucre", 1, {}, "aromemexicain", 1, {},"dep_moo_test","moonshinemexicaine", 1, {}, "ret_moo_test")
	end
end)


RegisterServerEvent("contrebande:RequestCampMenu", function(menutype)
    local _source = tonumber(source)
    local craftingtable = {} 
	for k, v in pairs(Config.CraftingsReceipe) do
		if v.type == menutype then
			if v.Itemtocraft == 1 then
				local ItemData = data.getItem(_source, v.ItemReceipe1Name)
				local rItem1Amount = tonumber(ItemData.ItemAmount - v.ItemReceipe1Amount)
				if rItem1Amount >= 0 then
					craftingtable[k] = v
				end
			end
			if v.Itemtocraft == 2 then
				local ItemData = data.getItem(_source, v.ItemReceipe1Name)
				local ItemData2 = data.getItem(_source, v.ItemReceipe2Name)
				local rItem1Amount = tonumber(ItemData.ItemAmount - v.ItemReceipe1Amount)
				local rItem2Amount = tonumber(ItemData2.ItemAmount - v.ItemReceipe2Amount)
				if rItem1Amount >= 0 and rItem2Amount >= 0 then
					craftingtable[k] = v
				end
			end
			if v.Itemtocraft == 3 then
				local ItemData = data.getItem(_source, v.ItemReceipe1Name)
				local ItemData2 = data.getItem(_source, v.ItemReceipe2Name)
				local ItemData3 = data.getItem(_source, v.ItemReceipe3Name)
				local rItem1Amount = tonumber(ItemData.ItemAmount - v.ItemReceipe1Amount)
				local rItem2Amount = tonumber(ItemData2.ItemAmount - v.ItemReceipe2Amount)
				local rItem3Amount = tonumber(ItemData3.ItemAmount - v.ItemReceipe3Amount)
				if rItem1Amount >= 0 and rItem2Amount >= 0 and rItem3Amount >= 0 then
					craftingtable[k] = v
				end
			end
			if v.Itemtocraft == 4 then
				local ItemData = data.getItem(_source, v.ItemReceipe1Name)
				local ItemData2 = data.getItem(_source, v.ItemReceipe2Name)
				local ItemData3 = data.getItem(_source, v.ItemReceipe3Name)
				local ItemData4 = data.getItem(_source, v.ItemReceipe4Name)
				local rItem1Amount = tonumber(ItemData.ItemAmount - v.ItemReceipe1Amount)
				local rItem2Amount = tonumber(ItemData2.ItemAmount - v.ItemReceipe2Amount)
				local rItem3Amount = tonumber(ItemData3.ItemAmount - v.ItemReceipe3Amount)
				local rItem4Amount = tonumber(ItemData3.ItemAmount - v.ItemReceipe4Amount)
				if rItem1Amount >= 0 and rItem2Amount >= 0 and rItem3Amount >= 0 and rItem4Amount >= 0 then
					craftingtable[k] = v
				end
			end
		end
	end

	TriggerClientEvent("contrebande:OpenCampMenu", _source, craftingtable, menutype)
end)

RegisterServerEvent('contrebande:CraftItem')
AddEventHandler('contrebande:CraftItem', function(itemNameStr, menu, amount)
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
				TriggerClientEvent("contrebande:CraftingAction", _source)

		Citizen.Wait(Config.WorkingTime)
	end
end)

RegisterServerEvent('contrebande:AddItem')
AddEventHandler('contrebande:AddItem', function(item, amount)
	print (item, amount)
	local _source = tonumber(source)
	local ItemData = data.getItem(_source, item)
	ItemData.AddItem(amount)

end)


RegisterServerEvent("contrebande:MaxRessourcesAmount", function(dataType)
    local _source = tonumber(source)
    
	if Config.CraftingsReceipe[dataType].Itemtocraft == 1 then
		local ItemData = data.getItem(_source, Config.CraftingsReceipe[dataType].ItemReceipe1Name)
		
		local rItem1Amount = tonumber(ItemData.ItemAmount / Config.CraftingsReceipe[dataType].ItemReceipe1Amount)
		
		if rItem1Amount >= 1 then
			TriggerClientEvent("contrebande:client:SetMaxAmount", _source, math.floor(rItem1Amount))
		else 
			TriggerClientEvent("contrebande:client:SetMaxAmount", _source, 0)
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
			TriggerClientEvent("contrebande:client:SetMaxAmount", _source, math.floor(lAmount))
		else 
			TriggerClientEvent("contrebande:client:SetMaxAmount", _source, 0)
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
			TriggerClientEvent("contrebande:client:SetMaxAmount", _source, math.floor(lAmount))
		else
			TriggerClientEvent("contrebande:client:SetMaxAmount", _source, 0)
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
			TriggerClientEvent("contrebande:client:SetMaxAmount", _source, math.floor(lAmount))
		else
			TriggerClientEvent("contrebande:client:SetMaxAmount", _source, 0)
		end
	end

end)



---- get le nb de graine dans le stash
RegisterServerEvent("pavot:checkstash", function(type)
	local _source = source
	local stash = nil
	if type == "blackwater" then
		stash = "pavot_bla"
	elseif type == "stdenis" then
		stash = "pavot_stdenis"
	end
	local ItemData = data.getItemStash(_source, stash, "grainepavot")
	local ItemAmount = tonumber(ItemData.ItemAmount)

	TriggerClientEvent("pavot:client:SetMaxAmount", _source, ItemAmount)
	Wait(500)
	TriggerClientEvent("pavot:OpenImportMenu",  _source)
end)


--- remove les graines


--- ajouter les graines