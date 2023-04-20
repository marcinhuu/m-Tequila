
Config = {}


-- ██╗░░░██╗████████╗██╗██╗░░░░░██╗████████╗██╗░░░██╗
-- ██║░░░██║╚══██╔══╝██║██║░░░░░██║╚══██╔══╝╚██╗░██╔╝
-- ██║░░░██║░░░██║░░░██║██║░░░░░██║░░░██║░░░░╚████╔╝░
-- ██║░░░██║░░░██║░░░██║██║░░░░░██║░░░██║░░░░░╚██╔╝░░
-- ╚██████╔╝░░░██║░░░██║███████╗██║░░░██║░░░░░░██║░░░
-- ░╚═════╝░░░░╚═╝░░░╚═╝╚══════╝╚═╝░░░╚═╝░░░░░░╚═╝░░░

Config.CoreName = "qb-core" -- Core name
Config.Job = "tequila" -- Job required
Config.BillingType = "okok" -- "qb", "jim", "okok"
Config.Target = "qb-target" -- Name of your target resource
Config.Input = "qb-input" -- Name of your input resource
Config.Menu = "qb-menu" -- Name of your menu resource
Config.InvLink = "qb-inventory/html/images/" -- Your directory images inventory
Config.Bossmenu = "qb-bossmenu:client:OpenMenu" -- Your trigger to open boss menu


-- ██████╗░██╗░░░░░██╗██████╗░
-- ██╔══██╗██║░░░░░██║██╔══██╗
-- ██████╦╝██║░░░░░██║██████╔╝
-- ██╔══██╗██║░░░░░██║██╔═══╝░
-- ██████╦╝███████╗██║██║░░░░░
-- ╚═════╝░╚══════╝╚═╝╚═╝░░░░░

Config.Blip = {
	Enable = true,
	Location = vector3(-563.2, 285.68, 82.18),
	Sprite = 266,
	Display = 2,
	Scale = 0.8,
	Colour = 14,
	Name = "Tequila-La-La",
}


-- ░██████╗████████╗░█████╗░░██████╗██╗░░██╗
-- ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║░░██║
-- ╚█████╗░░░░██║░░░███████║╚█████╗░███████║
-- ░╚═══██╗░░░██║░░░██╔══██║░╚═══██╗██╔══██║
-- ██████╔╝░░░██║░░░██║░░██║██████╔╝██║░░██║
-- ╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝

Config.Stash = {
	StashInvTrigger = "inventory:client:SetCurrentStash",
	OpenInvTrigger = "inventory:server:OpenInventory",
	NameOfStash = "Tequila_Storage",
	MaxWeighStash = 50000,
	MaxSlotsStash = 50,
}


-- ██████╗░██╗██╗░░░░░██╗░░░░░██╗███╗░░██╗░██████╗░
-- ██╔══██╗██║██║░░░░░██║░░░░░██║████╗░██║██╔════╝░
-- ██████╦╝██║██║░░░░░██║░░░░░██║██╔██╗██║██║░░██╗░
-- ██╔══██╗██║██║░░░░░██║░░░░░██║██║╚████║██║░░╚██╗
-- ██████╦╝██║███████╗███████╗██║██║░╚███║╚██████╔╝
-- ╚═════╝░╚═╝╚══════╝╚══════╝╚═╝╚═╝░░╚══╝░╚═════╝░

Config.Billing = {
	EnableCommand = true,
	Command = "tequilabill",
}


-- ░██████╗██╗░░██╗░█████╗░██████╗░
-- ██╔════╝██║░░██║██╔══██╗██╔══██╗
-- ╚█████╗░███████║██║░░██║██████╔╝
-- ░╚═══██╗██╔══██║██║░░██║██╔═══╝░
-- ██████╔ ██║░░██║╚█████╔╝██║░░░░░
-- ╚═════╝░╚═╝░░╚═╝░╚════╝░╚═╝░░░░░

Config.Items = {
    [1] = { name = "tq_banana", price = 0, amount = 10, info = {}, type = "item", slot = 1 },
    [2] = { name = "tq_caramel", price = 0, amount = 10, info = {}, type = "item", slot = 2, },
    [3] = { name = "tq_coconut", price = 0, amount = 10, info = {}, type = "item", slot = 3, },
    [4] = { name = "tq_orange", price = 0, amount = 10, info = {}, type = "item", slot = 4, },
    [5] = { name = "tq_kiwi", price = 0, amount = 10, info = {}, type = "item", slot = 5, },
    [6] = { name = "tq_sugar", price = 0, amount = 10, info = {}, type = "item", slot = 6, },
    [7] = { name = "tq_strawberry", price = 0, amount = 10, info = {}, type = "item", slot = 7, },
    [8] = { name = "tq_watermelon", price = 0, amount = 10, info = {}, type = "item", slot = 8, },
    [9] = { name = "tq_water", price = 0, amount = 10, info = {}, type = "item", slot = 9, },
}


-- ░█████╗░██████╗░░█████╗░███████╗████████╗░██████╗
-- ██╔══██╗██╔══██╗██╔══██╗██╔════╝╚══██╔══╝██╔════╝
-- ██║░░╚═╝██████╔╝███████║█████╗░░░░░██║░░░╚█████╗░
-- ██║░░██╗██╔══██╗██╔══██║██╔══╝░░░░░██║░░░░╚═══██╗
-- ╚█████╔╝██║░░██║██║░░██║██║░░░░░░░░██║░░░██████╔╝
-- ░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░░░░╚═╝░░░╚═════╝░

-- Craft non-alcoholic drinks
Config.NonAlcoholic = {
    ["tq_berry_hydrating"] = {
        hash = "tq_berry_hydrating",
        label = "Hydrating",
        materials = {
            [1] = { item = "tq_water",      amount = 1 },
            [2] = { item = "tq_strawberry", amount = 1 },
            [3] = { item = "tq_sugar",      amount = 1 },
        }
    },
    ["tq_green_dream"] = {
        hash = "tq_green_dream",
        label = "Green Dream",
        materials = {
            [1] = { item = "tq_water",       amount = 1 },
            [2] = { item = "tq_kiwi",        amount = 1 },
            [3] = { item = "tq_sugar",       amount = 1 },
        }
    },
    ["tq_island_breeze"] = {
        hash = "tq_island_breeze",
        label = "Island Breeze",
        materials = {
            [1] = { item = "tq_strawberry",  amount = 2 },
            [2] = { item = "tq_sugar",       amount = 1 },
            [3] = { item = "tq_water",       amount = 2 },
        }
    },
    ["tq_just_peachy"] = {
        hash = "tq_just_peachy",
        label = "Just Peachy",
        materials = {
            [1] = { item = "tq_water",       amount = 1 },
            [2] = { item = "tq_caramel",     amount = 1 },
            [3] = { item = "tq_sugar",       amount = 1 },
        }
    },
    ["tq_watermelon_dream"] = {
        hash = "tq_watermelon_dream",
        label = "Watermelon Dream",
        materials = {
            [1] = { item = "tq_water",    amount = 2 },
            [2] = { item = "tq_sugar",        amount = 1 },
            [3] = { item = "tq_watermelon",         amount = 1 },
        }
    },
    ["tq_kiwi_juice"] = {
        hash = "tq_kiwi_juice",
        label = "Kiwi Juice",
        materials = {
            [1] = { item = "tq_kiwi",    amount = 1 },
        }
    },
    ["tq_orange_juice"] = {
        hash = "tq_orange_juice",
        label = "Orange Juice",
        materials = {
            [1] = { item = "tq_orange",    amount = 1 },
        }
    },
    ["tq_strawberry_juice"] = {
        hash = "tq_strawberry_juice",
        label = "Strawberry Juice",
        materials = {
            [1] = { item = "tq_strawberry",    amount = 1 },
        }
    },
    ["tq_banana_juice"] = {
        hash = "tq_banana_juice",
        label = "Banana Juice",
        materials = {
            [1] = { item = "tq_banana",    amount = 1 },
        }
    },
}


-- Craft alcoholic drinks

Config.Alcoholic = {
    ["tq_cocktail"] = {
        hash = "tq_cocktail",
        label = "Cocktail",
        materials = {
            [1] = { item = "tq_water",      amount = 1 },
            [2] = { item = "tq_strawberry", amount = 1 },
            [3] = { item = "tq_sugar",      amount = 1 },
            [4] = { item = "tq_tequila",     amount = 1 },
        }
    },
    ["tq_coconut_drink"] = {
        hash = "tq_coconut_drink",
        label = "Coconut Drink",
        materials = {
            [1] = { item = "tq_water",       amount = 1 },
            [2] = { item = "tq_coconut",     amount = 1 },
            [3] = { item = "tq_sugar",       amount = 1 },
            [4] = { item = "tq_tequila",     amount = 1 },
        }
    },
    ["tq_island_fantasy"] = {
        hash = "tq_island_fantasy",
        label = "Island Fantasy",
        materials = {
            [1] = { item = "tq_orange",      amount = 1 },
            [2] = { item = "tq_sugar",       amount = 1 },
            [3] = { item = "tq_water",       amount = 1 },
            [4] = { item = "tq_tequila",     amount = 1 },
        }
    },
    ["tq_kamikaze"] = {
        hash = "tq_kamikaze",
        label = "Kamikaze",
        materials = {
            [1] = { item = "tq_water",       amount = 1 },
            [3] = { item = "tq_sugar",       amount = 1 },
            [4] = { item = "tq_tequila",     amount = 1 },
        }
    },
    ["tq_redhot_daquiri"] = {
        hash = "tq_redhot_daquiri",
        label = "Red Hot Daquiri",
        materials = {
            [1] = { item = "tq_water",           amount = 1 },
            [2] = { item = "tq_sugar",           amount = 1 },
            [3] = { item = "tq_watermelon",      amount = 1 },
            [4] = { item = "tq_daquiri",         amount = 1 },
        }
    },
}


Consumablesfood = {
    ["frozenyogurt"] = math.random(20, 20),
    ["tornedo"] = math.random(30, 30),
    ["wafels"] = math.random(40, 40),
    ["brownies"] = math.random(50, 50),
    ["crabcakes"] = math.random(60, 60),
    ["tq_banana_nut"] = math.random(20, 40),
    ["tq_chocolatecup"] = math.random(20, 40),
    ["tq_strawberrycup"] = math.random(20, 40),
}

Consumablestqdrinks = {
    ["tq_berry_hydrating"] = math.random(20, 40),
    ["tq_green_dream"] = math.random(20, 40),
    ["tq_island_breeze"] = math.random(20, 40),
    ["tq_just_peachy"] = math.random(20, 40),
    ["tq_watermelon_dream"] = math.random(20, 40),
    ["tq_ban_straw_juice"] = math.random(20, 40),
    ["tq_banana_juice"] = math.random(20, 40),
    ["tq_kiwi_juice"] = math.random(20, 40),
    ["tq_strawberry_juice"] = math.random(50, 50),
    ["tq_orange_juice"] = math.random(20, 40),
}

Consumablesalcodrinks = {
    ["tq_cocktail"] = math.random(50, 50),
    ["tq_coconut_drink"] = math.random(40, 40),
    ["tq_island_fantasy"] = math.random(30, 30),
    ["tq_kamikaze"] = math.random(20, 20),
    ["tq_redhot_daquiri"] = math.random(20, 20),
}