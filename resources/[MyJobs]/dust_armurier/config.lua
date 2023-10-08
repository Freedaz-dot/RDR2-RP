Config = {}

Config.Atelier = {
    vector3(1327.263, -1321.737, 77.88863), -- Rhodes
    vector3(-1846.091, -419.7523, 162.4211) --- straw

}


Config.CraftingsReceipe = {
    ['douille'] = {
        ItemReceipe1Name = 'cuivrepepite',
        ItemReceipe1Amount = 10,
        ItemReceipe2Name = 'plombpepite',
        ItemReceipe2Amount = 10,
        ItemToGive = 'douille',
        Amount = 10,
        WorkingTime = 5,
    },
    ['piecearme'] = {
        ItemReceipe1Name = 'ferpepite',
        ItemReceipe1Amount = 10,
        ItemReceipe2Name = 'charbon',
        ItemReceipe2Amount = 1,
        ItemToGive = 'piecearme',
        Amount = 10,
        WorkingTime = 5,
    },
    ['gunpowder'] = {
        ItemReceipe1Name = 'souffre',
        ItemReceipe1Amount = 10,
        ItemReceipe2Name = 'charbon',
        ItemReceipe2Amount = 5,
        ItemToGive = 'gunpowder',
        Amount = 10,
        WorkingTime = 5,
    },
    ['ammo_revolver'] = {
        ItemReceipe1Name = 'gunpowder',
        ItemReceipe1Amount = 10,
        ItemReceipe2Name = 'douille',
        ItemReceipe2Amount = 10,
        ItemToGive = 'AMMO_REVOLVER',
        Amount = 10,
        WorkingTime = 5,
    },
    ['ammo_pistol'] = {
        ItemReceipe1Name = 'gunpowder',
        ItemReceipe1Amount = 10,
        ItemReceipe2Name = 'douille',
        ItemReceipe2Amount = 10,
        ItemToGive = 'AMMO_PISTOL',
        Amount = 10,
        WorkingTime = 5,
    },
    ['ammo_repeater'] = {
        ItemReceipe1Name = 'gunpowder',
        ItemReceipe1Amount = 15,
        ItemReceipe2Name = 'douille',
        ItemReceipe2Amount = 10,
        ItemToGive = 'AMMO_REPEATER',
        Amount = 10,
        WorkingTime = 5,
    },
    ['ammo_rifle'] = {
        ItemReceipe1Name = 'gunpowder',
        ItemReceipe1Amount = 20,
        ItemReceipe2Name = 'douille',
        ItemReceipe2Amount = 10,
        ItemToGive = 'AMMO_RIFLE',
        Amount = 10,
        WorkingTime = 5,
    },
    ['ammo_shotgun'] = {
        ItemReceipe1Name = 'gunpowder',
        ItemReceipe1Amount = 15,
        ItemReceipe2Name = 'douille',
        ItemReceipe2Amount = 10,
        ItemToGive = 'AMMO_SHOTGUN',
        Amount = 10,
        WorkingTime = 5,
    }
}


Config.MenuElementsW = {
	["specialweapon"] = {
		label = "Spécifique",
		category = {
			"BARREL",
            "GRIP",
            "SIGHT",
            "CLIP",
            "TUBE",
            "WRAP",
            "FRAME_ENGRAVING",
            "MAG",
            "STOCK",
            "CYLINDER_TINT",
            "BARREL_TINT",
            "TRIGGER_TINT",
            "TORCH_MATCHSTICK",
            "COMPONENT_FISHING_LINE",
		}
	},
    ["commun"] = {
		label = "Commun",
		category = {
			"TRIGGER_MATERIAL",
            "SIGHT_MATERIAL",
            "HAMMER_MATERIAL",
            "FRAME_MATERIAL",
            "FRAME_ENGRAVING",
            "FRAME_ENGRAVING_MATERIAL",
            "BARREL_MATERIAL",
            "BARREL_ENGRAVING",
            "BARREL_ENGRAVING_MATERIAL",
            "CYLINDER_MATERIAL",
            "CYLINDER_ENGRAVING",
            "CYLINDER_ENGRAVING_MATERIAL",
            "GRIP_MATERIAL",
            "GRIPSTOCK_ENGRAVING",
            "GRIPSTOCK_TINT",
            "BARREL_RIFLING",
            "WRAP_MATERIAL",
            "WRAP_TINT",
            "STRAP",
            "STRAP_TINT",
            "SCOPE",
            "MELEE_BLADE_MATERIAL",
            "MELEE_BLADE_ENGRAVING",
            "MELEE_BLADE_ENGRAVING_MATERIAL",
            "GRIP_TINT",
		}
	},

}

Config.LabelW = {
	["BARREL"] = "Canon",
	["GRIP"] = "Poignée",
	["SIGHT"] = "Mire",
	["CLIP"] = "Clip",
	["TUBE"] = "Intérieur Canon",
	["WRAP"] = "Enveloppe",
	["FRAME_ENGRAVING"] = "Gravure",
	["MAG"] = "Chargeur",
	["STOCK"] = "Crosse",
    ["CYLINDER_TINT"] = "Teinte dy cylindre",
	["BARREL_TINT"] = "Teinte du canon",
	["TRIGGER_TINT"] = "Teinte de la gâchette",
	["TORCH_MATCHSTICK"] = "Allumette",
	["COMPONENT_FISHING_LINE"] = "Ligne de pêche",
	["TRIGGER_MATERIAL"] = "Matière de la gâchette",
    ["SIGHT_MATERIAL"] = "Matière de la mire",
    ["HAMMER_MATERIAL"] = "Matière du marteau",
    ["FRAME_MATERIAL"] = "Matière du corps",
    ["FRAME_ENGRAVING_MATERIAL"] = "Matière de la gravure du corps",
    ["BARREL_MATERIAL"] = "Matière du canon",
    ["BARREL_ENGRAVING"] = "Gravure du canon",
    ["BARREL_ENGRAVING_MATERIAL"] = "Matière de la gravure du canon",
    ["CYLINDER_MATERIAL"] = "Matière du cylindre",
    ["CYLINDER_ENGRAVING"] = "Gravure du cylindre",
    ["CYLINDER_ENGRAVING_MATERIAL"] = "Matière de la gravure du cylindre",
    ["GRIP_MATERIAL"] = "Matière de la poignée",
    ["GRIPSTOCK_ENGRAVING"] = "Gravure de la poignée",
    ["GRIPSTOCK_TINT"] = "Teinte de la poignée",
    ["BARREL_RIFLING"] = "Canon rayé",
    ["WRAP_MATERIAL"] = "Matière de l'emballage",
    ["WRAP_TINT"] = "Teinte de l'emballage",
    ["STRAP"] = "Sangle",
    ["STRAP_TINT"] = "Teinte de la sangle",
    ["SCOPE"] = "Viseur",
    ["MELEE_BLADE_MATERIAL"] = "Matière de la lame",
    ["MELEE_BLADE_ENGRAVING"] = "Gravure de lame",
    ["MELEE_BLADE_ENGRAVING_MATERIAL"] = "Matière de la gravure de lame",
    ["GRIP_TINT"] = "Teinte de la poignée",
}

--- FRAME_VERTDATA = légendaire ---