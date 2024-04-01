![Amari Icecreamshop logo](https://github.com/LamaarK/amari-icecreamshop/assets/65554339/bf4c292e-f3da-46b1-ba6e-42311b43a9d0)


PASTE THE FOLLOWING under qb-core/shared/items :

    --- AMARI ICECREAMJOB

    chocice                      = { name = 'chocice', label = 'Chocolate Icecream', weight = 100, type = 'item', image = 'chocice.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },
    vanice                       = { name = 'vanice', label = 'Vanilla Icecream', weight = 100, type = 'item', image = 'vanice.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },
    caramelice                   = { name = 'caramelice', label = 'Caramel Icecream', weight = 100, type = 'item', image = 'caramelice.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },
    sugar                        = { name = 'chocice', label = 'Sugar', weight = 100, type = 'item', image = 'sugar.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },
    chocchips                    = { name = 'chocice', label = 'Chocolate Chips', weight = 100, type = 'item', image = 'chocchips.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },
    vanillaescence               = { name = 'chocice', label = 'Vanilla Escence', weight = 100, type = 'item', image = 'vanillaescence.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },
    mint                         = { name = 'chocice', label = 'Fresh Mint', weight = 100, type = 'item', image = 'mint.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },
    cream                        = { name = 'chocice', label = 'Fresh Cream', weight = 100, type = 'item', image = 'cream.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },
    orange                       = { name = 'chocice', label = 'Orange Fruit', weight = 100, type = 'item', image = 'orange.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },
    strawberry                   = { name = 'chocice', label = 'Hand Picked Strawberry', weight = 100, type = 'item', image = 'strawberry.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },
    blueberry                    = { name = 'chocice', label = 'Hand Picked Blueberry', weight = 100, type = 'item', image = 'blueberry.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },
    strawberryice                = { name = 'chocice', label = 'Strawberry Icecream', weight = 100, type = 'item', image = 'strawberryice.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },
    blueberryice                 = { name = 'chocice', label = 'Blueberry Icecream', weight = 100, type = 'item', image = 'blueberryice.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },
    orangeice                    = { name = 'chocice', label = 'Orange Icecream', weight = 100, type = 'item', image = 'orangeice.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },
    mintice                      = { name = 'chocice', label = 'Peppermint Icecream', weight = 100, type = 'item', image = 'mintice.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = '' },

--------------------------PASTE UNDER qb-core JOBS

	icecream = {
		label = 'Sundae Post',
		type = 'icecream',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
		},
	},
