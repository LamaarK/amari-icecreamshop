![Amari Icecreamshop logo](https://github.com/LamaarK/amari-icecreamshop/assets/65554339/bf4c292e-f3da-46b1-ba6e-42311b43a9d0)

Inspired by Jimathy studying his amazing work, I have managed to create a small user owned Icecream shop from https://github.com/cmgjones1231/Sheep-FreeReleases MLO and Vehicle

Please make sure you download the resource above to have it work properly
**Requirements**
qb-core
qb-target
qb-menu
qb-input
jim-payemnts

For Support please visit my Discord : https://discord.gg/tEyueSVbFF **AND WAIT TILL YOU ARE GIVEN A ROLE (the discord is still new and we will sort the bots out soon**

Check the images for previews as I do not do videos at all 

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
    milk                         = { name = 'milk', label = 'Fresh Milk', weight = 100, type = 'item', image = 'milk.png', unique = true, useable = false, shouldClose = true, combinable = nil, description = '' },

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
![ingredients location](https://github.com/LamaarK/amari-icecreamshop/assets/65554339/fd2c5c18-5cf1-4323-bd3e-99c50af11758)
![icecream Churner2](https://github.com/LamaarK/amari-icecreamshop/assets/65554339/2beb0ba0-cc2a-4f9c-b7ae-3f41371b6423)
![icecream Churner](https://github.com/LamaarK/amari-icecreamshop/assets/65554339/abf8384f-ac49-4f34-beaa-bba8be56368b)
![duty location](https://github.com/LamaarK/amari-icecreamshop/assets/65554339/79bb8426-ee9d-46cc-aa41-09438136b708)
![Tray2](https://github.com/LamaarK/amari-icecreamshop/assets/65554339/359684c8-a34d-4362-8b5a-4f0c95471de1)
![Tray](https://github.com/LamaarK/amari-icecreamshop/assets/65554339/3620d3a6-c6e6-43c6-b332-529dccbb45f3)
![store items2](https://github.com/LamaarK/amari-icecreamshop/assets/65554339/eaf48844-3847-4fda-87bf-828ce3f6ad44)
![store items](https://github.com/LamaarK/amari-icecreamshop/assets/65554339/a0243791-d9b8-4a2b-915f-91072a5a7184)
![PayPoint](https://github.com/LamaarK/amari-icecreamshop/assets/65554339/cd2c66d0-75f1-4646-aac9-e68d838ddac7)
