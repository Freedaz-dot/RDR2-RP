data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
        data = call
end)

RegisterServerEvent("RegisterUsableItem:smallvault")
AddEventHandler("RegisterUsableItem:smallvault", function(source)
    TriggerClientEvent("smallvault", source)    
end)

RegisterServerEvent("RegisterUsableItem:mediumvault")
AddEventHandler("RegisterUsableItem:mediumvault", function(source)
    TriggerClientEvent("mediumvault", source)    
end)

RegisterServerEvent("RegisterUsableItem:largevault")
AddEventHandler("RegisterUsableItem:largevault", function(source)
    TriggerClientEvent("largevault", source)  
end)


SetEntityDistanceCullingRadius()
CreateObject()


--- CREER LE VAULT DANS LA DB ---
RegisterServerEvent("dust_vault:server:vaultDB")
AddEventHandler("dust_vault:server:vaultDB", function(vault, x, y, z)
	local _source = source
    local user = RedEM.GetPlayer(_source)
    local identifier = user.identifier
    local charid = user.charid
	local numBase0 = math.random(100, 999)
    local numBase1 = math.random(0, 9999)
    local generetedUid = string.format("%03d%04d", numBase0, numBase1)
	MySQL.update('INSERT INTO stashes (`stashid`) VALUES (@stashid);',
	{
		stashid = generetedUid
	}, function(rowsChanged)
	end)
	MySQL.update('INSERT INTO vault (`identifier`, `charid`, `stashid`, `model`, `coords`) VALUES (@identifier, @charid, @stashid, @model, @coords);',
	{
		identifier = identifier,
		charid = charid,
		stashid = generetedUid,
		model = vault
		coords = {x, y, z}
	}, function(rowsChanged)
	end)
end)