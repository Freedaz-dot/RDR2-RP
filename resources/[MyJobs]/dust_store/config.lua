Config = {}

Config.Jobs = {
    [1] = "store_straw",
}

Config.WorkingTime = 5000
Config.DistanceToInteract = 1.5

Config.Atelier = vector3(-1789.997, -387.5353, 156.1007) -- Creer toutes les balles
Config.AnimDict = "amb_work@world_human_hammer@table@male_a@trans"
Config.CraftAnim = {
    "base_trans_base",
}


Config.BuyPain = {
    [1] = vector3(-816.855, -1226.588, 43.58243), -- bla
    [2] = vector3(2842.779, -1224.614, 47.62225), -- st denis
}

Config.Market = {
    ["bread"] = {label = "Pain", price = 0.50},
    ["water"] = {label = "Eau", price = 0.30}
}

Config.CraftingsReceipe = {
    ['soupe'] = {
        type = 'epicerie',
        Itemtocraft = 4,
        ItemReceipe1Name = 'Corn',
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
    ['Ragoutgibier'] = {
        type = 'epicerie',
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
    ['Ragoutviande'] = {
        type = 'epicerie',
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
    ['Ragoutvolaille'] = {
        type = 'epicerie',
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
    ['tourtegibier'] = {
        type = 'epicerie',
        Itemtocraft = 4,
        ItemReceipe1Name = 'viandegibier',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'farine',
        ItemReceipe2Amount = 1,
        ItemReceipe3Name = 'Saugeducolibri',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'charbon',
        ItemReceipe4Amount = 1,
        ItemToGive = 'tourtegibier',
        Amount = 1,
        WorkingTime = 5,
        label = 'Tourte à la viande',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_mature_venison.png', text = "Venaison",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/flour.png', text = "Farine",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_hummingbird_sage.png', text = "Sauge du Colibri",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
    },
    ['tourteviande'] = {
        type = 'epicerie',
        Itemtocraft = 4,
        ItemReceipe1Name = 'viande',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'farine',
        ItemReceipe2Amount = 1,
        ItemReceipe3Name = 'Saugeducolibri',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'charbon',
        ItemReceipe4Amount = 1,
        ItemToGive = 'tourteviande',
        Amount = 1,
        WorkingTime = 5,
        label = 'Tourte à la viande',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_prime_beef.png', text = "Viande Crue",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/flour.png', text = "Farine",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_hummingbird_sage.png', text = "Sauge du Colibri",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
    },
    ['tourtevolaille'] = {
        type = 'epicerie',
        Itemtocraft = 4,
        ItemReceipe1Name = 'viandevolaille',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'farine',
        ItemReceipe2Amount = 1,
        ItemReceipe3Name = 'Saugeducolibri',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'charbon',
        ItemReceipe4Amount = 1,
        ItemToGive = 'tourtevolaille',
        Amount = 1,
        WorkingTime = 5,
        label = 'Tourte à la viande',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_gamey_bird.png', text = "Volaille",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/flour.png', text = "Farine",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_hummingbird_sage.png', text = "Sauge du Colibri",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
    },
    ['brochettegibier'] = {
        type = 'epicerie',
        Itemtocraft = 3,
        ItemReceipe1Name = 'viandegibier',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'petitbois',
        ItemReceipe2Amount = 1,
        ItemReceipe3Name = 'charbon',
        ItemReceipe3Amount = 1,
        ItemToGive = 'brochettegibier',
        Amount = 1,
        WorkingTime = 5,
        label = 'Brochette',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_mature_venison.png', text = "Venaison",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/stick.png', text = "Petit Bois",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
    },
    ['brochetteviande'] = {
        type = 'epicerie',
        Itemtocraft = 3,
        ItemReceipe1Name = 'viande',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'petitbois',
        ItemReceipe2Amount = 1,
        ItemReceipe3Name = 'charbon',
        ItemReceipe3Amount = 1,
        ItemToGive = 'brochetteviande',
        Amount = 1,
        WorkingTime = 5,
        label = 'Brochette',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_prime_beef.png', text = "Viande Crue",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/stick.png', text = "Petit Bois",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
    },
    ['brochettevolaille'] = {
        type = 'epicerie',
        Itemtocraft = 3,
        ItemReceipe1Name = 'viandevolaille',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'petitbois',
        ItemReceipe2Amount = 1,
        ItemReceipe3Name = 'charbon',
        ItemReceipe3Amount = 1,
        ItemToGive = 'brochettevolaille',
        Amount = 1,
        WorkingTime = 5,
        label = 'Brochette',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_gamey_bird.png', text = "Volaille",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/stick.png', text = "Petit Bois",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
    },
    ['pain'] = {
        type = 'epicerie',
        Itemtocraft = 2,
        ItemReceipe1Name = 'farine',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'charbon',
        ItemReceipe2Amount = 1,
        ItemToGive = 'pain',
        Amount = 5,
        WorkingTime = 2,
        label = 'Pain',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/flour.png', text = "Farine",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
    },
    ['gibierherbe'] = {
        type = 'epicerie',
        Itemtocraft = 3,
        ItemReceipe1Name = 'viandevolaille',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'Saugeducolibri',
        ItemReceipe2Amount = 1,
        ItemReceipe3Name = 'charbon',
        ItemReceipe3Amount = 1,
        ItemToGive = 'gibierherbe',
        Amount = 1,
        WorkingTime = 5,
        label = 'Viande aux herbes',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_gamey_bird.png', text = "Volaille",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_hummingbird_sage.png', text = "Sauge du Colibri",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
    },
    ['viandeherbe'] = {
        type = 'epicerie',
        Itemtocraft = 3,
        ItemReceipe1Name = 'viandevolaille',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'Saugeducolibri',
        ItemReceipe2Amount = 1,
        ItemReceipe3Name = 'charbon',
        ItemReceipe3Amount = 1,
        ItemToGive = 'viandeherbe',
        Amount = 1,
        WorkingTime = 5,
        label = 'Viande aux herbes',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_gamey_bird.png', text = "Volaille",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_hummingbird_sage.png', text = "Sauge du Colibri",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
    },
    ['volailleherbe'] = {
        type = 'epicerie',
        Itemtocraft = 3,
        ItemReceipe1Name = 'viandevolaille',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'Saugeducolibri',
        ItemReceipe2Amount = 1,
        ItemReceipe3Name = 'charbon',
        ItemReceipe3Amount = 1,
        ItemToGive = 'volailleherbe',
        Amount = 1,
        WorkingTime = 5,
        label = 'Viande aux herbes',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_meat_gamey_bird.png', text = "Volaille",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_hummingbird_sage.png', text = "Sauge du Colibri",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
    },
    ['gateau'] = {
        type = 'epicerie',
        Itemtocraft = 4,
        ItemReceipe1Name = 'bouteillelait',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'farine',
        ItemReceipe2Amount = 1,
        ItemReceipe3Name = 'sucre',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'charbon',
        ItemReceipe4Amount = 1,
        ItemToGive = 'gateau',
        Amount = 1,
        WorkingTime = 5,
        label = 'Gâteau',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_offal.png', text = "Bouteille de lait",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/flour.png', text = "Farine",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/sugar.png', text = "Sucre",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
    },
    ['tartemyrtille'] = {
        type = 'epicerie',
        Itemtocraft = 4,
        ItemReceipe1Name = 'bouteillelait',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'farine',
        ItemReceipe2Amount = 1,
        ItemReceipe3Name = 'sucre',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'charbon',
        ItemReceipe4Amount = 1,
        ItemToGive = 'tartemyrtille',
        Amount = 1,
        WorkingTime = 5,
        label = 'Tarte au myrtille',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_offal.png', text = "Bouteille de lait",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/flour.png', text = "Farine",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_red_raspberry.png', text = "Myrtille",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
    },
    ['soupechampignon'] = {
        type = 'epicerie',
        Itemtocraft = 4,
        ItemReceipe1Name = 'Boletbai',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'Coulemelle',
        ItemReceipe2Amount = 1,
        ItemReceipe3Name = 'Chanterelle',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'charbon',
        ItemReceipe4Amount = 1,
        ItemToGive = 'soupechampignon',
        Amount = 1,
        WorkingTime = 5,
        label = 'Soupe de champignon',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_bay_bolete.png', text = "Boletbai",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_parasol_mushroom.png', text = "Coulemelle",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_chanterelles.png', text = "Chanterelle",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x1"}}
    },
    
    
}