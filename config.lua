Config = {}

-- settings
Config.Debug = false
Config.SellTime = 10000

Config.Blip = {
    blipName = 'Trapper', -- Config.Blip.blipName
    blipSprite = 'blip_shop_animal_trapper', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

-- prompt locations
Config.TrapperLocations = {

	{name = 'Valentine Trapper',		location = 'valentine-trapper',			coords = vector3(-334.2203, 773.16943, 116.24839),	showblip = true}, --valentine
	{name = 'St Denis Trapper',			location = 'stdenis-trapper',			coords = vector3(2832.2661, -1223.746, 194.07852),	showblip = true}, --stdenis
	{name = 'Riggs Station Trapper',	location = 'riggsstation-trapper',		coords = vector3(-1006.938, -549.3896, 99.393592),	showblip = true}, --riggsstation
	{name = 'West Elizabeth Trapper',	location = 'westelizabeth-trapper',		coords = vector3(-2843.525, 142.12048, 184.59883),	showblip = true}, --westelizabeth
	{name = 'Stawberry Trapper',		location = 'stawberry-trapper', 		coords = vector3(-1746.238, -388.9359, 101.29882),	showblip = true}, --stawberry
	{name = 'Tumbleweed Trapper',		location = 'tumbleweed-trapper', 		coords = vector3(-5512.208, -2952.122, -1.791797),	showblip = true}, --tumbleweed
	
}

Config.TrapperShop = {
	-- trapper shop items
	[1] = 	{ name = "bread",	price = 1,	amount = 50,	info = {},	type = "item",	slot = 1, },
	[2] = 	{ name = "water",	price = 1,	amount = 50,	info = {},	type = "item",	slot = 2, },
}

Config.Pelts = { -- reward item false or 'itemname'
	
	-- BEAR
	[1] =  { -- a_c_bear_01 / PROVISION_BEAR_FUR_POOR
		["pelthash"] = 957520252,
		["name"] = "Poor Bear Pelt",
		["reward"] = 3,
		["rewarditem"] = false
	},
    [2] =  { -- a_c_bear_01 / PROVISION_BEAR_FUR
		["pelthash"] = 143941906,
		["name"] = "Good Bear Pelt",
		["reward"] = 6,
		["rewarditem"] = false
	},
    [3] =  { -- a_c_bear_01 / PROVISION_BEAR_FUR_PRISTINE
		["pelthash"] = 1292673537,
		["name"] = "Perfect Bear Pelt",
		["reward"] = 9,
		["rewarditem"] = false
	},
	 
	-- BLACK_BEAR
    [4] =  { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR_POOR
		["pelthash"] = 1083865179,
		["name"] = "Poor Black Bear Pelt",
		["reward"] = 3,
		["rewarditem"] = false
	},
    [5] =  { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR
		["pelthash"] = 1490032862,
		["name"] = "Good Black Bear Pelt",
		["reward"] = 6,
		["rewarditem"] = false
	},
    [6] =  { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR_PRISTINE
		["pelthash"] = 663376218,
		["name"] = "Perfect Black Bear Pelt",
		["reward"] = 9,
		["rewarditem"] = false
	},
	
	-- BOAR
    [7] =  { -- a_c_boar_01 / PROVISION_BOAR_SKIN_POOR
		["pelthash"] = 1248540072,
		["name"] = "Poor Boar Pelt",
		["reward"] = 2,
		["rewarditem"] = false
	},
    [8] =  { -- a_c_boar_01 / PROVISION_BOAR_SKIN
		["pelthash"] = 2116849039,
		["name"] = "Good Boar Pelt",
		["reward"] = 4,
		["rewarditem"] = false
	},
    [9] =  { -- a_c_boar_01 / PROVISION_BOAR_SKIN_PRISTINE
		["pelthash"] = -1858513856,
		["name"] = "Perfect Boar Pelt",
		["reward"] = 8,
		["rewarditem"] = false
	},
	
	-- BUCK
    [10] =  { -- a_c_buck_01 / PROVISION_BUCK_FUR_POOR
		["pelthash"] = 1603936352,
		["name"] = "Poor Buck Pelt",
		["reward"] = 2,
		["rewarditem"] = false
	},
    [11] =  { -- a_c_buck_01 / PROVISION_BUCK_FUR
		["pelthash"] = -868657362,
		["name"] = "Good Buck Pelt",
		["reward"] = 4,
		["rewarditem"] = false
	},
    [12] =  { -- a_c_buck_01 / PROVISION_BUCK_FUR_PRISTINE
		["pelthash"] = -702790226,
		["name"] = "Perfect Buck Pelt",
		["reward"] = 8,
		["rewarditem"] = false
	},

	-- BUFFALO
    [13] =  { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR_POOR
		["pelthash"] = -1730060063,
		["name"] = "Poor Buffalo Pelt",
		["reward"] = 3,
		["rewarditem"] = false
	},
    [14] =  { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR
		["pelthash"] = -591117838,
		["name"] = "Good Buffalo Pelt",
		["reward"] = 6,
		["rewarditem"] = false
	},
    [15] =  { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR_PRISTINE
		["pelthash"] = -237756948,
		["name"] = "Perfect Buffalo Pelt",
		["reward"] = 9,
		["rewarditem"] = false
	},

	-- BULL
    [16] =  { -- a_c_bull_01 / PROVISION_BULL_HIDE_POOR
		["pelthash"] = 9293261,
		["name"] = "Poor Bull Hide",
		["reward"] = 3,
		["rewarditem"] = false
	},
    [17] =  { -- a_c_bull_01 / PROVISION_BULL_HIDE
		["pelthash"] = -536086818,
		["name"] = "Good Bull Hide",
		["reward"] = 6,
		["rewarditem"] = false
	},
    [18] =  { -- a_c_bull_01 / PROVISION_BULL_HIDE_PRISTINE
		["pelthash"] = -53270317,
		["name"] = "Perfect Bull Hide",
		["reward"] = 9,
		["rewarditem"] = false
	},

	-- COUGAR
    [19] =  { -- a_c_cougar_01 / PROVISION_COUGAR_FUR_POOR
		["pelthash"] = 1914602340,
		["name"] = "Poor Cougar Pelt",
		["reward"] = 3,
		["rewarditem"] = false
	},
    [20] =  { -- a_c_cougar_01 / PROVISION_COUGAR_FUR
		["pelthash"] = 459744337,
		["name"] = "Good Cougar Pelt",
		["reward"] = 6,
		["rewarditem"] = false
	},
    [21] =  { -- a_c_cougar_01 / PROVISION_COUGAR_FUR_PRISTINE
		["pelthash"] = -1791452194,
		["name"] = "Perfect Cougar Pelt",
		["reward"] = 9,
		["rewarditem"] = false
	},

	-- COW
    [22] =  { -- a_c_cow / PROVISION_COW_HIDE_POOR
		["pelthash"] = 334093551,
		["name"] = "Poor Cow Hide",
		["reward"] = 3,
		["rewarditem"] = false
	},
    [23] =  { -- a_c_cow / PROVISION_COW_HIDE
		["pelthash"] = 1150594075,
		["name"] = "Good Cow Hide",
		["reward"] = 6,
		["rewarditem"] = false
	},
    [24] =  { -- a_c_cow / PROVISION_COW_HIDE_PRISTINE
		["pelthash"] = -845037222,
		["name"] = "Perfect Cow Hide",
		["reward"] = 9,
		["rewarditem"] = false
	},
	
	-- COYOTE
    [25] =  { -- a_c_coyote_01 / PROVISION_COYOTE_FUR_POOR
		["pelthash"] = -1558096473,
		["name"] = "Poor Coyote Pelt",
		["reward"] = 1,
		["rewarditem"] = false
	},
    [26] =  { -- a_c_coyote_01 / PROVISION_COYOTE_FUR
		["pelthash"] = 1150939141,
		["name"] = "Good Coyote Pelt",
		["reward"] = 2,
		["rewarditem"] = false
	},
    [27] =  { -- a_c_coyote_01 / PROVISION_COYOTE_FUR_PRISTINE
		["pelthash"] = -794277189,
		["name"] = "Perfect Coyote Pelt",
		["reward"] = 3,
		["rewarditem"] = false
	},
		
	-- DEER
    [28] =  { -- a_c_deer_01 / PROVISION_DEER_HIDE_POOR
		["pelthash"] = -662178186,
		["name"] = "Poor Deer Pelt",
		["reward"] = 1,
		["rewarditem"] = false
	},
    [29] =  { -- a_c_deer_01 / PROVISION_DEER_HIDE
		["pelthash"] = -1827027577,
		["name"] = "Good Deer Pelt",
		["reward"] = 2,
		["rewarditem"] = false
	},
    [30] =  { -- a_c_deer_01 / PROVISION_DEER_HIDE_PRISTINE
		["pelthash"] = -1035515486,
		["name"] = "Perfect Deer Pelt",
		["reward"] = 3,
		["rewarditem"] = false
	},
	
	-- ELK
    [31] =  { -- a_c_elk_01 / PROVISION_ELK_FUR_POOR
		["pelthash"] = 2053771712,
		["name"] = "Poor Elk Pelt",
		["reward"] = 3,
		["rewarditem"] = false
	},
    [32] =  { -- a_c_elk_01 / PROVISION_ELK_FUR
		["pelthash"] = 1181652728,
		["name"] = "Good Elk Pelt",
		["reward"] = 6,
		["rewarditem"] = false
	},
    [33] =  { -- a_c_elk_01 / PROVISION_ELK_FUR_PRISTINE
		["pelthash"] = -1332163079,
		["name"] = "Perfect Elk Pelt",
		["reward"] = 9,
		["rewarditem"] = false
	},
	
	-- FOX
    [34] =  { -- a_c_fox_01 / PROVISION_FOX_FUR_POOR
		["pelthash"] = 1647012424,
		["name"] = "Poor Fox Pelt",
		["reward"] = 1,
		["rewarditem"] = false
	},
    [35] =  { -- a_c_fox_01 / PROVISION_FOX_FUR
		["pelthash"] = 238733925,
		["name"] = "Good Fox Pelt",
		["reward"] = 2,
		["rewarditem"] = false
	},
    [36] =  { -- a_c_fox_01 / PROVISION_FOX_FUR_PRISTINE
		["pelthash"] = 500722008,
		["name"] = "Perfect Fox Pelt",
		["reward"] = 3,
		["rewarditem"] = false
	},
	
	-- GOAT
    [37] =  { -- a_c_goat_01 / PROVISION_GOAT_HAIR_POOR
		["pelthash"] = 699990316,
		["name"] = "Poor Goat Hide",
		["reward"] = 1,
		["rewarditem"] = false
	},
    [38] =  { -- a_c_goat_01 / PROVISION_GOAT_HAIR
		["pelthash"] = 1710714415,
		["name"] = "Good Goat Hide",
		["reward"] = 2,
		["rewarditem"] = false
	},
    [39] =  { -- a_c_goat_01 / PROVISION_GOAT_HAIR_PRISTINE
		["pelthash"] = -1648383828,
		["name"] = "Perfect Goat Hide",
		["reward"] = 3,
		["rewarditem"] = false
	},
	
	-- JAVELINA
    [40] =  { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN_POOR
		["pelthash"] = -99092070,
		["name"] = "Poor Peccary Pig Pelt",
		["reward"] = 2,
		["rewarditem"] = false
	},
    [41] =  { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN
		["pelthash"] = -1379330323,
		["name"] = "Good Peccary Pig Pelt",
		["reward"] = 4,
		["rewarditem"] = false
	},
    [42] =  { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN_PRISTINE
		["pelthash"] = 1963510418,
		["name"] = "Perfect Peccary Pig Pelt",
		["reward"] = 8,
		["rewarditem"] = false
	},
	
	-- MOOSE
    [43] =  { -- a_c_moose_01 / PROVISION_MOOSE_FUR_POOR
		["pelthash"] = 1868576868,
		["name"] = "Poor Moose Pelt",
		["reward"] = 3,
		["rewarditem"] = false
	},
    [44] =  { -- a_c_moose_01 / PROVISION_MOOSE_FUR
		["pelthash"] = 1636891382,
		["name"] = "Good Moose Pelt",
		["reward"] = 6,
		["rewarditem"] = false
	},
    [45] =  { -- a_c_moose_01 / PROVISION_MOOSE_FUR_PRISTINE
		["pelthash"] = -217731719,
		["name"] = "Perfect Moose Pelt",
		["reward"] = 9,
		["rewarditem"] = false
	},
	
	-- OXEN
    [46] =  { -- a_c_ox_01 / PROVISION_OXEN_HIDE_POOR
		["pelthash"] = 462348928,
		["name"] = "Poor Ox Hide",
		["reward"] = 3,
		["rewarditem"] = false
	},
    [47] =  { -- a_c_ox_01 / PROVISION_OXEN_HIDE
		["pelthash"] = 1208128650,
		["name"] = "Good Ox Hide",
		["reward"] = 6,
		["rewarditem"] = false
	},
    [48] =  { -- a_c_ox_01 / PROVISION_OXEN_HIDE_PRISTINE
		["pelthash"] = 659601266,
		["name"] = "Perfect Ox Hide",
		["reward"] = 9,
		["rewarditem"] = false
	},
	
	-- PANTHER
    [49] =  { -- a_c_panther_01 / PROVISION_PANTHER_FUR_POOR
		["pelthash"] = 1584468323,
		["name"] = "Poor Panther Pelt",
		["reward"] = 3,
		["rewarditem"] = false
	},
    [50] =  { -- a_c_panther_01 / PROVISION_PANTHER_FUR
		["pelthash"] = -395646254,
		["name"] = "Good Panther Pelt",
		["reward"] = 6,
		["rewarditem"] = false
	},
    [51] =  { -- a_c_panther_01 / PROVISION_PANTHER_FUR_PRISTINE
		["pelthash"] = 1969175294,
		["name"] = "Perfect Panther Pelt",
		["reward"] = 9,
		["rewarditem"] = false
	},
	
	-- PIG
    [52] =  { -- a_c_pig_01 / PROVISION_PIG_SKIN_POOR
		["pelthash"] = -308965548,
		["name"] = "Poor Pig Hide",
		["reward"] = 1,
		["rewarditem"] = false
	},
    [53] =  { -- a_c_pig_01 / PROVISION_PIG_SKIN
		["pelthash"] = -57190831,
		["name"] = "Good Pig Hide",
		["reward"] = 2,
		["rewarditem"] = false
	},
    [54] =  { -- a_c_pig_01 / PROVISION_PIG_SKIN_PRISTINE
		["pelthash"] = -1102272634,
		["name"] = "Perfect Pig Hide",
		["reward"] = 3,
		["rewarditem"] = false
	},
	
	-- PRONGHORN
    [55] =  { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR_POOR
		["pelthash"] = -983605026,
		["name"] = "Poor Pronghorn Hide",
		["reward"] = 2,
		["rewarditem"] = false
	},
    [56] =  { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR
		["pelthash"] = 554578289,
		["name"] = "Good Pronghorn Hide",
		["reward"] = 4,
		["rewarditem"] = false
	},
    [57] =  { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR_PRISTINE
		["pelthash"] = -1544126829,
		["name"] = "Perfect Pronghorn Hide",
		["reward"] = 8,
		["rewarditem"] = false
	},
	
	-- RAM
    [58] =  { -- a_c_bighornram_01 / PROVISION_RAM_HIDE_POOR
		["pelthash"] = 1796037447,
		["name"] = "Poor Ram Hide",
		["reward"] = 1,
		["rewarditem"] = false
	},
    [59] =  { -- a_c_bighornram_01 / PROVISION_RAM_HIDE
		["pelthash"] = -476045512,
		["name"] = "Good Ram Hide",
		["reward"] = 2,
		["rewarditem"] = false
	},
    [60] =  { -- a_c_bighornram_01 / PROVISION_RAM_HIDE_PRISTINE
		["pelthash"] = 1795984405,
		["name"] = "Perfect Ram Hide",
		["reward"] = 3,
		["rewarditem"] = false
	},
	
	-- SHEEP
    [61] =  { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL_POOR
		["pelthash"] = 1729948479,
		["name"] = "Poor Sheep Hide",
		["reward"] = 1,
		["rewarditem"] = false
	},
    [62] =  { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL
		["pelthash"] = -1317365569,
		["name"] = "Good Sheep Hide",
		["reward"] = 2,
		["rewarditem"] = false
	},
    [63] =  { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL_PRISTINE
		["pelthash"] = 1466150167,
		["name"] = "Perfect Sheep Hide",
		["reward"] = 3,
		["rewarditem"] = false
	},
	
	-- WOLF
    [64] =  { -- a_c_Wolf / PROVISION_WOLF_FUR_POOR
		["pelthash"] = 85441452,
		["name"] = "Poor Wolf Pelt",
		["reward"] = 3,
		["rewarditem"] = false
	},
    [65] =  { -- a_c_Wolf / PROVISION_WOLF_FUR
		["pelthash"] = 1145777975,
		["name"] = "Good Wolf Pelt",
		["reward"] = 6,
		["rewarditem"] = false
	},
    [66] =  { -- a_c_Wolf / PROVISION_WOLF_FUR_PRISTINE
		["pelthash"] = 653400939,
		["name"] = "Perfect Wolf Pelt",
		["reward"] = 9,
		["rewarditem"] = false
	},
	
	-- ALLIGATOR
    [67] =  { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN_POOR
		["pelthash"] = 1806153689,
		["name"] = "Poor Alligator Skin",
		["reward"] = 3,
		["rewarditem"] = false
	},
    [68] =  { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN
		["pelthash"] = -802026654,
		["name"] = "Good Alligator Skin",
		["reward"] = 6,
		["rewarditem"] = false
	},
    [69] =  { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN_PRISTINE
		["pelthash"] = -1625078531,
		["name"] = "Perfect Alligator Skin",
		["reward"] = 9,
		["rewarditem"] = false
	},
	
	-- LEGENDARY
    [70] =  { -- mp_a_c_alligator_01 / Legendary Sun Gator
		["pelthash"] = -1621144167,
		["name"] = "Legendary Sun Gator Skin",
		["reward"] = 100,
		["rewarditem"] = false
	},
    [71] =  { -- mp_a_c_beaver_01 / Legendary Moon Beaver
		["pelthash"] = -251416414,
		["name"] = "Legendary Moon Beaver Pelt",
		["reward"] = 100,
		["rewarditem"] = false
	},
    [72] =  { -- mp_a_c_boar_01 / Legendary Wakpa Boar
		["pelthash"] = -1249752300,
		["name"] = "Legendary Wakpa Boar Pelt",
		["reward"] = 100,
		["rewarditem"] = false
	},
    [73] =  { -- mp_a_c_cougar_01 / Legendary Maza Cougar
		["pelthash"] = 397926876,
		["name"] = "Legendary Maza Cougar Pelt",
		["reward"] = 100,
		["rewarditem"] = false
	},
    [74] =  { -- mp_a_c_coyote_01 / Legendary Midnight Paw Coyote
		["pelthash"] = 1728819413,
		["name"] = "Legendary Midnight Paw Coyote Pelt",
		["reward"] = 100,
		["rewarditem"] = false
	},
    [75] =  { -- mp_a_c_panther_01 / Legendary Ghost Panther
		["pelthash"] = 836208559,
		["name"] = "Legendary Ghost Panther Pelt",
		["reward"] = 100,
		["rewarditem"] = false
	},
    [76] =  { -- ? / Legendary Onyx Wolf
		["pelthash"] = -1548204069,
		["name"] = "Legendary Onyx Wolf Pelt",
		["reward"] = 100,
		["rewarditem"] = false
	},
    [77] =  { -- mp_a_c_wolf_01 / Legendary Emerald Wolf Pelt
		["pelthash"] = -1946740647,
		["name"] = "Legendary Emerald Wolf Pelt",
		["reward"] = 100,
		["rewarditem"] = false
	},
	
}

Config.TrapperNpc = {

	[1] = { ["Model"] = "U_M_M_SDTRAPPER_01", ["Pos"] = vector3(-334.2203, 773.16943, 116.24839 -1), ["Heading"] = 110.23853 }, -- valentine
	[2] = { ["Model"] = "U_M_M_SDTRAPPER_01", ["Pos"] = vector3(2832.2661, -1223.746, 47.653793 -1), ["Heading"] = 194.07852 }, -- stdenis
	[3] = { ["Model"] = "U_M_M_SDTRAPPER_01", ["Pos"] = vector3(-1006.938, -549.3896, 99.393592 -1), ["Heading"] = 291.42114 }, -- riggsstation
	[4] = { ["Model"] = "U_M_M_SDTRAPPER_01", ["Pos"] = vector3(-2843.525, 142.12048, 184.59883 -1), ["Heading"] = 255.41798 }, -- westelizabeth
	[5] = { ["Model"] = "U_M_M_SDTRAPPER_01", ["Pos"] = vector3(-1745.965, -389.0415, 156.59684 -1), ["Heading"] = 115.06294 }, -- strawberry
	[6] = { ["Model"] = "U_M_M_SDTRAPPER_01", ["Pos"] = vector3(-5511.839, -2951.557, -1.821591 -1), ["Heading"] = 115.06294 }, -- tumbleweed

}
