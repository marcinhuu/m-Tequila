![Logo](https://media.discordapp.net/attachments/1019726083827961956/1080652557246013510/tequila.png)

# m-Tequila script for QB-Core

| If you are intested in recieving updates join the community here at **[Discord](https://discord.gg/marcinhu)**! |

# Preview

https://www.youtube.com/watch?v=8Xfsxl-soy8&feature=youtu.be

# Required

**Map**

https://forum.cfx.re/t/mlo-all-hassaric-s-maps-for-free/4776406

**qb-core/shared/items.lua**
```
    -- m-Tequila
	["tq_berry_hydrating"] 		= {["name"] = "tq_berry_hydrating", 		["label"] = "Berry Hydrating", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_berry_hydrating.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_cake"] 				= {["name"] = "tq_cake", 					["label"] = "Cake", 			 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_cake.png", 					["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_chocolate_cake"] 		= {["name"] = "tq_chocolate_cake", 			["label"] = "Chocolate Cake", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_chocolate_cake.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_cocktail"] 			= {["name"] = "tq_cocktail", 				["label"] = "Cocktail", 			 	 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_cocktail.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_coconut_drink"] 		= {["name"] = "tq_coconut_drink", 			["label"] = "Coconut Drink", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_coconut_drink.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_coffee"] 				= {["name"] = "tq_coffee", 					["label"] = "Coffee", 			 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_coffee.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_coffee_heart"] 		= {["name"] = "tq_coffee_heart", 			["label"] = "Coffee Heart", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_coffee_heart.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_green_dream"] 			= {["name"] = "tq_green_dream", 			["label"] = "Green Dream", 			 	 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_green_dream.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_island_breeze"] 		= {["name"] = "tq_island_breeze", 			["label"] = "Island Breeze", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_island_breeze.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_island_fantasy"] 		= {["name"] = "tq_island_fantasy", 			["label"] = "Island Fantasy", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_island_fantasy.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_just_peachy"] 			= {["name"] = "tq_just_peachy", 			["label"] = "Just Peachy", 			 	 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_just_peachy.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_kamikaze"] 			= {["name"] = "tq_kamikaze", 				["label"] = "Kamikaze", 			 	 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_kamikaze.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_redhot_daquiri"] 		= {["name"] = "tq_redhot_daquiri", 			["label"] = "Redhot Daquiri", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_redhot_daquiri.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_watermelon_dream"] 	= {["name"] = "tq_watermelon_dream", 		["label"] = "Watermelon Dream", 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_watermelon_dream.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_tequila"] 				= {["name"] = "tq_tequila", 				["label"] = "Tequila", 			 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_tequila.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_daquiri"] 				= {["name"] = "tq_daquiri", 				["label"] = "Daquiri", 			 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_daquiri.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_water"] 				= {["name"] = "tq_water", 					["label"] = "Water", 			 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_water.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_caramel"] 				= {["name"] = "tq_caramel", 				["label"] = "Caramel", 			 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_caramel.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_chocolate"] 			= {["name"] = "tq_chocolate", 				["label"] = "Chocolate", 			 	 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_chocolate.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_cheese"] 				= {["name"] = "tq_cheese", 					["label"] = "Cheese", 			 	 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_cheese.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_milk"] 				= {["name"] = "tq_milk", 					["label"] = "Milk", 			 	     ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_milk.png", 					["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	
		-- Juices
	["tq_orange_juice"] 		= {["name"] = "tq_orange_juice", 			["label"] = "Orange Juice", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_orange_juice.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_kiwi_juice"] 			= {["name"] = "tq_kiwi_juice", 				["label"] = "Kiwi Juice", 			 	 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_kiwi_juice.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_strawberry_juice"] 	= {["name"] = "tq_strawberry_juice", 		["label"] = "Strawberry Juice", 		 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_strawberry_juice.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_banana_juice"] 		= {["name"] = "tq_banana_juice", 			["label"] = "Banana Juice", 			 ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_banana_juice.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_ban_straw_juice"] 		= {["name"] = "tq_ban_straw_juice", 		["label"] = "Banana & Strawberry Juice", ["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_ban_straw_juice.png", 		["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},

	-- Fruits
	["tq_kiwi"] 			= {["name"] = "tq_kiwi", 						["label"] = "Kiwi", 			 		["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_kiwi.png", 					["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_orange"] 			= {["name"] = "tq_orange", 						["label"] = "Orange", 			 		["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_orange.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_strawberry"] 		= {["name"] = "tq_strawberry", 					["label"] = "Strawberry", 			 	["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_strawberry.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_sugar"] 			= {["name"] = "tq_sugar", 						["label"] = "Sugar", 			 		["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_sugar.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_watermelon"] 		= {["name"] = "tq_watermelon", 					["label"] = "Watermelon", 			 	["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_watermelon.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_banana"] 			= {["name"] = "tq_banana", 						["label"] = "Banana", 			 		["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_banana.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_coconut"] 			= {["name"] = "tq_coconut", 					["label"] = "Coconut", 			 		["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_coconut.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_banana_nut"] 		= {["name"] = "tq_banana_nut", 					["label"] = "banana nut", 			 	["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_banana_nut.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_chocolatecup"] 			= {["name"] = "tq_chocolatecup", 						["label"] = "chocolatecup", 			 		["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_chocolatecup.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
	["tq_strawberrycup"] 			= {["name"] = "tq_strawberrycup", 					["label"] = "Cocotq strawberrycupnut", 			 		["weight"] = 50, 	["type"] = "item", 	["image"] = "tq_strawberrycup.png", 				["unique"] = false,   	["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = ""},
```
# **qb-smallresources/config.lua**
	ConsumeablesDrink = {
	    ["tq_berry_hydrating"] = math.random(20, 40),
	    ["tq_green_dream"] = math.random(20, 40),
	    ["tq_island_breeze"] = math.random(20, 40),
	    ["tq_just_peachy"] = math.random(20, 40),
	    ["tq_watermelon_dream"] = math.random(20, 40),
	    ["tq_ban_straw_juice"] = math.random(20, 40),
	    ["tq_banana_juice"] = math.random(20, 40),
	    ["tq_kiwi_juice"] = math.random(20, 40),
	    ["tq_strawberry_juice"] = math.random(20, 40),
	    ["tq_orange_juice"] = math.random(20, 40),
		["tq_strawberrycup"] = math.random(20, 40),
		["tq-chocolatecup"] = math.random(20, 40),
		["tq_banana_nut"] = math.random(20, 40),
	}

	ConsumeablesEat = {
		["tq_banana_nut"] = math.random(20, 40),
		["tq_chocolatecup"] = math.random(20, 40),
		["tq_strawberrycup"] = math.random(20, 40),
	}

	ConsumeablesAlcohol = {
	    ["tq_cocktail"] = math.random(20, 30),
	    ["tq_coconut_drink"] = math.random(30, 40),
	    ["tq_island_fantasy"] = math.random(20, 40),
	    ["tq_kamikaze"] = math.random(20, 40),
	    ["tq_redhot_daquiri"] = math.random(20, 40),
	}

# **qb-core/shared/jobs.lua**
	['tequila'] = {
        label = 'Tequila',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
            ['1'] = {
                name = 'Employee',
                payment = 75
            },
            ['2'] = {
                name = 'Manager',
                payment = 100
            },
            ['3'] = {
                name = 'Chief',
                isboss = true,
                payment = 150
            },
        },
    },