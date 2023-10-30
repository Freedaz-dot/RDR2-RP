Config = {}

Config.Jobs = {
    [1] = "doctor",
    [2] = "doctor_bla",
    [3] = "doctor_stdenis",
    [4] = "doctor_CG",
    [5] = "doctor_DM",
    [6] = "doctor_NC",
    [7] = "doctor_AL",
    [8] = "doctor_CP",
    [9] = "doctor_GB",
}

Config.AnimDict = "amb_work@world_human_seat_chair@mortar_pestle@mortar@female_a@base"
Config.CraftAnim = "base"

Config.DistanceToInteract = 1.7

Config.WorkingTime = 5000
Config.Atelier = {
    vector3(2721.123, -1226.798, 49.36772), -- stdenis
    vector3(2629.656, -1354.371, 48.04771), -- apo st denis
    vector3(-782.6106, -1306.656, 42.79617), --- bla
    vector3(-155.4652, 1491.255, 115.1591), ---- indien
}

Config.ItemMortier = "mortier"

Config.CraftingsReceipe = {
    ['bandagepatate'] = {
        type = 'medecin',
        Itemtocraft = 2,
        ItemReceipe1Name = 'bandage',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'patate',
        ItemReceipe2Amount = 3,
        ItemToGive = 'bandagepatate',
        Amount = 1,
        WorkingTime = 5,
        label = 'Bandage à la patate',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/bandage.png', text = "Bandage",count = "x1"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_wild_feverfew.png', text = "Patate",count = "x3"}}
    },
    ['bandagecharbon'] = {
        type = 'medecin',
        Itemtocraft = 2,
        ItemReceipe1Name = 'bandage',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'charbon',
        ItemReceipe2Amount = 10,
        ItemToGive = 'bandagecharbon',
        Amount = 1,
        WorkingTime = 5,
        label = 'Bandage au charbon',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/bandage.png', text = "Bandage",count = "x1"},{src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x10"}}
    },
    ['concoctionenduranceun'] = {
        type = 'medecin',
        Itemtocraft = 4,
        ItemReceipe1Name = 'saugeducolibri',
        ItemReceipe1Amount = 3,
        ItemReceipe2Name = 'myrtille',
        ItemReceipe2Amount = 4,
        ItemReceipe3Name = 'cafe',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'sucre',
        ItemReceipe4Amount = 1,
        ItemToGive = 'concoctionendurance',
        Amount = 1,
        WorkingTime = 5,
        label = 'Essence de térébenthine',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_hummingbird_sage.png', text = "Sauge du colibri",count = "x3"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_red_raspberry.png', text = "Myrtille",count = "x4"},{src = 'nui://redemrp_inventory/html/items/consumable_coffee.png', text = "cafe",count = "x1"},{src = 'nui://redemrp_inventory/html/items/sugar.png', text = "sucre",count = "x1"}}
    },
    ['concoctionendurancedeux'] = {
        type = 'medecin',
        Itemtocraft = 4,
        ItemReceipe1Name = 'foutrebovin',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'myrtille',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'pouledesbois',
        ItemReceipe3Amount = 4,
        ItemReceipe4Name = 'sucre',
        ItemReceipe4Amount = 1,
        ItemToGive = 'concoctionendurance',
        Amount = 1,
        WorkingTime = 5,
        label = 'Essence de térébenthine',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/water.png', text = "Semence bovine",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_red_raspberry.png', text = "Myrtille",count = "x3"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_rams_head.png', text = "Poule des bois",count = "x4"},{src = 'nui://redemrp_inventory/html/items/sugar.png', text = "sucre",count = "x1"}}
    },
    ['concoctionendurancetrois'] = {
        type = 'medecin',
        Itemtocraft = 4,
        ItemReceipe1Name = 'ginseng',
        ItemReceipe1Amount = 4,
        ItemReceipe2Name = 'chanterelle',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'Mais',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'sucre',
        ItemReceipe4Amount = 1,
        ItemToGive = 'concoctionendurance',
        Amount = 1,
        WorkingTime = 5,
        label = 'Essence de térébenthine',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_american_ginseng.png', text = "Ginseng",count = "x4"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_chanterelles.png', text = "Chanterelle",count = "x3"},{src = 'nui://redemrp_inventory/html/items/consumable_corn.png', text = "Maïs",count = "x1"},{src = 'nui://redemrp_inventory/html/items/sugar.png', text = "sucre",count = "x1"}}
    },
    ['concoctionanesthesianteun'] = {
        type = 'medecin',
        Itemtocraft = 4,
        ItemReceipe1Name = 'barbane',
        ItemReceipe1Amount = 3,
        ItemReceipe2Name = 'menthesauvage',
        ItemReceipe2Amount = 4,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'bec',
        ItemReceipe4Amount = 1,
        ItemToGive = 'concoctionanesthesiante',
        Amount = 1,
        WorkingTime = 5,
        label = "Emulsion Anesthésiante",
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_burdock_root.png', text = "Bardane",count = "x3"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_wild_mint.png', text = "Menthe sauvage",count = "x4"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/generic_animal_beak.png', text = "Bec",count = "x1"}}
    },
    ['concoctionanesthesiantedeux'] = {
        type = 'medecin',
        Itemtocraft = 4,
        ItemReceipe1Name = 'coulemelle',
        ItemReceipe1Amount = 4,
        ItemReceipe2Name = 'boletbai',
        ItemReceipe2Amount = 5,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'boiscerf',
        ItemReceipe4Amount = 1,
        ItemToGive = 'concoctionanesthesiante',
        Amount = 1,
        WorkingTime = 5,
        label = 'Emulsion Anesthésiante',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_parasol_mushroom.png', text = "Coulemelle",count = "x4"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_bay_bolete.png', text = "Bolet-Baï",count = "x5"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/provision_buck_antlers.png', text = "Bois de cerf",count = "x1"}}
    },
    ['concoctionanesthesiantetrois'] = {
        type = 'medecin',
        Itemtocraft = 4,
        ItemReceipe1Name = 'camomillesauvage',
        ItemReceipe1Amount = 3,
        ItemReceipe2Name = 'chanterelle',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'corne',
        ItemReceipe4Amount = 2,
        ItemToGive = 'concoctionanesthesiante',
        Amount = 1,
        WorkingTime = 5,
        label = 'Emulsion Anesthésiante',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_wild_feverfew.png', text = "Camomille sauvage",count = "x3"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_chanterelles.png', text = "Chanterelle",count = "x3"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/generic_animal_horn.png', text = "Corne",count = "x2"}}
    },
    ['concoctioncoagulationun'] = {
        type = 'medecin',
        Itemtocraft = 4,
        ItemReceipe1Name = 'coulemelle',
        ItemReceipe1Amount = 4,
        ItemReceipe2Name = 'asclepiade',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'boiscerf',
        ItemReceipe4Amount = 1,
        ItemToGive = 'concoctioncoagulation',
        Amount = 1,
        WorkingTime = 5,
        label = 'Solution Coagulante',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_parasol_mushroom.png', text = "Coulemelle",count = "x4"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_milkweed.png', text = "Asclépiade",count = "x3"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/provision_buck_antlers.png', text = "Bois de cerf",count = "x1"}}
    },
    ['concoctioncoagulationdeux'] = {
        type = 'medecin',
        Itemtocraft = 4,
        ItemReceipe1Name = 'baiedegaultherie',
        ItemReceipe1Amount = 3,
        ItemReceipe2Name = 'achillevisqueuse',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'griffe',
        ItemReceipe4Amount = 1,
        ItemToGive = 'concoctioncoagulation',
        Amount = 1,
        WorkingTime = 5,
        label = 'Solution Coagulante',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_wintergreen_berry.png', text = "Baie de gaultherie",count = "x3"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_english_mace.png', text = "Achillé visqueuse",count = "x3"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/provision_bobcat_claws.png', text = "griffe",count = "x1"}}
    },
    ['concoctioncoagulationtrois'] = {
        type = 'medecin',
        Itemtocraft = 4,
        ItemReceipe1Name = 'millefeuille',
        ItemReceipe1Amount = 4,
        ItemReceipe2Name = 'saugeducolibri',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'corne',
        ItemReceipe4Amount = 2,
        ItemToGive = 'concoctioncoagulation',
        Amount = 1,
        WorkingTime = 5,
        label = 'Solution Coagulante',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_yarrow.png', text = "Millefeuille",count = "x4"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_hummingbird_sage.png', text = "Sauge du colibri",count = "x3"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/generic_animal_horn.png', text = "Corne",count = "x2"}}
    },
    ['poisonest'] = {
        type = 'medecin',
        Itemtocraft = 4,
        ItemReceipe1Name = 'laurierrose',
        ItemReceipe1Amount = 4,
        ItemReceipe2Name = 'saugedudesert',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'glandevenin',
        ItemReceipe3Amount = 2,
        ItemReceipe4Name = 'boiscerf',
        ItemReceipe4Amount = 1,
        ItemToGive = 'poison',
        Amount = 1,
        WorkingTime = 5,
        label = 'Poison',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_oleander_sage.png', text = "Laurier-rose",count = "x4"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_desert_sage.png', text = "Sauge du desert",count = "x3"},{src = 'nui://redemrp_inventory/html/items/provision_panther_eye.png', text = "Glande",count = "x2"},{src = 'nui://redemrp_inventory/html/items/provision_buck_antlers.png', text = "Bois de cerf",count = "x1"}}
    },
    ['poisonouest'] = {
        type = 'medecin',
        Itemtocraft = 4,
        ItemReceipe1Name = 'champignontoxique',
        ItemReceipe1Amount = 4,
        ItemReceipe2Name = 'saugedudesert',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'glandevenin',
        ItemReceipe3Amount = 2,
        ItemReceipe4Name = 'boiscerf',
        ItemReceipe4Amount = 1,
        ItemToGive = 'poison',
        Amount = 1,
        WorkingTime = 5,
        label = 'Poison',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_parasol_mushroom.png', text = "Lépiote Brun-rose",count = "x4"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_desert_sage.png', text = "Sauge du desert",count = "x3"},{src = 'nui://redemrp_inventory/html/items/provision_panther_eye.png', text = "Glande",count = "x2"},{src = 'nui://redemrp_inventory/html/items/provision_buck_antlers.png', text = "Bois de cerf",count = "x1"}}
    },
    ['remedeinfectionun'] = {
        type = 'medecin',
        Itemtocraft = 3,
        ItemReceipe1Name = 'millefeuille',
        ItemReceipe1Amount = 3,
        ItemReceipe2Name = 'baiedegaultherie',
        ItemReceipe2Amount = 2,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemToGive = 'remedeinfection',
        Amount = 1,
        WorkingTime = 5,
        label = 'Concentré Antiputride',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_yarrow.png', text = "millefeuille",count = "x3"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_wintergreen_berry.png', text = "Baie de gaultherie",count = "x2"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"}}
    },
    ['remedeinfectiondeux'] = {
        type = 'medecin',
        Itemtocraft = 3,
        ItemReceipe1Name = 'asclepiade',
        ItemReceipe1Amount = 2,
        ItemReceipe2Name = 'achillevisqueuse',
        ItemReceipe2Amount = 2,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemToGive = 'remedeinfection',
        Amount = 1,
        WorkingTime = 5,
        label = 'Concentré Antiputride',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_milkweed.png', text = "Asclépiade",count = "x2"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_english_mace.png', text = "Achillé visqueuse",count = "x2"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"}}
    },
    ['remedeantidouleurun'] = {
        type = 'medecin',
        Itemtocraft = 3,
        ItemReceipe1Name = 'Coulemelle',
        ItemReceipe1Amount = 2,
        ItemReceipe2Name = 'camomillesauvage',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemToGive = 'remedeantidouleur',
        Amount = 1,
        WorkingTime = 5,
        label = 'Extrait de Camomille',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_parasol_mushroom.png', text = "Coulemelle",count = "x2"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_wild_feverfew.png', text = "Camomille sauvage",count = "x3"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"}}
    },
    ['remedeantidouleurdeux'] = {
        type = 'medecin',
        Itemtocraft = 3,
        ItemReceipe1Name = 'menthesauvage',
        ItemReceipe1Amount = 3,
        ItemReceipe2Name = 'camomillesauvage',
        ItemReceipe2Amount = 2,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemToGive = 'remedeantidouleur',
        Amount = 1,
        WorkingTime = 5,
        label = 'Extrait de Camomille',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_wild_mint.png', text = "Menthe saucage",count = "x3"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_wild_feverfew.png', text = "Camomille sauvage",count = "x2"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"}}
    },
    ['antidysentrie'] = {
        type = 'medecin',
        Itemtocraft = 4,
        ItemReceipe1Name = 'Chanterelle',
        ItemReceipe1Amount = 4,
        ItemReceipe2Name = 'pouledesbois',
        ItemReceipe2Amount = 2,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'jonccommun',
        ItemReceipe4Amount = 2,
        ItemToGive = 'antidysentrie',
        Amount = 1,
        WorkingTime = 5,
        label = 'Remède Digestif',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_chanterelles.png', text = "Chanterelle",count = "x4"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_rams_head.png', text = "Poule des bois",count = "x2"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_common_bulrush.png', text = "Jonc commun",count = "x2"}}
    },
    ['antidote'] = {
        type = 'medecin',
        Itemtocraft = 4,
        ItemReceipe1Name = 'millefeuille',
        ItemReceipe1Amount = 2,
        ItemReceipe2Name = 'baiedegaultherie',
        ItemReceipe2Amount = 2,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'barbane',
        ItemReceipe4Amount = 2,
        ItemToGive = 'antidote',
        Amount = 1,
        WorkingTime = 5,
        label = 'Antidote',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_yarrow.png', text = "Millefeuille",count = "x2"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_wintergreen_berry.png', text = "Baie de Gaultherie",count = "x2"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_burdock_root.png', text = "Bardane",count = "x2"}}
    },
    ['antivenin'] = {
        type = 'medecin',
        Itemtocraft = 4,
        ItemReceipe1Name = 'menthesauvage',
        ItemReceipe1Amount = 2,
        ItemReceipe2Name = 'ginseng',
        ItemReceipe2Amount = 1,
        ItemReceipe3Name = 'barbane',
        ItemReceipe3Amount = 2,
        ItemReceipe4Name = 'corne',
        ItemReceipe4Amount = 1,
        ItemToGive = 'antivenin',
        Amount = 1,
        WorkingTime = 5,
        label = 'Remède serpentin',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_wild_mint.png', text = "Menthe sauvage",count = "x2"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_american_ginseng.png', text = "Ginseng",count = "x1"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_burdock_root.png', text = "Bardane",count = "x1"},{src = 'nui://redemrp_inventory/html/items/generic_animal_horn.png', text = "Corne",count = "x1"}}
    },
    ['attelle'] = {
        type = 'medecin',
        Itemtocraft = 3,
        ItemReceipe1Name = 'cuir',
        ItemReceipe1Amount = 2,
        ItemReceipe2Name = 'petitbois',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'bandage',
        ItemReceipe3Amount = 1,
        ItemToGive = 'attelle',
        Amount = 1,
        WorkingTime = 5,
        label = 'Attelle',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_armadillo_skin.png', text = "Cuir",count = "x2"},{src = 'nui://redemrp_inventory/html/items/stick.png', text = "Petit Bois",count = "x3"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/bandage.png', text = "Bandage",count = "x1"}}
    },
    ['syringe'] = {
        type = 'medecin',
        Itemtocraft = 3,
        ItemReceipe1Name = 'barbane',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'baiedegaultherie',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemToGive = 'syringe',
        Amount = 1,
        WorkingTime = 5,
        label = 'Seringue de Digitaline',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_burdock_root.png', text = "Bardane",count = "x1"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_wintergreen_berry.png', text = "Baie de Gaultherie",count = "x3"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Morceau de gras",count = "x1"}}
    },
}
    ------- mortier apothicaire medecin itinérant ----------
Config.CraftingsReceipeMortier = {
    ['concoctionenduranceun'] = {
        type = 'mortier',
        Itemtocraft = 4,
        ItemReceipe1Name = 'saugeducolibri',
        ItemReceipe1Amount = 3,
        ItemReceipe2Name = 'myrtille',
        ItemReceipe2Amount = 4,
        ItemReceipe3Name = 'cafe',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'sucre',
        ItemReceipe4Amount = 1,
        ItemToGive = 'concoctionendurance',
        Amount = 1,
        WorkingTime = 5,
        label = 'Essence de térébenthine',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_hummingbird_sage.png', text = "Sauge du colibri",count = "x3"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_red_raspberry.png', text = "Myrtille",count = "x4"},{src = 'nui://redemrp_inventory/html/items/consumable_coffee.png', text = "cafe",count = "x1"},{src = 'nui://redemrp_inventory/html/items/sugar.png', text = "sucre",count = "x1"}}
    },
    ['concoctionendurancedeux'] = {
        type = 'mortier',
        Itemtocraft = 4,
        ItemReceipe1Name = 'foutrebovin',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'myrtille',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'pouledesbois',
        ItemReceipe3Amount = 4,
        ItemReceipe4Name = 'sucre',
        ItemReceipe4Amount = 1,
        ItemToGive = 'concoctionendurance',
        Amount = 1,
        WorkingTime = 5,
        label = 'Essence de térébenthine',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/water.png', text = "Semence bovine",count = "x1"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_red_raspberry.png', text = "Myrtille",count = "x3"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_rams_head.png', text = "Poule des bois",count = "x4"},{src = 'nui://redemrp_inventory/html/items/sugar.png', text = "sucre",count = "x1"}}
    },
    ['concoctionendurancetrois'] = {
        type = 'mortier',
        Itemtocraft = 4,
        ItemReceipe1Name = 'ginseng',
        ItemReceipe1Amount = 4,
        ItemReceipe2Name = 'chanterelle',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'Mais',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'sucre',
        ItemReceipe4Amount = 1,
        ItemToGive = 'concoctionendurance',
        Amount = 1,
        WorkingTime = 5,
        label = 'Essence de térébenthine',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_american_ginseng.png', text = "Ginseng",count = "x4"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_chanterelles.png', text = "Chanterelle",count = "x3"},{src = 'nui://redemrp_inventory/html/items/consumable_corn.png', text = "Maïs",count = "x1"},{src = 'nui://redemrp_inventory/html/items/sugar.png', text = "sucre",count = "x1"}}
    },
    ['concoctionanesthesianteun'] = {
        type = 'mortier',
        Itemtocraft = 4,
        ItemReceipe1Name = 'barbane',
        ItemReceipe1Amount = 3,
        ItemReceipe2Name = 'menthesauvage',
        ItemReceipe2Amount = 4,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'bec',
        ItemReceipe4Amount = 1,
        ItemToGive = 'concoctionanesthesiante',
        Amount = 1,
        WorkingTime = 5,
        label = "Emulsion Anesthésiante",
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_burdock_root.png', text = "Bardane",count = "x3"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_wild_mint.png', text = "Menthe sauvage",count = "x4"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/generic_animal_beak.png', text = "Bec",count = "x1"}}
    },
    ['concoctionanesthesiantedeux'] = {
        type = 'mortier',
        Itemtocraft = 4,
        ItemReceipe1Name = 'coulemelle',
        ItemReceipe1Amount = 4,
        ItemReceipe2Name = 'boletbai',
        ItemReceipe2Amount = 5,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'boiscerf',
        ItemReceipe4Amount = 1,
        ItemToGive = 'concoctionanesthesiante',
        Amount = 1,
        WorkingTime = 5,
        label = 'Emulsion Anesthésiante',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_parasol_mushroom.png', text = "Coulemelle",count = "x4"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_bay_bolete.png', text = "Bolet-Baï",count = "x5"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/provision_buck_antlers.png', text = "Bois de cerf",count = "x1"}}
    },
    ['concoctionanesthesiantetrois'] = {
        type = 'mortier',
        Itemtocraft = 4,
        ItemReceipe1Name = 'camomillesauvage',
        ItemReceipe1Amount = 3,
        ItemReceipe2Name = 'chanterelle',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'corne',
        ItemReceipe4Amount = 2,
        ItemToGive = 'concoctionanesthesiante',
        Amount = 1,
        WorkingTime = 5,
        label = 'Emulsion Anesthésiante',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_wild_feverfew.png', text = "Camomille sauvage",count = "x3"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_chanterelles.png', text = "Chanterelle",count = "x3"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/generic_animal_horn.png', text = "Corne",count = "x2"}}
    },
    ['concoctioncoagulationun'] = {
        type = 'mortier',
        Itemtocraft = 4,
        ItemReceipe1Name = 'coulemelle',
        ItemReceipe1Amount = 4,
        ItemReceipe2Name = 'asclepiade',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'boiscerf',
        ItemReceipe4Amount = 1,
        ItemToGive = 'concoctioncoagulation',
        Amount = 1,
        WorkingTime = 5,
        label = 'Solution Coagulante',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_parasol_mushroom.png', text = "Coulemelle",count = "x4"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_milkweed.png', text = "Asclépiade",count = "x3"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/provision_buck_antlers.png', text = "Bois de cerf",count = "x1"}}
    },
    ['concoctioncoagulationdeux'] = {
        type = 'mortier',
        Itemtocraft = 4,
        ItemReceipe1Name = 'baiedegaultherie',
        ItemReceipe1Amount = 3,
        ItemReceipe2Name = 'achillevisqueuse',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'griffe',
        ItemReceipe4Amount = 1,
        ItemToGive = 'concoctioncoagulation',
        Amount = 1,
        WorkingTime = 5,
        label = 'Solution Coagulante',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_wintergreen_berry.png', text = "Baie de gaultherie",count = "x3"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_english_mace.png', text = "Achillé visqueuse",count = "x3"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/provision_bobcat_claws.png', text = "griffe",count = "x1"}}
    },
    ['concoctioncoagulationtrois'] = {
        type = 'mortier',
        Itemtocraft = 4,
        ItemReceipe1Name = 'millefeuille',
        ItemReceipe1Amount = 4,
        ItemReceipe2Name = 'saugeducolibri',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'corne',
        ItemReceipe4Amount = 2,
        ItemToGive = 'concoctioncoagulation',
        Amount = 1,
        WorkingTime = 5,
        label = 'Solution Coagulante',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_yarrow.png', text = "Millefeuille",count = "x4"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_hummingbird_sage.png', text = "Sauge du colibri",count = "x3"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/generic_animal_horn.png', text = "Corne",count = "x2"}}
    },
    ['poisonest'] = {
        type = 'mortier',
        Itemtocraft = 4,
        ItemReceipe1Name = 'laurierrose',
        ItemReceipe1Amount = 4,
        ItemReceipe2Name = 'saugedudesert',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'glandevenin',
        ItemReceipe3Amount = 2,
        ItemReceipe4Name = 'boiscerf',
        ItemReceipe4Amount = 1,
        ItemToGive = 'poison',
        Amount = 1,
        WorkingTime = 5,
        label = 'Poison',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_oleander_sage.png', text = "Laurier-rose",count = "x4"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_desert_sage.png', text = "Sauge du desert",count = "x3"},{src = 'nui://redemrp_inventory/html/items/provision_panther_eye.png', text = "Glande",count = "x2"},{src = 'nui://redemrp_inventory/html/items/provision_buck_antlers.png', text = "Bois de cerf",count = "x1"}}
    },
    ['poisonouest'] = {
        type = 'mortier',
        Itemtocraft = 4,
        ItemReceipe1Name = 'champignontoxique',
        ItemReceipe1Amount = 4,
        ItemReceipe2Name = 'saugedudesert',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'glandevenin',
        ItemReceipe3Amount = 2,
        ItemReceipe4Name = 'boiscerf',
        ItemReceipe4Amount = 1,
        ItemToGive = 'poison',
        Amount = 1,
        WorkingTime = 5,
        label = 'Poison',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_parasol_mushroom.png', text = "Lépiote Brun-rose",count = "x4"}, {src = 'nui://redemrp_inventory/html/items/consumable_herb_desert_sage.png', text = "Sauge du desert",count = "x3"},{src = 'nui://redemrp_inventory/html/items/provision_panther_eye.png', text = "Glande",count = "x2"},{src = 'nui://redemrp_inventory/html/items/provision_buck_antlers.png', text = "Bois de cerf",count = "x1"}}
    },
    ['remedeinfectionun'] = {
        type = 'mortier',
        Itemtocraft = 3,
        ItemReceipe1Name = 'millefeuille',
        ItemReceipe1Amount = 3,
        ItemReceipe2Name = 'baiedegaultherie',
        ItemReceipe2Amount = 2,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemToGive = 'remedeinfection',
        Amount = 1,
        WorkingTime = 5,
        label = 'Concentré Antiputride',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_yarrow.png', text = "millefeuille",count = "x3"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_wintergreen_berry.png', text = "Baie de gaultherie",count = "x2"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"}}
    },
    ['remedeinfectiondeux'] = {
        type = 'mortier',
        Itemtocraft = 3,
        ItemReceipe1Name = 'asclepiade',
        ItemReceipe1Amount = 2,
        ItemReceipe2Name = 'achillevisqueuse',
        ItemReceipe2Amount = 2,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemToGive = 'remedeinfection',
        Amount = 1,
        WorkingTime = 5,
        label = 'Concentré Antiputride',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_milkweed.png', text = "Asclépiade",count = "x2"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_english_mace.png', text = "Achillé visqueuse",count = "x2"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"}}
    },
    ['remedeantidouleurun'] = {
        type = 'mortier',
        Itemtocraft = 3,
        ItemReceipe1Name = 'coulemelle',
        ItemReceipe1Amount = 2,
        ItemReceipe2Name = 'camomillesauvage',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemToGive = 'remedeantidouleur',
        Amount = 1,
        WorkingTime = 5,
        label = 'Extrait de Camomille',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_parasol_mushroom.png', text = "Coulemelle",count = "x2"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_wild_feverfew.png', text = "Camomille sauvage",count = "x3"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"}}
    },
    ['remedeantidouleurdeux'] = {
        type = 'mortier',
        Itemtocraft = 3,
        ItemReceipe1Name = 'menthesauvage',
        ItemReceipe1Amount = 3,
        ItemReceipe2Name = 'camomillesauvage',
        ItemReceipe2Amount = 2,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemToGive = 'remedeantidouleur',
        Amount = 1,
        WorkingTime = 5,
        label = 'Extrait de Camomille',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_wild_mint.png', text = "Menthe sauvage",count = "x3"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_wild_feverfew.png', text = "Camomille sauvage",count = "x2"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"}}
    },
    ['antidysentrie'] = {
        type = 'mortier',
        Itemtocraft = 4,
        ItemReceipe1Name = 'chanterelle',
        ItemReceipe1Amount = 4,
        ItemReceipe2Name = 'pouledesbois',
        ItemReceipe2Amount = 2,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'jonccommun',
        ItemReceipe4Amount = 2,
        ItemToGive = 'antidysentrie',
        Amount = 1,
        WorkingTime = 5,
        label = 'Remède Digestif',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_chanterelles.png', text = "Chanterelle",count = "x4"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_rams_head.png', text = "Poule des bois",count = "x2"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_common_bulrush.png', text = "Jonc commun",count = "x2"}}
    },
    ['antidote'] = {
        type = 'mortier',
        Itemtocraft = 4,
        ItemReceipe1Name = 'millefeuille',
        ItemReceipe1Amount = 2,
        ItemReceipe2Name = 'baiedegaultherie',
        ItemReceipe2Amount = 2,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemReceipe4Name = 'barbane',
        ItemReceipe4Amount = 2,
        ItemToGive = 'antidote',
        Amount = 1,
        WorkingTime = 5,
        label = 'Antidote',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_yarrow.png', text = "Millefeuille",count = "x2"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_wintergreen_berry.png', text = "Baie de Gaultherie",count = "x2"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_burdock_root.png', text = "Bardane",count = "x2"}}
    },
    ['antivenin'] = {
        type = 'mortier',
        Itemtocraft = 4,
        ItemReceipe1Name = 'menthesauvage',
        ItemReceipe1Amount = 2,
        ItemReceipe2Name = 'ginseng',
        ItemReceipe2Amount = 1,
        ItemReceipe3Name = 'barbane',
        ItemReceipe3Amount = 2,
        ItemReceipe4Name = 'corne',
        ItemReceipe4Amount = 1,
        ItemToGive = 'antivenin',
        Amount = 1,
        WorkingTime = 5,
        label = 'Remède serpentin',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_wild_mint.png', text = "Menthe sauvage",count = "x2"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_american_ginseng.png', text = "Ginseng",count = "x1"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_burdock_root.png', text = "Bardane",count = "x1"},{src = 'nui://redemrp_inventory/html/items/generic_animal_horn.png', text = "Corne",count = "x1"}}
    },
    ['attelle'] = {
        type = 'mortier',
        Itemtocraft = 3,
        ItemReceipe1Name = 'cuir',
        ItemReceipe1Amount = 2,
        ItemReceipe2Name = 'petitbois',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'bandage',
        ItemReceipe3Amount = 1,
        ItemToGive = 'attelle',
        Amount = 1,
        WorkingTime = 5,
        label = 'Attelle',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/provision_armadillo_skin.png', text = "Cuir",count = "x2"},{src = 'nui://redemrp_inventory/html/items/stick.png', text = "Petit Bois",count = "x3"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Graisse animal",count = "x1"},{src = 'nui://redemrp_inventory/html/items/bandage.png', text = "Bandage",count = "x1"}}
    },
    ['bandagepatate'] = {
        type = 'mortier',
        Itemtocraft = 2,
        ItemReceipe1Name = 'bandage',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'patate',
        ItemReceipe2Amount = 3,
        ItemToGive = 'bandagepatate',
        Amount = 1,
        WorkingTime = 5,
        label = 'Bandage à la patate',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/bandage.png', text = "Bandage",count = "x1"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_wild_feverfew.png', text = "Patate",count = "x3"}}
    },
    ['bandagecharbon'] = {
        type = 'mortier',
        Itemtocraft = 2,
        ItemReceipe1Name = 'bandage',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'charbon',
        ItemReceipe2Amount = 10,
        ItemToGive = 'bandagecharbon',
        Amount = 1,
        WorkingTime = 5,
        label = 'Bandage au charbon',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/bandage.png', text = "Bandage",count = "x1"},{src = 'nui://redemrp_inventory/html/items/rock.png', text = "Charbon",count = "x10"}}
    },
    ['syringe'] = {
        type = 'mortier',
        Itemtocraft = 3,
        ItemReceipe1Name = 'barbane',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'baiedegaultherie',
        ItemReceipe2Amount = 3,
        ItemReceipe3Name = 'graisse',
        ItemReceipe3Amount = 1,
        ItemToGive = 'syringe',
        Amount = 1,
        WorkingTime = 5,
        label = 'Seringue de Digitaline',
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_burdock_root.png', text = "Bardane",count = "x1"},{src = 'nui://redemrp_inventory/html/items/consumable_herb_wintergreen_berry.png', text = "Baie de Gaultherie",count = "x3"},{src = 'nui://redemrp_inventory/html/items/generic_animal_fat.png', text = "Morceau de gras",count = "x1"}}
    },
}


Config.PoisonReceipe = {
    ['lemonade'] = {
        ItemToPoison= 'lemonade',
        ItemAmount = 1,
        label = 'Limonade empoisonnée',
    },
}


