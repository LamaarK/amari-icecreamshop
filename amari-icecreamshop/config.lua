print("amari-icecreamshop v1.0.0 - Player Owned Ice Cream Shop Script by Amari Javil")

Config = {}
Config.Debug = false -- false to remove green boxes

Config.link = "qb-inventory/html/images/" --Set this to the image directory of your inventory script

Config.Items = {
    label = "Ingredients Storage",
    slots = 9,
    items = {
        [1] = { name = "sugar", price = 0, amount = 50, info = {}, type = "item", slot = 1, },
        [2] = { name = "chocchips", price = 0, amount = 50, info = {}, type = "item", slot = 2, },
        [3] = { name = "vanillaescence", price = 0, amount = 50, info = {}, type = "item", slot = 3, },
        [4] = { name = "mint", price = 0, amount = 50, info = {}, type = "item", slot = 4, },
        [5] = { name = "cream", price = 0, amount = 50, info = {}, type = "item", slot = 5, },
        [6] = { name = "orange", price = 0, amount = 50, info = {}, type = "item", slot = 6, },
        [7] = { name = "strawberry", price = 0, amount = 50, info = {}, type = "item", slot = 7, },
        [8] = { name = "blueberry", price = 0, amount = 50, info = {}, type = "item", slot = 8, },
        [9] = { name = "milk", price = 0, amount = 50, info = {}, type = "item", slot = 9, },
        --------------------------------- Add more ingredients here corresponding with client.lua and server.lua
    },
}

Config.Locations = {
    [1] = {
		zoneEnable = true,
        label = "Sundae Post", -- Set this to the required job
        zones = {
          vector2(-1197.3486328125, -1538.5164794922),
          vector2(-1191.2731933594, -1534.2912597656),
          vector2(-1188.7746582031, -1537.8775634766),
          vector2(-1185.3186035156, -1543.2625732422),
          vector2(-1183.9841308594, -1545.1079101562),
          vector2(-1189.3872070312, -1549.2679443359)
        },
		blip = vector3(-1190.44, -1542.65, 4.39),
		blipcolor = 48,
    },
}

Crafting = {}

Crafting.Hob = {
	[1] = { ['chocice'] = { ['sugar'] = 1, ['chocchips'] = 3, ['vanillaescence'] = 1, ['cream'] = 1, }, },
	[2] = { ['vanice'] = { ['sugar'] = 2, ['vanillaescence'] = 1, ['cream'] = 1, }, },
    [3] = { ['caramelice'] = { ['sugar'] = 2, ['vanillaescence'] = 1, ['cream'] = 3, }, },
    [4] = { ['strawberryice'] = { ['sugar'] = 1, ['vanillaescence'] = 1, ['strawberry'] = 1, ['cream'] = 1, }, },
    [5] = { ['blueberryice'] = { ['sugar'] = 1, ['vanillaescence'] = 1, ['blueberry'] = 2, ['cream'] = 1, }, },
    [6] = { ['orangeice'] = { ['sugar'] = 1, ['vanillaescence'] = 1, ['orange'] = 1, ['cream'] = 1, }, },
    [7] = { ['mintice'] = { ['sugar'] = 1, ['vanillaescence'] = 1, ['mint'] = 3, ['cream'] = 1, }, },
    ------------------------Add more items here / must correspond to client.lua and server.lua
}
