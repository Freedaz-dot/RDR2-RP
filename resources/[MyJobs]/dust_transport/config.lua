Config = {}


Config.Jobs = {
    [1] = "transport_ouest",
    [2] = "transport_est",
}

Config.DistanceToInteract = 1.5


Config.ExportNPC = {
    ["blackwater"] = {heading = 90.0 , coords = vector3(-766.8692, -1236.002, 42.54688)},
    ["stdenis"] = {heading = 230.0 , coords = vector3(2767.197, -1435.013, 44.99092)},
}

Config.ExportBla = vector3(-768.6127, -1236.022, 42.53892)
Config.ExportStDenis = vector3(2768.169, -1435.951, 44.99099)

Config.PriceExport = {
    ["Blackwater"] = {
        ["gunpowder"] = {label= "Poudre à canon", price= 0.15}, 
        ["douille"] = {label= "Douilles", price= 0.18},
        ["ferpepite"] = {label= "Pépite de fer", price= 0.07},
        ["charbon"] = {label= "Charbon", price= 0.04},
        ["cuivrepepite"] = {label= "Pépite de cuivre", price= 0.05},
        ["plombpepite"] = {label= "Pépite de plomb", price= 0.05},
        ["zincpepite"] = {label= "Pépite de zinc", price= 0.13},
        ["good_whisky"] = {label= "Whisky", price= 0.38},
        ["dirty_whiskey"] = {label= "Mauvais Whisky", price= 0.26},
        ["gin"] = {label= "Gin", price= 0.38},
        ["caisseviande"] = {label= "Caisse de viande", price= 1.4},
        ["caissepoisson"] = {label= "Caisse de poisson", price= 1.4},
        ["cigar"] = {label= "Cigare", price= 0.30},
    },

    ["StDenis"] = {
        ["farine"] = {label= "Farine", price= 0.23},
        ["bouteillelait"] = {label= "Bouteille de lait", price= 0.13},
        ["patate"] = {label= "Patate", price= 0.13},
        ["Corn"] = {label= "Maïs", price= 0.13},
        ["viandebovine"] = {label= "Viande Bovine", price= 0.35},
        ["lingotfer"] = {label= "Lingot de fer", price = 1.4},
        ["lingotor"] = {label= "Lingot d'or", price = 58},
        ["caisseviande"] = {label= "Caisse de viande", price= 1.4},
        ["caissepoisson"] = {label= "Caisse de poisson", price= 1.4},
    },
}
