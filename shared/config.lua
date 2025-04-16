Config = {}

Config.Debug = false  -- Set to true to enable debug prints

Config.BaitItems = { 
    -- You can make certain bait be more effective than others.
    -- This bait item must match the name of your usable item from the database
    ["grizzly_bait"] = {
        prop = "s_grizzlybait01x", -- The object that gets placed on the ground when bait is used

        animals = {
            -- 🐻 Legendary Owiza Bear (specific preset outfit)
            {
                model = "mp_a_c_bear_01", -- Model name of the animal
                legendary = {
                    outfit = 1 -- Outfit preset ID for Legendary Bear (from https://pastebin.com/6Vc26NLL)
                }
            },
            -- 🐻 Grizzly Bear with random outfit (no preset)
            {
                model = "a_c_bear_01",
                legendary = {
                    random = true -- No preset 
                }
            }
        },
        waitBeforeSpawn = 15000,   -- Time (ms) before animal spawns after bait is placed
        noAnimalChance  = 0.25,    -- 25% chance that no animal spawns at all
        placeProp       = true,    -- true = place prop on ground, false = invisible bait
        useInspectAnim  = true     -- true = use inspect animation, false = use bait placing scenario
    },

    -- 📝 Add more bait types using this structure
}

Config.BlacklistZones = {
    {x = -296.72, y = 790.21, z = 118.38, radius = 250.0}, -- Valentine
    -- Add more blacklist zones here
}

Config.BearTrap = { -- Trap instantly kills animals
    Enabled = true, -- Enable or disable the bear trap feature
    ItemName = "bear_trap", -- Item name for the bear trap
    Model = "p_beartrap01x", -- Bear trap model
    TrapDetectionRadius = 2.0, -- Radius to detect entities
    FreePrompt = "Release Trap", -- Prompt text to free NPCs
}

Config.SpawnDistance = 80.0  -- Distance at which animals spawn far from the bait
Config.BaitUseTime = 3000     -- Time in milliseconds it takes to place the bait
Config.BaitStayTime = 10000   -- Time in milliseconds the animal stays at the bait if not alerted
Config.NoAnimalSpawnNotificationTime = 15000 -- Time in milliseconds to wait before notifying no animal spawned

Config.Locale = {
    baitRestricted = "You cannot use bait in this area.",
    baitPlaced = "Bait placed successfully.",
    animalApproaching = "An animal has been attracted to the bait.",
    animalReachedBait = "The animal has reached the bait.",
    noAnimal = "No animal seems to be approaching.",
    alreadyHaveBait = "You already have a bait down",
    returnBait = "You picked up the bait and got it back.",
    trapShot = "The trap has been deactivated by shooting!",
}
