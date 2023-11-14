Config = {}

Config.RagdollKey = 0xF3830D8E 
Config.HandsUpKey = 0x8CC9CD42 -- x 
Config.MenuKey = 0x8AAA0AD4 -- b

Config.HandsUpAnim = {
[1] = 	{dict= "mech_loco_f@generic@reaction@handsup@unarmed@normal", anim = "loop"},
[2] = 	{dict= "mech_loco_f@generic@reaction@handsup@unarmed@tough", anim = "loop"},
[3] = 	{dict= "mech_loco_m@generic@reaction@handsup@unarmed@normal", anim = "loop"},
[4] = 	{dict= "mech_loco_m@generic@reaction@handsup@unarmed@tough", anim = "loop"},
[5] = 	{dict= "script_common@other@unapproved", anim = "guard_handsup_loop"},
[6] = 	{dict= "script_proc@robberies@shop@strgen", anim ="handsup_register"},
}

Config.AnimDict = "amb_work@world_human_hammer@table@male_a@trans"
Config.CraftAnim = {
    "base_trans_base",
}

Config.CraftingsReceipe = {
    ['bow'] = {
        label = "Arc",
        desc = "1 Petit Bois + 1 Fil",
        ItemReceipe1Name = 'petitbois',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'fil',
        ItemReceipe2Amount = 1,
        ItemToGive = 'WEAPON_BOW',
        Amount = 1,
        WorkingTime = 5,
    },
    ['arrow'] = {
        label = "10 Flèches",
        desc = "1 Petit Bois + 1 silex",
        ItemReceipe1Name = 'petitbois',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'silex',
        ItemReceipe2Amount = 1,
        ItemToGive = 'ammo_arrow',
        Amount = 10,
        WorkingTime = 5,
    },
    ['spit'] = {
        label = "Feu de camp",
        desc = "3 Petits Bois + 3 Silex",
        ItemReceipe1Name = 'petitbois',
        ItemReceipe1Amount = 3,
        ItemReceipe2Name = 'silex',
        ItemReceipe2Amount = 3,
        ItemToGive = 'spit',
        Amount = 1,
        WorkingTime = 5,
    },
}

Config.WorkingTime = 5000
Config.BlipSprite = -2039778370

Config.PetitBois = {
    [1] = vector3(1378.687, -987.7832, 50.89909), --- Rhodes 
    [2] = vector3(1876.99, -63.12452, 54.71591), --- emerald
    [3] = vector3(-1918.058, -1195.498, 79.22073), --- bw
    [4] = vector3(-1372.065, 552.1296, 106.9494), --- straw

}

Config.Silex = {
    [1] = vector3(717.4515, -763.868, 45.52427), --- rhodes
    [2] = vector3(1281.436, 858.6588, 102.7366), --- emerald
    [3] = vector3(-1384.463, -756.5168, 93.43803), --- bw
    [4] = vector3(-1570.97, 789.9352, 140.7988), --- straw
}

Config.Fil = {
    [1] = vector3(-758.3597, -1241.219, 46.1843), --- bw
    [2] = vector3(1404.149, -1303.683, 77.80862), --- Rhodes
}

Config.Bois = {
    [1] = vector3(-1833.874, -1786.273, 106.6543), --- bla
    [2] = vector3(1198.268, -125.9232, 100.224), --- emerald

}

Config.SellDict = "script_common@mth_generic_enters@give_item_satchel@rhand@generic@in_place"
Config.SellAnim = "enter_rf"


Config.SellTime = 10000

Config.Cooldown = 60000

Config.Price = {
    [GetHashKey("Strawberry")] = {
        ["moonshine"] = {label="Moonshine", price = 0.8},
        ["laitpavot"] = {label="Lait de Pavot", price = 1.3},
        ["pipeopium"] = {label="Pipe d'opium", price = 0.7},
        ["cigaretteopium"] = {label="Cigarette d'opium", price = 1},
        ["pavot"] = {label="Pavot", price = 0.4},
        ["cuir"] = {label="Cuir", price = 0.06},
        ["pepiteor"] = {label="Pépite d'or", price = 0.06},
        ["corne"] = {label="Corne", price = 0.08},
        ["graisse"] = {label="Morceau de gras", price = 0.06},
        ["petitefourrure"] = {label="Petite fourrure", price = 0.08},
        ["peauecailles"] = {label="Peau à écailles", price = 0.08},
        ["plume"] = {label="Plume", price = 0.08}, 
        ["griffe"] = {label="Griffe", price = 0.07},
        ["bec"] = {label="Bec", price = 0.10},
        ["pincecrabe"] = {label="Pince de crabe", price = 0.10},
        ["serre"] = {label="Serre", price = 0.10},
        ["boiscerf"] = {label="Bois de cerf", price = 0.10},
        ["queuerenard"] = {label="Queue de renard", price = 0.25},
        ["peauvisqueuse"] = {label="Peau visqueuse", price = 0.08},
        ["dentrongeur"] = {label="Dent de rongeur", price = 0.08},
        ["defense"] = {label="Défense", price = 0.08},
        ["queuedecastor"] = {label="Queue de castor", price = 0.3},
        ["patteours"] = {label="Patte d'ours", price = 0.7},
        ["crocdecroco"] = {label="Dent de crocodile", price = 0.15},
        ["carapace"] = {label="Carapace", price = 0.10},
        ["peauserpent"] = {label="Peau de serpent", price = 0.13},
        ["croc"] = {label="Croc de loup", price = 0.08},
        ["barbane"] = {label="Bardane", price = 0.08},
        ["saugeducolibri"] = {label="Sauge du Colibri", price = 0.08},
        ["menthesauvage"] = {label="Menthe sauvage", price = 0.08},
        ["coulemelle"] = {label="Coulemelle", price = 0.08},
        ["asclepiade"] = {label="Asclépiade", price = 0.08},
        ["ginseng"] = {label="Ginseng", price = 0.08},
        ["millefeuille"] = {label="Millefeuille", price = 0.08},
        ["pouledesbois"] = {label="Poule des bois", price = 0.08},
        ["saugedudesert"] = {label="Sauge du desert", price = 0.08},
        ["jonccommun"] = {label="Jonc Commun", price = 0.08},
        ["achillevisqueuse"] = {label="Achillé Visqueuse", price = 0.08},
        ["camomillesauvage"] = {label="Camomille Sauvage", price = 0.08},
        ["boletbai"] = {label="Bolet-Baï", price = 0.08},
        ["baiedegaultherie"] = {label="Baie de Gaultherie", price = 0.08},
        ["concoctionendurance"] = {label="Essence de térébenthine", price = 1},
        ["concoctionanesthesiante"] = {label="Emulsion Anesthésiante", price = 1},
        ["concoctioncoagulation"] = {label="Solution Coagulante", price = 1},
        ["semencedetoreau"] = {label="Semence bovine", price = 0.4},
        ["patate"] = {label="Patate", price = 0.10},
        ["Corn"] = {label="Maïs", price = 0.10},
    },
    [GetHashKey("Blackwater")] = {
        ["moonshine"] = {label="Moonshine", price = 0.8},
        ["laitpavot"] = {label="Lait de Pavot", price = 1.3},
        ["pipeopium"] = {label="Pipe d'opium", price = 0.7},
        ["cigaretteopium"] = {label="Cigarette d'opium", price = 1},
        ["pavot"] = {label="Pavot", price = 0.4},
        ["cuir"] = {label="Cuir", price = 0.06},
        ["pepiteor"] = {label="Pépite d'or", price = 0.06},
        ["corne"] = {label="Corne", price = 0.08},
        ["graisse"] = {label="Morceau de gras", price = 0.06},
        ["petitefourrure"] = {label="Petite fourrure", price = 0.08},
        ["peauecailles"] = {label="Peau à écailles", price = 0.08},
        ["plume"] = {label="Plume", price = 0.08}, 
        ["griffe"] = {label="Griffe", price = 0.07},
        ["bec"] = {label="Bec", price = 0.10},
        ["pincecrabe"] = {label="Pince de crabe", price = 0.10},
        ["serre"] = {label="Serre", price = 0.10},
        ["boiscerf"] = {label="Bois de cerf", price = 0.10},
        ["queuerenard"] = {label="Queue de renard", price = 0.25},
        ["peauvisqueuse"] = {label="Peau visqueuse", price = 0.08},
        ["dentrongeur"] = {label="Dent de rongeur", price = 0.08},
        ["defense"] = {label="Défense", price = 0.08},
        ["queuedecastor"] = {label="Queue de castor", price = 0.3},
        ["patteours"] = {label="Patte d'ours", price = 0.7},
        ["crocdecroco"] = {label="Dent de crocodile", price = 0.15},
        ["carapace"] = {label="Carapace", price = 0.10},
        ["peauserpent"] = {label="Peau de serpent", price = 0.13},
        ["croc"] = {label="Croc de loup", price = 0.08},
        ["barbane"] = {label="Bardane", price = 0.08},
        ["saugeducolibri"] = {label="Sauge du Colibri", price = 0.08},
        ["menthesauvage"] = {label="Menthe sauvage", price = 0.08},
        ["coulemelle"] = {label="Coulemelle", price = 0.08},
        ["asclepiade"] = {label="Asclépiade", price = 0.08},
        ["ginseng"] = {label="Ginseng", price = 0.08},
        ["millefeuille"] = {label="Millefeuille", price = 0.08},
        ["pouledesbois"] = {label="Poule des bois", price = 0.08},
        ["saugedudesert"] = {label="Sauge du desert", price = 0.08},
        ["jonccommun"] = {label="Jonc Commun", price = 0.08},
        ["achillevisqueuse"] = {label="Achillé Visqueuse", price = 0.08},
        ["camomillesauvage"] = {label="Camomille Sauvage", price = 0.08},
        ["boletbai"] = {label="Bolet-Baï", price = 0.08},
        ["baiedegaultherie"] = {label="Baie de Gaultherie", price = 0.08},
        ["concoctionendurance"] = {label="Essence de térébenthine", price = 1},
        ["concoctionanesthesiante"] = {label="Emulsion Anesthésiante", price = 1},
        ["concoctioncoagulation"] = {label="Solution Coagulante", price = 1},
        ["semencedetoreau"] = {label="Semence bovine", price = 0.4},
        ["patate"] = {label="Patate", price = 0.10},
        ["Corn"] = {label="Maïs", price = 0.10},
    },
    [GetHashKey("Rhodes")] = {
        ["moonshine"] = {label="Moonshine", price = 1},
        ["laitpavot"] = {label="Lait de Pavot", price = 1.7},
        ["pipeopium"] = {label="Pipe d'opium", price = 1.1},
        ["cigaretteopium"] = {label="Cigarette d'opium", price = 1.4},
        ["pavot"] = {label="Pavot", price = 0.5},
        ["cuir"] = {label="Cuir", price = 0.07},
        ["pepiteor"] = {label="Pépite d'or", price = 0.07},
        ["corne"] = {label="Corne", price = 0.09},
        ["graisse"] = {label="Morceau de gras", price = 0.07},
        ["petitefourrure"] = {label="Petite fourrure", price = 0.09},
        ["peauecailles"] = {label="Peau à écailles", price = 0.09},
        ["plume"] = {label="Plume", price = 0.09}, 
        ["griffe"] = {label="Griffe", price = 0.08},
        ["bec"] = {label="Bec", price = 0.12},
        ["pincecrabe"] = {label="Pince de crabe", price = 0.12},
        ["serre"] = {label="Serre", price = 0.12},
        ["boiscerf"] = {label="Bois de cerf", price = 0.12},
        ["queuerenard"] = {label="Queue de renard", price = 0.3},
        ["peauvisqueuse"] = {label="Peau visqueuse", price = 0.1},
        ["dentrongeur"] = {label="Dent de rongeur", price = 0.1},
        ["defense"] = {label="Défense", price = 0.1},
        ["queuedecastor"] = {label="Queue de castor", price = 0.4},
        ["patteours"] = {label="Patte d'ours", price = 1},
        ["crocdecroco"] = {label="Dent de crocodile", price = 0.2},
        ["carapace"] = {label="Carapace", price = 0.12},
        ["peauserpent"] = {label="Peau de serpent", price = 0.15},
        ["croc"] = {label="Croc de loup", price = 0.1},
        ["barbane"] = {label="Bardane", price = 0.10},
        ["saugeducolibri"] = {label="Sauge du Colibri", price = 0.10},
        ["menthesauvage"] = {label="Menthe sauvage", price = 0.10},
        ["coulemelle"] = {label="Coulemelle", price = 0.10},
        ["asclepiade"] = {label="Asclépiade", price = 0.10},
        ["ginseng"] = {label="Ginseng", price = 0.10},
        ["millefeuille"] = {label="Millefeuille", price = 0.10},
        ["pouledesbois"] = {label="Poule des bois", price = 0.10},
        ["saugedudesert"] = {label="Sauge du desert", price = 0.10},
        ["jonccommun"] = {label="Jonc Commun", price = 0.10},
        ["achillevisqueuse"] = {label="Achillé Visqueuse", price = 0.10},
        ["camomillesauvage"] = {label="Camomille Sauvage", price = 0.10},
        ["boletbai"] = {label="Bolet-Baï", price = 0.10},
        ["baiedegaultherie"] = {label="Baie de Gaultherie", price = 0.10},
        ["concoctionendurance"] = {label="Essence de térébenthine", price = 1},
        ["concoctionanesthesiante"] = {label="Emulsion Anesthésiante", price = 1},
        ["concoctioncoagulation"] = {label="Solution Coagulante", price = 1},
        ["semencedetoreau"] = {label="Semence bovine", price = 0.4},
        ["patate"] = {label="Patate", price = 0.12},
        ["Corn"] = {label="Maïs", price = 0.12},
    },
    [GetHashKey("StDenis")] = {
        ["moonshine"] = {label="Moonshine", price = 0.9},
        ["laitpavot"] = {label="Lait de Pavot", price = 1.3},
        ["pipeopium"] = {label="Pipe d'opium", price = 0.9},
        ["cigaretteopium"] = {label="Cigarette d'opium", price = 1.1},
        ["pavot"] = {label="Pavot", price = 0.4},
        ["cuir"] = {label="Cuir", price = 0.06},
        ["pepiteor"] = {label="Pépite d'or", price = 0.06},
        ["corne"] = {label="Corne", price = 0.08},
        ["graisse"] = {label="Morceau de gras", price = 0.07},
        ["petitefourrure"] = {label="Petite fourrure", price = 0.08},
        ["peauecailles"] = {label="Peau à écailles", price = 0.08},
        ["plume"] = {label="Plume", price = 0.08}, 
        ["griffe"] = {label="Griffe", price = 0.08},
        ["bec"] = {label="Bec", price = 0.12},
        ["pincecrabe"] = {label="Pince de crabe", price = 0.10},
        ["serre"] = {label="Serre", price = 0.10},
        ["boiscerf"] = {label="Bois de cerf", price = 0.10},
        ["queuerenard"] = {label="Queue de renard", price = 0.25},
        ["peauvisqueuse"] = {label="Peau visqueuse", price = 0.08},
        ["dentrongeur"] = {label="Dent de rongeur", price = 0.08},
        ["defense"] = {label="Défense", price = 0.08},
        ["queuedecastor"] = {label="Queue de castor", price = 0.35},
        ["patteours"] = {label="Patte d'ours", price = 0.8},
        ["crocdecroco"] = {label="Dent de crocodile", price = 0.15},
        ["carapace"] = {label="Carapace", price = 0.10},
        ["peauserpent"] = {label="Peau de serpent", price = 0.15},
        ["croc"] = {label="Croc de loup", price = 0.1},
        ["barbane"] = {label="Bardane", price = 0.10},
        ["saugeducolibri"] = {label="Sauge du Colibri", price = 0.10},
        ["menthesauvage"] = {label="Menthe sauvage", price = 0.10},
        ["coulemelle"] = {label="Coulemelle", price = 0.10},
        ["asclepiade"] = {label="Asclépiade", price = 0.10},
        ["ginseng"] = {label="Ginseng", price = 0.10},
        ["millefeuille"] = {label="Millefeuille", price = 0.10},
        ["pouledesbois"] = {label="Poule des bois", price = 0.10},
        ["saugedudesert"] = {label="Sauge du desert", price = 0.10},
        ["jonccommun"] = {label="Jonc Commun", price = 0.10},
        ["achillevisqueuse"] = {label="Achillé Visqueuse", price = 0.10},
        ["camomillesauvage"] = {label="Camomille Sauvage", price = 0.10},
        ["boletbai"] = {label="Bolet-Baï", price = 0.10},
        ["baiedegaultherie"] = {label="Baie de Gaultherie", price = 0.10},
        ["concoctionendurance"] = {label="Essence de térébenthine", price = 1},
        ["concoctionanesthesiante"] = {label="Emulsion Anesthésiante", price = 1},
        ["concoctioncoagulation"] = {label="Solution Coagulante", price = 1},
        ["semencedetoreau"] = {label="Semence bovine", price = 0.3},
        ["patate"] = {label="Patate", price = 0.12},
        ["Corn"] = {label="Maïs", price = 0.12},
    },
}

