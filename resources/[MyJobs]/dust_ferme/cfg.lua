Config = {}

Config.Jobs = {
    [1] = "fermier",
}

Config.FarmerDepositPos = { vector3(-2584.335, 415.2029, 148.965)} -- 
Config.FarmerWithdrawalPos = { vector3(-2588.564, 417.783, 149.0052)}
Config.GetVirginContractPos = { vector3(-2592.237, 455.9889, 146.9973)}
Config.DistanceToInteract = 2.2

Config.PointSprite = 2033377404


Config.GatherDict = 'mech_pickup@plant@milkweed'
Config.GatherAnim = 'stn_pick'


Config.WorkingTime = 5000

Config.ShowBlips = true

Config.RessourcesPoints = 
{
    vector3(-2572.389, 551.3449, 141.3406),
    vector3(-2569.031, 546.512, 141.3784),
    vector3(-2563.755, 550.1628, 141.096),
    vector3(-2567.136, 556.5611, 141.2192),
    vector3(-2561.816, 561.8822, 140.8911),
    vector3(-2556.401, 556.0502, 141.0345),
    vector3(-2549.916, 560.5123, 140.7749)
}

Config.Buycattle = {
	Blackwater = {
		pos = vector3(-957.5659, -1324.978, 52.04538),
		name = 'Achat',
		stable= 'Blackwater',
		blip= 423351566,
	},
}

Config.Cattle = {
	bull= {
		model = "a_c_bull_01",
		name = "Taureau",
		desc = "$15 - Un gros morceau de viande",
		price = 15,
    },
	cow= {
		model = "a_c_cow",
		name = "Vache",
		desc = "$5 - Pour faire du bon lait",
		price = 5,
    },
}

Config.FarmStables = {
	Blackwater = {
		pos = vector3(-977.5865, -1337.164, 52.59379),
		name = 'Blackwater',
    },
	Ferme = {
		pos = vector3(-1587.07, -1424.411, 81.33995),
		name = 'Ferme',
    },
	Boucherie = {
		pos = vector3(2162.463, -1307.915, 42.45642),
		name = 'Boucherie',
    },

}


Config.Paturages = {
    [1] = {
		pos = vector3(-1081.22, -734.3133, 64.80408),
    },
    [2] = {
		pos = vector3(-1772.972, 423.2609, 111.9745),
    },
	[3] = {
		pos = vector3(-2031.971, -2482.823, 63.84556),
    },
	

}

Config.BlipSprite = -675651933
Config.blipRadius = 50.0
Config.radiusStyle = -1559907306



Config.Boucherie = {
	[1] = {pos= vector3(2150.772, -1296.647, 42.75868), blip = -1665418949},
}

Config.RewardBoucherie = {
	["a_c_cow"] = {
		[0] = {viande = 'viandebovine', viandeamount = 1, cuir = 'cuirbovin', cuiramount = 4, graisseamount = 2},
		[1] = {viande = 'viandebovine', viandeamount = 2, cuir = 'cuirbovin', cuiramount = 8, graisseamount = 4},
		[2] = {viande = 'viandebovine', viandeamount = 3, cuir = 'cuirbovin', cuiramount = 12, graisseamount = 6},
		[3] = {viande = 'viandebovine', viandeamount = 4, cuir = 'cuirbovin', cuiramount = 16, graisseamount = 8},
		[4] = {viande = 'viandebovine', viandeamount = 5, cuir = 'cuirbovin', cuiramount = 20, graisseamount = 10},
		[5] = {viande = 'viandebovine', viandeamount = 6, cuir = 'cuirbovin', cuiramount = 24, graisseamount = 12},
	},
	["a_c_bull_01"] = {
		[0] = {viande = 'viandebovine', viandeamount = 2, cuir = 'cuirbovin',  cuiramount = 4, graisseamount = 4},
		[1] = {viande = 'viandebovine', viandeamount = 4, cuir = 'cuirbovin',  cuiramount = 8, graisseamount = 6},
		[2] = {viande = 'viandebovine', viandeamount = 6, cuir = 'cuirbovin',  cuiramount = 12, graisseamount = 8},
		[3] = {viande = 'viandebovine', viandeamount = 8, cuir = 'cuirbovin',  cuiramount = 16, graisseamount = 10},
		[4] = {viande = 'viandebovine', viandeamount = 10, cuir = 'cuirbovin',  cuiramount = 20, graisseamount = 12},
		[5] = {viande = 'viandebovine', viandeamount = 12, cuir = 'cuirbovin',  cuiramount = 24, graisseamount = 14},
	},

}

Config.Lait = {
	[1] = {
		pos = vector3(-1601.804, -1411.454, 81.94773),
    },
}


Config.PedMilkingDict = "mech_milking"
Config.PedMilkingAnim = "milking_loop_player"

Config.WorkingTime = 5000
Config.DistanceToInteract = 1.5

Config.Atelier = vector3(-1643.041, -1350.916, 84.40321)

Config.AnimDict = "amb_work@world_human_hammer@table@male_a@trans"
Config.CraftAnim = {
    "base_trans_base",
}

Config.CraftingsReceipe = {
	['bouteillelait'] = {
		type = 'cuisineferme',
		Itemtocraft = 1,
		ItemReceipe1Name = 'sceaulait',
		ItemReceipe1Amount = 1,
		ItemToGive = 'bouteillelait',
		Amount = 5,
		WorkingTime = 10,
		label = 'Bouteille de lait',
		descriptionimages = {{src = 'nui://redemrp_inventory/html/items/moonshine_pot.png', text = "Jarre de lait",count = "x1"}}
	},
	['soupe'] = {
		type = 'cuisineferme',
		Itemtocraft = 4,
		ItemReceipe1Name = 'Corn_Seed',
		ItemReceipe1Amount = 1,
		ItemReceipe2Name = 'Patate',
		ItemReceipe2Amount = 1,
		ItemReceipe3Name = 'Saugeducolibri',
		ItemReceipe3Amount = 1,
		ItemReceipe4Name = 'charbon',
		ItemReceipe4Amount = 1,
		ItemToGive = 'soupe',
		Amount = 1,
		WorkingTime = 5,
		label = 'Soupe de légume',
		descriptionimages = {{src = 'nui://redemrp_inventory/html/items/corn.png', text = "Maïs",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_bread_chunk.png', text = "Patate",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_hummingbird_sage.png', text = "Sauge du Colibri",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
	},
	['ragoutgibier'] = {
		type = 'cuisineferme',
		Itemtocraft = 3,
		ItemReceipe1Name = 'viandegibier',
		ItemReceipe1Amount = 1,
		ItemReceipe2Name = 'Patate',
		ItemReceipe2Amount = 1,
		ItemReceipe3Name = 'charbon',
		ItemReceipe3Amount = 1,
		ItemToGive = 'Ragoutgibier',
		Amount = 1,
		WorkingTime = 5,
		label = 'Ragoût',
		descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_mature_venison.png', text = "Venaison",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_bread_chunk.png', text = "Patate",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
	},
	['ragoutviande'] = {
		type = 'cuisineferme',
		Itemtocraft = 3,
		ItemReceipe1Name = 'viande',
		ItemReceipe1Amount = 1,
		ItemReceipe2Name = 'Patate',
		ItemReceipe2Amount = 1,
		ItemReceipe3Name = 'charbon',
		ItemReceipe3Amount = 1,
		ItemToGive = 'Ragoutviande',
		Amount = 1,
		WorkingTime = 5,
		label = 'Ragoût',
		descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_prime_beef.png', text = "Viande Crue",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_bread_chunk.png', text = "Patate",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
	},
	['ragoutvolaille'] = {
		type = 'cuisineferme',
		Itemtocraft = 3,
		ItemReceipe1Name = 'viandevolaille',
		ItemReceipe1Amount = 1,
		ItemReceipe2Name = 'Patate',
		ItemReceipe2Amount = 1,
		ItemReceipe3Name = 'charbon',
		ItemReceipe3Amount = 1,
		ItemToGive = 'Ragoutvolaille',
		Amount = 1,
		WorkingTime = 5,
		label = 'Ragoût',
		descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_gamey_bird.png', text = "Volaille",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_bread_chunk.png', text = "Patate",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
	},
	
    
    
}