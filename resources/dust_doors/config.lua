Config = {}

Config.UsePrompt = false

Config.KeyPress = 0xD8F73058


Config.Trapdoor = {
	{
		authorizedJobs = { 'straw_store' },
		doorid = "p_trapdoor01x",
		objCoords = vector3(-1790.7442626953125, -390.150390625, 159.28944396972656),
		objPitchclose = vector3(0.0, 0.0, 145),
		objPitchopen =  vector3(-90, 0.0, 145),
		locked = false,
		distance = 3.0
	},

}

Config.DoorList = {
--- cabinet st denis
	{
		authorizedJobs = { 'doctor_stdenis' },
		doorid = 82263429,
		objCoords  = vector3(-276.04, 802.73, 118.41),
		textCoords  = vector3(-275.02, 802.84, 119.43),
		objYaw = 10.0,
		locked = true,
		distance = 3.0
	},

	{
		textCoords = vector3(-308.11, 779.91, 118.96),
		authorizedJobs = { 'doctor_stdenis' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				doorid = 994323006,
				objCoords = vector3(2726.5541992188,-1234.8221435547,49.363960266113),
				objYaw = 90.0,
			},
			{
				doorid = 673153214,
				objCoords = vector3(2724.8232421875,-1234.8221435547,49.363960266113),
				objYaw = 270.0,
			}
		}
	},

	{
		authorizedJobs = { 'doctor_stdenis' },
		doorid = 1104407261,
		objCoords  = vector3(2725.1469726563,-1221.6247558594,49.367805480957),
		textCoords  = vector3(-277.06, 811.83, 119.38),
		objYaw = 180.0,
		locked = true,
		distance = 3.0
	},

	---- presse 
	{
		textCoords = vector3(-308.11, 779.91, 118.96),
		authorizedJobs = { 'presse' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				doorid = 3438582231,
				objCoords = vector3(2626.15,-1338.11,49.17),
				objYaw = 309.41,
			},
			{
				doorid = 461125209,
				objCoords = vector3(2624.76,-1336.43,49.17),
				objYaw = 309.41,
			}
		}
	},
	{
		textCoords = vector3(-308.11, 779.91, 118.96),
		authorizedJobs = { 'presse' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				doorid = 2353368182,
				objCoords = vector3(2604.73,-1348.04,49.13),
				objYaw = 39.77,
			},
			{
				doorid = 1913870354,
				objCoords = vector3(2603.05,-1349.44,49.12),
				objYaw = 40.0,
			}
		}
	},
	--cells
	{
		authorizedJobs = { 'police' },
		doorid = 295355979,
		objCoords  = vector3(-273.47, 809.96, 118.36),
		textCoords  = vector3(-272.23, 810.1, 119.39),
		objYaw = 10.0,
		locked = true,
		distance = 1.5
	},
	{
		authorizedJobs = { 'police' },
		doorid = 193903155,
		objCoords  = vector3(-272.06, 808.25, 118.36),
		textCoords  = vector3(-273.3, 808.12, 119.39),
		objYaw = -170.0,
		locked = true,
		distance = 1.5
	},

	--
	-- Valentine Bank
	--
	{
		textCoords = vector3(-308.11, 779.91, 118.96),
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				doorid = 3886827663,
				objCoords = vector3(-306.89, 780.11, 117.72),
				objYaw = -170.0,
			},
			{
				doorid = 2642457609,
				objCoords = vector3(-309.06, 779.73, 117.72),
				objYaw = 10.05,
			}
		}
	},

	--main doors
	{
		authorizedJobs = { 'usine' },
		doorid = 2343746133,
		objCoords  = vector3(-301.94, 771.75, 117.72),
		textCoords  = vector3(-303.02, 771.60, 118.47),
		objYaw = -170.0,
		locked = false,
		distance = 3.0
	},
	{
		authorizedJobs = { 'usine' },
		doorid = 1340831050,
		objCoords  = vector3(-311.75, 774.67, 117.72),
		textCoords  = vector3(-310.48, 774.92, 118.70),
		objYaw = 10.05,
		locked = false,
		distance = 3.0
	},

	{
		authorizedJobs = { 'usine' },
		doorid = 3718620420,
		objCoords  = vector3(-311.06, 770.12, 117.7),
		textCoords  = vector3(-309.97, 770.20, 118.70),
		objYaw = 10.36,
		locked = false,
		distance = 3.0
	},

	{
		authorizedJobs = { 'usine' },
		doorid = 334467483,
		objCoords  = vector3(-302.93, 767.6, 117.69),
		textCoords  = vector3(-302.97, 768.61, 118.70),
		objYaw = 100.0,
		locked = true,
		distance = 3.0
	},

	-- --vault

	{
		authorizedJobs = { 'police' },
		doorid = 576950805,
		objCoords  = vector3(-307.76, 766.34, 117.7),
		textCoords  = vector3(-306.60, 766.65, 118.70),
		objYaw = -170.0,
		locked = true,
		distance = 3.0
	},
	-- --back door
	{
		authorizedJobs = { 'usine' },
		doorid = 2307914732,
		objCoords  = vector3(-301.51, 762.98, 117.73),
		textCoords  = vector3(-300.59, 763.20, 118.70),
		objYaw = 10.0,
		locked = true,
		distance = 3.0
	},

	-- --
	-- -- Rhodes Sheriff Office
	-- --

	{
		authorizedJobs = { 'police' },
		doorid = 349074475,
		objCoords  = vector3(1359.71, -1305.97, 76.76),
		textCoords  = vector3(1358.42, -1305.71, 77.72),
		objYaw = 160.0,
		locked = false,
		distance = 3.0
	},
	-- {
	-- 	authorizedJobs = { 'police' },
	-- 	doorid = 1614494720,
	-- 	objCoords  = vector3(1359.12, -1297.56, 76.78),
	-- 	textCoords  = vector3(1358.51, -1298.95,77.78),
	-- 	objYaw = -110.0,
	-- 	locked = true,
	-- 	distance = 3.0
	-- },

	-- --
	-- -- Blackwater Sheriff Office
	-- --

	{
		textCoords = vector3(-757.27, -1269.34, 44.04),
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objYaw = 90.0,
				doorid = 3410720590,
				objCoords = vector3(-757.05, -1268.49, 43.06)
			},

			{
				objYaw = 90.0,
				doorid = 3821185084,
				objCoords = vector3(-757.05, -1269.93, 43.06)
			}
		}
	},


}

Config.Doors = {
    
    ---- NE RIEN RAJOUTER EN PREMIER ---- 
    
    {
        door = 3483244267, ----- banque rhodes dynamite 1
        CloseRotation = -130.0,
        OpenCoord  = vector3(1283.08, -1308.89, 77.04),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        keys =false,
    },

    {
        door = 2058564250,  ----- banque rhodes grille 2 
        CloseRotation = -40.0,
        OpenCoord  = vector3(1285.63, -1303.4, 77.04),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        keys =false,
    },


    { 
        door = 2117902999, ----- banque bw grille 3 
        CloseRotation = -220.0,
        OpenCoord  = vector3(-816.4401, -1276.531, 42.63773),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_rhodes"},
        keys =false,
    },
    
    
    {
        door = 1462330364, ----- banque bw grille 4
        CloseRotation = 90.0,
        OpenCoord  = vector3(-817.47, -1273.84, 43.65), 
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_rhodes"},
        keys =false,
    },

    {
        door = 1751238140, ---- banque saint denis 5
        CloseRotation = -200.0,
        OpenCoord  = vector3(2643.84, -1300.6, 52.25),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        keys =false,
    },
    --SHERIFF--
        --VALENTINE--
        {
            door = 1988748538, --Door hash
            CloseRotation = 10.0, --Rotation when closed
            OpenCoord  = vector3(-275.34, 802.67, 119.42), --Coords of trigger // in front of a door
            door2 = 0, --Door hash // if it's double doors else set 0
            CloseRotation2 = 0, --Rotation when closed // if it's double doors else set 0
            locked = true, -- If you want the door to be locked at start
            breakable = true, -- If you want the door could be breaked with "Config.ItemBreak"
            jobs = {"sheriff_rhodes"}, --All Job that can acces to the door // set all if you don't want a job
            needkey = false, -- If you want to use an item "key"
             keys = false, --key item
        },
        {
            door = 395506985,
            CloseRotation = -170.0,
            OpenCoord  = vector3(-275.85, 812.02, 118.41),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_rhodes"},
            keys =false,
        },
        {
            door = 1508776842,
            CloseRotation = -80.0,
            OpenCoord  = vector3(-270.77, 810.02, 118.39),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_rhodes"},
            keys =false,
        },
        {
            door = 535323366,
            CloseRotation = -80.0,
            OpenCoord  = vector3(-275.03, 809.27, 118.36),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_rhodes"},
            keys =false,
        },
        {
            door = 295355979,
            CloseRotation = 10.0,
            OpenCoord  = vector3(-273.47, 809.96, 118.36),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_rhodes"},
            keys =false,
        },
        {
            door = 193903155,
            CloseRotation = -170.0,
            OpenCoord  = vector3(-272.06, 808.25, 118.36),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_rhodes"},
            keys =false,
        },
    
        --RHODES--
        {
            door = 349074475,
            CloseRotation = 160.0,
            OpenCoord  = vector3(1359.71, -1305.97, 76.76),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_rhodes"},
            keys =false,
        },
        {
            door = 1614494720,
            CloseRotation = -110.0,
            OpenCoord  = vector3(1359.12, -1297.56, 76.78),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_rhodes"},
            keys =false,
        },
        {
            door = 1878514758,
            CloseRotation = 70.0,
            OpenCoord  = vector3(1357.44, -1301.78, 77.71),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_rhodes"},
            keys =false,
        },
        --ST DENIS--
        {
            door = 1711767580,
            CloseRotation = -360.35,
            OpenCoord  = vector3(2502.42, -1307.85, 47.95),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"marshall"},
            keys =false,
        },
        {
            door = 1995743734,
            CloseRotation = 180.35,
            OpenCoord  = vector3(2499.75, -1309.87, 47.95),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"marshall"},
            keys =false,
        },
        {
            door = 2515591150,
            CloseRotation = 180.35,
            OpenCoord  = vector3(2503.63, -1309.87, 47.95),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"marshall"},
            keys =false,
        },
        {
            door = 3365520707,
            CloseRotation = -360.35,
            OpenCoord  = vector3(2498.5, -1307.85, 47.95),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"marshall"},
            keys =false,
        },
    
        --STRAWBERRY--
        {
            door = 902070893,
            CloseRotation = -115.0,
            OpenCoord  = vector3(-1814.58, -353.71, 161.43),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_bla"},
            keys =false,
        },
        {
            door = 1207903970,
            CloseRotation = -26.0,
            OpenCoord  = vector3(-1811.40, -352.19, 161.39),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_bla"},
            keys =false,
        },
        {
            door = 1821044729,
            CloseRotation = 164,
            OpenCoord  = vector3(-1806.6751708984,-350.31280517578,163.6475982666),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_bla"},
            keys =false,
        },
        {
            door = 1514359658,
            CloseRotation = 158,
            OpenCoord  = vector3(-1812.6691894531,-345.08489990234,163.6475982666),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_bla"},
            keys =false,
        },
    
        --BLACKWATER--
        {
            door = 3410720590,
            CloseRotation = 90.41,
            DoorCoord = vector3(-757.04217529297,-1268.4851074219,43.068603515625),
            OpenCoord  = vector3(-756.92, -1269.25, 44.03),
            door2 = 3821185084,
            CloseRotation2 = 90.0,
            DoorCoord2 = vector3(-757.04211425781,-1269.9234619141,43.068630218506),
            locked = true,
            breakable = false, 
            jobs = {"sheriff_bla"},
            keys =false,
        },
        {
            door = 2810801921,
            CloseRotation = -90.0,
            OpenCoord  = vector3(-768.86, -1269.28, 44.04),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_bla"},
            keys =false,
        },
        {
            door = 2167775834,
            CloseRotation = -90.0,
            OpenCoord  = vector3(-763.53, -1262.97, 44.06),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_bla"},
            keys =false,
        },
        {
            door = 2514996158,
            CloseRotation = 90.0,
            OpenCoord  = vector3(-765.56, -1264.12, 44.02),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"sheriff_bla"},
            keys =false,
        },
    
        --ARMADILLO--
        {
            door = 4016307508,
            CloseRotation = 295.37,
            OpenCoord  = vector3(-3620.73, -2600.75, -13.34),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        {
            door = 4235597664,
            CloseRotation = 292.54,
            OpenCoord  = vector3(-3619.08, -2604.84, -13.34),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        
    ---------------------------------------------------------------------------------
    
    
    --BANK 
        --RHODES
        {
            door = 3088209306,
            CloseRotation = 319.0,
            DoorCoord = vector3(1294.595703125,-1297.5837402344,76.03963470459),
            OpenCoord  = vector3(1295.75, -1297.93, 77.04),
            door2 = 3317756151,
            DoorCoord2 = vector3(1296.2719726563,-1299.0120849609,76.03963470459),
            CloseRotation2 = -220.0,
            locked = false,
            breakable = false, 
            jobs = {""},
            keys =false,
        },

        { 
            door = 1634148892,
            CloseRotation = -220.0,
            OpenCoord  = vector3(1295.49, -1305.03, 77.04),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },

        {
            door = 3142122679,
            CloseRotation = -40.0,
            OpenCoord  = vector3(1279.34, -1310.57, 77.04),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        {
            door = 2513778780,
            CloseRotation = -220.0,
            OpenCoord  = vector3(1278.46, -1311.7, 76.89),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },

    
        --ST DENIS
        {
            door = 1634115439,
            CloseRotation = -155.0,
            DoorCoord = vector3(2646.9802246094,-1300.9831542969,51.245384216309),
            OpenCoord  = vector3(2647.94, -1300.3, 52.25),
            door2 = 965922748,
            DoorCoord2 = vector3(2648.98046875,-1300.0491943359,51.245391845703),
            CloseRotation2 = -155.0,
            locked = false,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
    
        --BLACKWATER
        {
            door = 2817192481,
            CloseRotation = -90.0,
            OpenCoord  = vector3(-817.09, -1278.29, 43.64),
            door2 = 0,
            CloseRotation2 = 0,
            locked = false,
            breakable = false, 
            jobs = {""},
            keys =false,
        },

    
        --VALENTINE
        {
            door = 3886827663,
            CloseRotation = -170.0,
            DoorCoord = vector3(-306.88534545898,780.11541748047,117.7299118042),
            OpenCoord  = vector3(-308.11, 779.62, 118.7),
            door2 = 2642457609,
            DoorCoord2 = vector3(-309.05206298828,779.73010253906,117.7299118042),
            CloseRotation2 = 10.0,
            locked = false,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        {
            door = 2343746133,
            CloseRotation = -170.0,
            OpenCoord  = vector3(-301.94, 771.75, 117.72),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        {
            door = 1340831050,
            CloseRotation = 10.05,
            OpenCoord  = vector3(-311.75, 774.67, 117.72),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        {
            door = 3718620420,
            CloseRotation = 10.36,
            OpenCoord  = vector3(-311.06, 770.12, 117.7),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        {
            door = 334467483,
            CloseRotation = 100.0,
            OpenCoord  = vector3(-302.93, 767.6, 117.69),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        {
            door = 576950805,
            CloseRotation = 170.0,
            OpenCoord  = vector3(-307.76, 766.34, 117.7),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        {
            door = 2307914732,
            CloseRotation = 10.0,
            OpenCoord  = vector3(-301.51, 762.98, 117.73),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
    
    
        --ARMADILLO
        {
            door = 3101287960,
            CloseRotation = 0.0,
            OpenCoord = vector3(-3665.44, -2620.98, -13.57),
            door2 = 0,
            CloseRotation2 = 0,
            locked = false,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        {
            door = 3550475905,
            CloseRotation = 180.0,
            OpenCoord = vector3(-3661.68, -2627.45, -13.59),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        {
            door = 1366165179,
            CloseRotation = 0.0,
            OpenCoord = vector3(-3662.61, -2638.93, -13.58),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
    ---------------------------------------------------------------------------------
    
    
    --DOCTOR 
        --VALENTINE
        {
            door = 3588026089,
            CloseRotation = -170.0,
            OpenCoord  = vector3(-282.81, 803.85, 118.39),
            door2 = 0,
            CloseRotation2 = 0,
            locked = false,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        {
            door = 4067537969,
            CloseRotation = -170.0,
            OpenCoord  = vector3(-286.65, 809.76, 118.39),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        {
            door = 3439738919,
            CloseRotation = 97.0,
            OpenCoord  = vector3(-281.18, 815.41, 118.39),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        {
            door = 925575409,
            CloseRotation = 10.0,
            OpenCoord  = vector3(-290.72, 813.29, 118.41),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
    
        --STRAWBERRY
        {
            door = 2543619259,
            CloseRotation = 155.83,
            OpenCoord  = vector3(-1802.68, -429.22, 158.83),
            door2 = 0,
            CloseRotation2 = 0,
            locked = false,
            breakable = false, 
            jobs = {""},
            keys =false,
        },
        --ST DENIS
        {
            door = 586229709,
            CloseRotation = 268.83,
            OpenCoord  = vector3(2723.96, -1227.64, 50.37),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"doctor_stdenis"},
            keys =false,
        },
        {
            door = 1289094734,
            CloseRotation = 268.20,
            OpenCoord  = vector3(2727.65, -1229.83, 50.36),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"doctor_stdenis"},
            keys =false,
        },
        {
            door = 82263429,
            CloseRotation = 90,
            DoorCoord = vector3(2726.5541992188,-1234.8221435547,49.363960266113),
            OpenCoord  = vector3(2726.5541992188,-1234.8221435547,49.363960266113),
            door2 = 994323006,
            DoorCoord2 = vector3(2724.8232421875,-1234.8221435547,49.363960266113),
            CloseRotation2 = 270,
            locked = true,
            breakable = false, 
            jobs = {"doctor_stdenis"},
            keys =false,
        },
        {
            door = 1104407261,
            CloseRotation = 0,
            OpenCoord  = vector3(2725.785, -1221.405, 50.34967),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"doctor_stdenis"},
            keys =false,
        },
        
    ---------------------------------------------------------------------------------
    
    
    --SALOON 
        --BLACKWATER
        {
            door = 3311897912,
            CloseRotation = -270.0,
            DoorCoord = vector3(-810.40985107422,-1320.7019042969,42.674785614014),
            OpenCoord  = vector3(-810.5, -1319.62, 43.67),
            door2 = 3526207172,
            DoorCoord2 = vector3(-810.40710449219,-1318.5151367188,42.6748046875),
            CloseRotation2 = 270.0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_bla"},
            keys =false,
        },
        {
            door = 2452247196,
            CloseRotation = 270.0,
            OpenCoord  = vector3(-810.63, -1312.85, 43.68),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_bla"},
            keys =false,
        },
        {
            door = 2320881007,
            CloseRotation = 180.0,
            OpenCoord  = vector3(-810.47, -1327.6, 43.67),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_bla"},
            keys =false,
        },
        {
            door = 815031507,
            CloseRotation = 90.0,
            OpenCoord  = vector3(-824.05, -1322.25, 43.68),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_bla"},
            keys =false,
        },
        {
            door = 1523300673,
            CloseRotation = -180.0,
            OpenCoord  = vector3(-822.9203, -1316.562, 43.69122),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_bla"},
            keys =false,
        },
        {
            door = 254520182,
            CloseRotation = -90.0,
            OpenCoord  = vector3(-818.2964, -1324.128, 47.87748),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_bla"},
            keys =false,
        },
        
    
        --ST DENIS
        {
            door = 3895438792,
            CloseRotation = -315.0,
            DoorCoord = vector3(2627.7453613281,-1221.8547363281,52.398143768311),
            OpenCoord  = vector3(2628.55, -1221.17, 53.4),
            door2 = 804086151,
            DoorCoord2 = vector3(2629.2954101563,-1220.2932128906,52.398143768311),
            CloseRotation2 = 225.0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_stdenis"},
            keys =false,
        },
        {
            door = 2999855503,
            CloseRotation = -180.0,
            DoorCoord = vector3(2640.3271484375,-1219.7867431641,58.592903137207),
            OpenCoord  = vector3(2639.64, -1219.97, 59.61),
            door2 = 2693793043,
            DoorCoord2 = vector3(2638.9807128906,-1219.7867431641,58.593223571777),
            CloseRotation2 = 180.0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_stdenis"},
            keys =false,
        },
        {
            door = 3461406868,
            CloseRotation = -180.0,
            DoorCoord = vector3(2637.2075195313,-1219.7867431641,58.596267700195),
            OpenCoord  = vector3(2636.45, -1219.69, 59.61),
            door2 = 1275780106,
            CloseRotation2 = 180.0,
            DoorCoord2 = vector3(2635.8586425781,-1219.7867431641,58.589454650879),
            locked = true,
            breakable = false, 
            jobs = {"saloon_stdenis"},
            keys =false,
        },
        {
            door = 3856177940,
            CloseRotation = -180.0,
            DoorCoord = vector3(2633.9196777344,-1219.7867431641,58.596267700195),
            OpenCoord  = vector3(2633.21, -1219.85, 59.61),
            door2 = 3371065664,
            DoorCoord2 = vector3(2632.5693359375,-1219.7867431641,58.598285675049),
            CloseRotation2 = 180.0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_stdenis"},
            keys =false,
        },
        --SALOON FAUBOURG
        {
            door = 2653589767,
            CloseRotation = -10.0,
            DoorCoord = vector3(2793.1120605469,-1173.7476806641,46.923934936523),
            OpenCoord  = vector3(2793.796, -1174.267, 47.93112),
            door2 = 2960930218,
            DoorCoord2 = vector3(2794.2932128906,-1174.4350585938,46.923934936523),
            CloseRotation2 = 110.0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_faubourg"},
            keys =false,
        },
        {
            door = 4220752030,
            CloseRotation = -10.0,
            OpenCoord  = vector3(2803.587, -1164.254, 47.92804),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_faubourg"},
            keys =false,
        },
    
        --SALOON VANHORN
        {
            door = 244699522,
            CloseRotation = -90.0,
            DoorCoord = vector3(2951.6027832031,523.88128662109,44.355388641357),
            OpenCoord  = vector3(2951.994, 523.2606, 45.48371),
            door2 = 3225924839,
            CloseRotation2 = -90.0,
            DoorCoord2 = vector3(2951.6049804688,522.76110839844,44.355388641357),
            locked = true,
            breakable = false, 
            jobs = {"saloon_kala"},
            keys =false,
        },
        {
            door = 3704712698,
            CloseRotation = 0,
            OpenCoord  = vector3(2943.0595703125,516.47387695313,44.363765716553),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_kala"},
            keys =false,
        },
        {
            door = 2869660271,
            CloseRotation = -180.0,
            OpenCoord  = vector3(2938.0739746094,528.40545654297,44.363243103027),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_kala"},
            keys =false,
        },
        {
            door = 1102743282,
            CloseRotation = 0,
            OpenCoord  = vector3(2985.8999023438,569.33062744141,46.872211456299),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_kala"},
            keys =false,
        },
        {
            door = 3375224492,
            CloseRotation = -190.0,
            OpenCoord  = vector3(3025.131, 555.2164, 44.70932),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_kala"},
            keys =false,
        },
        {
            door = 2641204994,
            CloseRotation = -180.0,
            OpenCoord  = vector3(3019.7863769531,567.87213134766,43.711101531982),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_kala"},
            keys =false,
        },
        {
            door = 877945562,
            CloseRotation = 180.0,
            OpenCoord  = vector3(3027.9602050781,567.66424560547,43.712707519531),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_kala"},
            keys =false,
        },
        {
            door = 1997650502,
            CloseRotation = 180,
            OpenCoord  = vector3(2975.2006835938,571.22668457031,46.872211456299),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_kala"},
            keys =false,
        },
        {
            door = 993198975,
            CloseRotation = 80.0,
            DoorCoord = vector3(2944.8811035156,539.85339355469,48.483779907227),
            OpenCoord  = vector3(2944.819, 540.518, 49.48433),
            door2 = 821030649,
            CloseRotation2 = 80.0,
            DoorCoord2 = vector3(2945.0754394531,540.95617675781,48.483779907227),
            locked = true,
            breakable = false, 
            jobs = {"saloon_kala"},
            keys =false,
        },
    
        --TUMBLEWEED
        {
            door = 223504277,
            CloseRotation = -195.0,
            DoorCoord = vector3(-5513.2670898438,-2917.6540527344,0.65119791030884),
            OpenCoord  = vector3(-5514.29, -2917.19, 1.66),
            door2 = 4292889829,
            CloseRotation2 = -15.0,
            DoorCoord2 = vector3(-5515.3896484375,-2917.0815429688,0.65119791030884),
            locked = true,
            breakable = false, 
            jobs = {"saloon_tumbleweed"},
            keys =false,
        },
        {
            door = 1322586500,
            CloseRotation = 30.0,
            OpenCoord  = vector3(-5514.38, -2913.12, 1.64),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_tumbleweed"},
            keys =false,
        },
        {
            door = 2094297354,
            CloseRotation = 30.0,
            OpenCoord  = vector3(-5515.13, -2901.66, -1.75),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_tumbleweed"},
            keys =false,
        },
        {
            door = 1892085175,
            CloseRotation = -60.0,
            OpenCoord  = vector3(-5518.68, -2912.57, -1.75),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_tumbleweed"},
            keys =false,
        },
    
        --RHODES
        {
            door = 834296435,
            CloseRotation = 80.0,
            DoorCoord = vector3(1352.9240722656,-1376.2202148438,79.483505249023),
            OpenCoord  = vector3(1352.77, -1376.93, 80.5),
            door2 = 1124531468,
            CloseRotation2 = 80.0,
            DoorCoord2 = vector3(1352.6947021484,-1377.5587158203,79.483505249023),
            locked = true,
            breakable = false, 
            jobs = {"saloon_rhodes"},
            keys =false,
        },
        {
            door = 3728169477,
            CloseRotation = -10.0,
            DoorCoord = vector3(1335.4031982422,-1380.0325927734,79.483505249023),
            OpenCoord  = vector3(1334.68, -1379.95, 80.5),
            door2 = 3392483841,
            CloseRotation2 = -10.0,
            DoorCoord2 = vector3(1334.0657958984,-1379.7967529297,79.483505249023),
            locked = true,
            breakable = false, 
            jobs = {"saloon_rhodes"},
            keys =false,
        },
        {
            door = 3047627494,
            CloseRotation = -90.0,
            OpenCoord  = vector3(1330.58, -1367.99, 80.49),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_rhodes"},
            keys =false,
        },
        {
            door = 3434364936,
            CloseRotation = -100.0,
            DoorCoord = vector3(1336.1071777344,-1372.2189941406,83.28352355957),
            OpenCoord  = vector3(1336.14, -1371.55, 84.29),
            door2 = 3215894013,
            CloseRotation2 = -100.0,
            DoorCoord2 = vector3(1336.3430175781,-1370.8815917969,83.28352355957),
            locked = true,
            breakable = false, 
            jobs = {"saloon_rhodes"},
            keys =false,
        },
        {
            door = 2046695029,
            CloseRotation = 0,
            OpenCoord  = vector3(1331.831, -1369.349, 80.48315),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_rhodes"},
            keys =false,
        },
        {
            door = 2812328251,
            CloseRotation = 70.0,
            OpenCoord  = vector3(1334.692, -1377.216, 80.49891),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_rhodes"},
            keys =false,
        },
        {
            door = 2446974165,
            CloseRotation = 90.0,
            OpenCoord  = vector3(1338.827, -1379.375, 84.28136),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_rhodes"},
            keys =false,
        },
    
        --VALENTINE
        {
            door = 261929195,
            CloseRotation = 190.0,
            OpenCoord  = vector3(-315.94, 818.58, 118.98),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_val"},
            keys =false,
        },
        {
            door = 583884620,
            CloseRotation = 190.0,
            OpenCoord  = vector3(-306.82, 820.26, 118.98),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_val"},
            keys =false,
        },
        {
            door = 968874193,
            CloseRotation = 280.0,
            OpenCoord  = vector3(-316.84, 816.85, 121.98),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_val"},
            keys =false,
        },
        {
            door = 1154795503,
            CloseRotation = 190.0,
            OpenCoord  = vector3(-306.72, 820.53, 121.97),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"saloon_val"},
            keys =false,
        },
    ---------------------------------------------------------------------------------
    
    
    
    --JAIL 
        {
            door = 1121239638,
            CloseRotation = -49.0,
            OpenCoord  = vector3(3326.77, -706.36, 44.32),
            door2 = 2617210026,
            CloseRotation2 = -47.0,
            locked = true,
            breakable = false, 
            jobs = {"marshall"},
            keys =false,
        },
        {
            door = 906662604,
            CloseRotation = -49.0,
            OpenCoord  = vector3(3332.76, -701.05, 44.02),
            door2 = 3984556459,
            CloseRotation2 = -47.0,
            locked = true,
            breakable = false, 
            jobs = {"marshall"},
            keys =false,
        },
    
    ---------------------------------------------------------------------------------
    
    
    
    --GUNSMITH 
        --RHODES
        {
            door = 1410133961,
            CloseRotation = -105.0,
            OpenCoord  = vector3(1325.14, -1324.22, 77.89),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"armurier_rhodes"},
            keys =false,
        },
        {
            door = 393076024,
            CloseRotation = 165.0,
            OpenCoord  = vector3(1325.931, -1318.827, 77.94665),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"armurier_rhodes"},
            keys =false,
        },
        {
            door = 743565308,
            CloseRotation = 95.0,
            OpenCoord  = vector3(1329.8211669922,-1329.1970214844,76.891494750977),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"armurier_rhodes"},
            keys =false,
        },
        {
            door = 934926308,
            CloseRotation = 95.0,
            OpenCoord  = vector3(1319.5262451172,-1324.3895263672,76.891494750977),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"armurier_rhodes"},
            keys =false,
        },
        --SAINT DENIS
        {
            door = 1057071735,
            CloseRotation = -70.0,
            DoorCoord = vector3(2719.8837890625,-1281.5419921875,48.637580871582),
            OpenCoord  = vector3(2719.8837890625,-1281.5419921875,48.637580871582),
            door2 = 3283200993,
            CloseRotation2 = 120.0,
            DoorCoord2 = vector3(2720.8154296875,-1283.5399169922,48.637580871582),
            locked = true,
            breakable = false, 
            jobs = {"armurier_stdenis"},
            keys =false,
        },
        {
            door = 841127028,
            CloseRotation = 115.0,
            OpenCoord  = vector3(2710.5659179688,-1291.2041015625,48.632297515869),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"armurier_stdenis"},
            keys =false,
        },
    
    
    --------------------------------------------------------------------------------------
    
    --GENERAL STORE
        --RHODES
    
        {
            door = 972368328,
            CloseRotation = 30,
            OpenCoord  = vector3(1325.2160644531,-1294.3470458984,75.99486541748),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"store_rhodes"},
            keys =false,
        },
        {
            door = 1060413677,
            CloseRotation = -110.0,
            OpenCoord  = vector3(1332.6689453125,-1291.1726074219,76.009201049805),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"store_rhodes"},
            keys =false,
        },
        --STRAWBERRY
    
            {
                door = 1595373759,
                CloseRotation = -118.0,
                OpenCoord  = vector3(-1794.4954833984,-381.68154907227,159.314453125),
                door2 = 0,
                CloseRotation2 = 0,
                locked = true,
                breakable = false, 
                jobs = {"store_straw"},
                needkey = false,
                 keys = false,
            },
            {
                door = 1854467923,
                CloseRotation = 55.0,
                OpenCoord  = vector3(-1787.3168945313,-387.2438659668,159.31578063965),
                door2 = 0,
                CloseRotation2 = 0,
                locked = true,
                breakable = false, 
                jobs = {"store_straw"},
                needkey = false,
                 keys = false,
            },
    
            --Stdenis
    
            {
                door = 4114891219,
                CloseRotation =  50.0,
                DoorCoord = vector3(2829.1484375,-1319.8210449219,45.755706787109),
                OpenCoord  = vector3(2830, -1319.157, 45.74673),
                door2 = 1051874490,
                CloseRotation2 = -130.0,
                DoorCoord2 = vector3(2830.5222167969,-1318.1197509766,45.755706787109),
                locked = true,
                breakable = false, 
                jobs = {"store_stdenis"},
                needkey = false,
                 keys = false,
            },
            {
                door = 4234072328,
                CloseRotation =  50.0,
                DoorCoord = vector3(2823.3598632813,-1314.9722900391,45.755706787109),
                OpenCoord  = vector3(2824.116, -1314.147, 45.75566),
                door2 = 3986240381,
                CloseRotation2 = -130.0,
                DoorCoord2 = vector3(2824.7426757813,-1313.2604980469,45.755706787109),
                locked = true,
                breakable = false,
                jobs = {"store_stdenis"},
                needkey = false,
                 keys = false,
            },
    
            
            --blackwater
    
            {
                door = 2796645535,
                CloseRotation =  90.0,
                OpenCoord  = vector3(-790.3356, -1322.739, 42.94269),
                door2 = 0,
                CloseRotation2 = 0,
                locked = true,
                breakable = false, 
                jobs = {"store_bla"},
                needkey = false,
                 keys = false,
            },
            {
                door = 3042576856,
                CloseRotation =  -90.0,
                OpenCoord  = vector3(-775.6486, -1321.515, 42.90887),
                door2 = 0,
                CloseRotation2 = 0,
                locked = true,
                breakable = false,
                jobs = {"store_bla"},
                needkey = false,
                 keys = false,
            },
            {
                door = 2046989122,
                CloseRotation =  0,
                OpenCoord  = vector3(-781.6522, -1320.372, 47.10576),
                door2 = 0,
                CloseRotation2 = 0,
                locked = true,
                breakable = false,
                jobs = {"store_bla"},
                needkey = false,
                 keys = false,
            },
            
    --------------------------------------------------------------------------------------
    
    --FORGE
        --DOGWATER
    
        {
            door = 752949299,
            CloseRotation = 0,
            DoorCoord = vector3(-873.94134521484,-1293.244140625,42.106128692627),
            OpenCoord  = vector3(-871.6291, -1293.029, 43.10454),
            door2 = 1538487767,
            CloseRotation2 = -180.0,
            DoorCoord2 = vector3(-869.75262451172,-1293.244140625,42.106128692627),
            locked = true,
            breakable = false, 
            jobs = {"forge"},
            keys =false,
        },
        {
            door = 1318509470,
            CloseRotation = -90.0,
            OpenCoord  = vector3(-876.828, -1288.957, 43.10406),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"forge"},
            keys =false,
        },

        {
            door = -1266590113,
            CloseRotation = -90.0,
            DoorCoord = vector3(-757.3799438476562, -1278.530029296875, 42.83653259277344),
            OpenCoord  = vector3(-756.7836, -1277.565, 42.75676),
            door2 = 3812268623,
            CloseRotation2 = 90.0,
            DoorCoord2 = vector3(-757.379944,-1276.510010,42.836533),
            locked = true,
            breakable = false, 
            jobs = {"forge"},
            keys =false,
        },
        {
            door = 3323360201,
            CloseRotation = -90.0,
            OpenCoord  = vector3(-766.590027, -1274.501709, 42.610039),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"forge"},
            keys =false,
        },
        --ARMURIER
        --DOGWATER
    
        {
            door = 611779013,
            CloseRotation = -90.0,
            DoorCoord = vector3(-790.190002,-1305.180054,42.774467),
            OpenCoord  = vector3(-790.1561, -1304.702, 42.76911),
            door2 = 1709437563,
            CloseRotation2 = -90.0,
            DoorCoord2 = vector3(-790.190002,-1304.170044,42.774467),
            locked = true,
            breakable = false, 
            jobs = {"armurier_blackwater"},
            keys =false,
        },
        {
            door = 1500616700,
            CloseRotation = 90.0,
            OpenCoord  = vector3(-780.371094,-1307.576782, 42.770000),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"armurier_blackwater"},
            keys =false,
        },
    --------------------------------------------------------------------------------------
    
    --FERME
        --DOGWATER 
    
        {
            door = 1606546482,
            CloseRotation = -20.0,
            OpenCoord  = vector3(-1646.2409667969,-1367.1358642578,83.465660095215),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"fermier"},
            keys =false,
        },
        {
            door = 2310818050,
            CloseRotation = 120.0,
            OpenCoord  = vector3(-1637.7155761719,-1352.6480712891,83.466453552246),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"fermier"},
            keys =false,
        },
        {
            door = 818583340,
            CloseRotation = 90.0,
            OpenCoord  = vector3(-1649.2072753906,-1359.2379150391,83.464546203613),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"fermier"},
            keys =false,
        },
    
    --doctor
        --DOGWATER 
    
        {
            door = 1606546482,
            CloseRotation = -20.0,
            OpenCoord  = vector3(-1646.2409667969,-1367.1358642578,83.465660095215),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"fermier"},
            keys =false,
        },
    
    --PRESSE
        --St Denis 
    
        {
            door = 3438582231,
            CloseRotation = 309.41,
            DoorCoord  = vector3(2626.15,-1338.11,49.17),
            OpenCoord  = vector3(2626.15,-1338.11,49.17),
            door2 = 461125209,
            CloseRotation2 = 309.41,
            DoorCoord2  = vector3(2624.76,-1336.43,49.17),
            locked = true,
            breakable = false, 
            jobs = {"presse"},
            keys =false,
        },
        {
            door = 2353368182,
            CloseRotation = 39.77,
            OpenCoord  = vector3(2604.73,-1348.04,49.13),
            DoorCoord  = vector3(2626.15,-1338.11,49.17),
            door2 = 1913870354,
            CloseRotation2 = 40,
            DoorCoord2  = vector3(2603.05,-1349.44,49.12),
            locked = true,
            breakable = false, 
            jobs = {"presse"},
            keys =false,
        },
       -- drugstore
       {
        door = 2718326542,
        CloseRotation = 309.52,
        DoorCoord  = vector3(2632.74,-1345.76,48.05),
        OpenCoord  = vector3(2633.294, -1346.697, 49.0757),
        door2 = 2100663661,
        CloseRotation2 = 130.52,
        DoorCoord2  = vector3(2634.16,-1347.45,48.05),
        locked = true,
        breakable = false, 
        jobs = {"apothicaire_stdenis"},
 keys = false,
    },
    {
        door = 828250887,
        CloseRotation = 309.83,
        OpenCoord  = vector3(2626.61,-1347.58,48.04),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"apothicaire_stdenis"},
 keys = false,
    },
    
    
    ----- taxidermiste
    {
        door = 1963415953,
        CloseRotation = -30.0,
        OpenCoord  = vector3(-1682.649, -341.3071, 173.9155),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"all"},
        needkey = true,
        keys = 'cleftaxi',
    },
    {
        door = 2847752952,
        CloseRotation = 145.0,
        OpenCoord  = vector3(-1679.373, -336.7736, 173.9922),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"all"},
        needkey = true,
        keys = 'cleftaxi',
    },
    
    ---- disitllerie
    {
        door = 3327934361,
        CloseRotation = -116.0,
        OpenCoord  = vector3(1459.719, -1579.794, 72.01608),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"distillerie"},
        keys = false,
    },
    {
        door = 3014302262,
        CloseRotation = -116.0,
        OpenCoord  = vector3(1449.75, -1575.804, 71.99829),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"distillerie"},
        keys = false,
    },
    ---- baraque contrebande new austin

    {
        door = 752062586,
        CloseRotation = 20.0,
        OpenCoord  = vector3(-2024.5306396484,-3035.4318847656,-10.636086463928),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"all"},
        keys = 'clefserge',
    },
    ---- appart chinois
    {
        door = 1180868565,
        CloseRotation = -70.0,
        OpenCoord  = vector3(2711.83, -1293.481, 60.4574),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"all"},
        keys = 'clefchinois',
    },

    ---- thieves landing

    {
        door = 2279482544,
        CloseRotation = 85,
        OpenCoord  = vector3(-1439.96, -2275.91, 42.5014458),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"saloon_thieves"},
        keys = false,
    },
    {
        door = 1971569337,
        CloseRotation = -95.0,
        OpenCoord  = vector3(-1439.41736, -2265.29956, 42.4136),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"saloon_thieves"},
        keys = false,
    },
    {
        door = 745457235,
        CloseRotation = 90.0,
        OpenCoord  = vector3(-1401.07,-2317.93,42.65),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"saloon_thieves"},
        keys = false,
    },
    {
        door = 1636645257,
        CloseRotation = 90.0,
        DoorCoord = vector3(-1389.71,-2314.72,42.65),
        OpenCoord = vector3(-1389.71,-2314.72,42.65),
        door2 = 2573740354,
        CloseRotation2 = -90.0,
        DoorCoord2 = vector3(-1389.80,-2312.57,42.65),
        locked = true,
        breakable = false, 
        jobs = {"saloon_thieves"},
        keys = false,
    },
    {
        door = 3015951957,
        CloseRotation = 90.0,
        OpenCoord  = vector3(-1396.6456298828,-2297.0944824219,42.528427124023),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"saloon_thieves"},
        keys = false,
    },

    ---- doctor bla
    {
        door = 1748668990,
        CloseRotation = -90.0,
        OpenCoord  = vector3(-785.839172,-1312.449951,42.660000),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"doctor_bla"},
        keys = false,
    },
    {
        door = -646026269,
        CloseRotation = -90.0,
        OpenCoord  = vector3(-775.832275,-1313.050049,42.720001),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"doctor_bla"},
        keys = false,
    },

    --- fraudes
    {
        door = 54376651,
        CloseRotation = 90.0,
        OpenCoord  = vector3(-794.403748,-1199.900024,43.188251),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"fraudes"},
        keys = false,
    },
    {
        door = 497352166,
        CloseRotation = 0.0,
        OpenCoord  = vector3(-800.229980,-1193.609985,43.188251),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"doctor_bla"},
        keys = false,
    },
    ---- opium

    {
        door = 1171581101,
        CloseRotation = 60.0,
        OpenCoord  = vector3(-2374.3642578125,-1592.6021728516,153.29959106445),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"all"},
        keys = "clefpavotouest",
    },

    {
        door = 2813949612,
        CloseRotation = -70.0,
        OpenCoord  = vector3(1385.0637207031,-2085.1806640625,51.583812713623),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"all"},
        keys = "clefpavotest",
    },
    {
        door = 896012811,
        CloseRotation = -160.0,
        OpenCoord  = vector3(1387.3020019531,-2077.4401855469,51.581089019775),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"all"},
        keys = "clefpavotest",
    },

    ---- alambic arkos
    {
        door = 4291451064,
        CloseRotation = 185.0,
        DoorCoord = vector3(-627.5625,-54.382328033447,81.852699279785),
        OpenCoord = vector3(-629.018, -54.23365, 81.79862),
        door2 = 295238741,
        CloseRotation2 = -175.0,
        DoorCoord2 = vector3(-630.84625244141,-54.67068862915,81.847953796387),
        locked = true,
        breakable = false, 
        jobs = {"all"},
        keys = "clefarkos",
    },
    ---- alambic guilde
    {
        door = 3167931616,
        CloseRotation = 95.0,
        DoorCoord = vector3(198.80244445801,985.02728271484,189.22232055664),
        OpenCoord = vector3(198.7753, 986.0213, 189.2273),
        door2 = 160425541,
        CloseRotation2 = -80.0,
        DoorCoord2 = vector3(198.37966918945,987.38555908203,189.22232055664),
        locked = true,
        breakable = false, 
        jobs = {"all"},
        keys = "clefguilde",
    },

}