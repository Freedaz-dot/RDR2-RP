Config = {}


Config.Jobs = {
    [1] = "saloon_kala",
    [2] = "saloon_faubourg",
}

Config.WorkingTime = 5000
Config.DistanceToInteract = 1.5

Config.Atelier = {
    [1] = vector3(2940.411, 523.3466, 45.33625),
    [2] = vector3(2795.335, -1168.009, 47.92803)
}

Config.AnimDict = "script_rc@chnt1@ig@ig2_hosea_cook_eat"
Config.CraftAnim = {
    "coooking_2p_meat_02_arthur",
}


Config.CraftingsReceipe = {
    ['viandepetitmamiferecuite'] = {
        type = 'saloon',
        Itemtocraft = 1,
        ItemReceipe1Name = 'viandepetitmamifere',
        ItemReceipe1Amount = 1,
        ItemToGive = 'viandepetitmamiferecuite',
        Amount = 1,
        WorkingTime = 5,
        label = 'Viande de petit gibier cuite',
        descriptionimages = {src = 'nui://redemrp_inventory/html/items/provision_meat_exotic_bird.png', text = "Viande de petit gibier",count = "x1"}
    },
       ['viandecuite'] = {
        type = 'saloon',
        Itemtocraft = 1,
        ItemReceipe1Name = 'viande',
        ItemReceipe1Amount = 1,
        ItemToGive = 'viandecuite',
        Amount = 1,
        WorkingTime = 5,
        label = 'Viande cuite',
        descriptionimages = {src = 'nui://redemrp_inventory/html/items/provision_meat_prime_beef', text = "Viande crue",count = "x1"}
    },
       ['viandegibiercuite'] = {
        type = 'saloon',
        Itemtocraft = 1,
        ItemReceipe1Name = 'viandegibier',
        ItemReceipe1Amount = 1,
        ItemToGive = 'viandegibiercuite',
        Amount = 1,
        WorkingTime = 5,
        label = 'Venaison cuit',
        descriptionimages = {src = 'nui://redemrp_inventory/html/items/provision_meat_mature_venison', text = "Venaison",count = "x1"}
    },

    ['gibierherbe'] = {
        type = 'saloon',
        Itemtocraft = 2,
        ItemReceipe1Name = 'viandegibier',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'herbesaromatiques',
        ItemReceipe2Amount = 1,
        ItemToGive = 'gibierherbe',
        Amount = 1,
        WorkingTime = 5,
        label = 'Viande aux herbes',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_mature_venison.png', text = "Venaison",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_creeping_thyme.png', text = "Herbes aromatiques",count = "x1"}}
    },
    ['viandeherbe'] = {
        type = 'saloon',
        Itemtocraft = 2,
        ItemReceipe1Name = 'viande',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'herbesaromatiques',
        ItemReceipe2Amount = 1,
        ItemToGive = 'viandeherbe',
        Amount = 1,
        WorkingTime = 5,
        label = 'Viande aux herbes',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_prime_beef.png', text = "Viande",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_creeping_thyme.png', text = "Herbes aromatiques",count = "x1"}}
    },
    ['volailleherbe'] = {
        type = 'saloon',
        Itemtocraft = 2,
        ItemReceipe1Name = 'viandevolaille',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'herbesaromatiques',
        ItemReceipe2Amount = 1,
        ItemToGive = 'volailleherbe',
        Amount = 1,
        WorkingTime = 5,
        label = 'Viande aux herbes',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_gamey_bird.png', text = "Volaille",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_creeping_thyme.png', text = "Herbes aromatiques",count = "x1"}}
    },
}

Config.ImportPoint = {
    [1]= vector3(2572.136, -1501.026, 45.96986), --- st denis
    [2]= vector3(-825.8802, -1241.919, 43.53639), -- bla
}

Config.Import = {
    ["beer"] = {label= "Bière", price = 0.1, saloon = {"saloon_faubourg", "saloon_kala"}},
    ["gin"] = {label= "Gin", price = 0.30, saloon = {"saloon_faubourg"}},
    ["mezcal"] = {label= "Mezcal", price = 0.30, saloon = {"saloon_kala"}},
    ["dirty_whiskey"] = {label= "Mauvais Whiskey", price = 0.2, saloon = {"saloon_faubourg", "saloon_kala"}},
    ["good_whisky"] = {label= "Bon Whiskey", price = 0.35, saloon = {"saloon_faubourg", "saloon_kala"}},
    ["lemonade"] = {label= "Limonade", price = 0.2, saloon = {"saloon_faubourg", "saloon_kala"}},
}