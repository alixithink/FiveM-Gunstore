Config = {}

---- Ammunation Locations ----
Config.amLocations = {
    {x=1692.51, y=3759.231, z=34.70532}, -- Sandy Shores
    {x=252.0034, y=-49.02517, z=69.94103}, -- Vinewood
    {x=843.4656, y=-1033.941, z=28.19487}, -- La Mesa
    {x=-331.4591, y=6083.213, z=31.45477}, -- Paleto Bay
    {x=-663.365, y=-934.9255, z=21.82923}, -- Little Soul I
    {x=-1305.222, y=-393.4355, z=36.69576}, -- Little Soul II
    {x=-1118.951, y=2697.967, z=18.55415}, -- Zancudo
    {x=-3172.753, y=1086.958, z=20.83875}, -- Chumash
    {x=2568.681, y=293.9254, z=108.7349}, -- Palomina Highway
    {x=21.11749, y=-1106.413, z=29.79702}, -- South LS

}

---- Allow Weapons ----
-- Melee Weapons --

Config.doMelee = {
    { displayName = "Dagger", name ="weapon_dagger"},
    { displayName = "Bat", name ="weapon_bat"},
    { displayName = "Bottle", name ="weapon_bottle"},
    { displayName = "Crowbar", name ="weapon_crowbar"},
    { displayName = "Flashlight", name ="weapon_flashlight"},
    { displayName = "Golfclub", name ="weapon_golfclub"},
    { displayName = "Hammer", name ="weapon_hammer"},
    { displayName = "Hatchet", name ="weapon_hatchet"},
    { displayName = "Brass Knuckles", name ="weapon_knuckle"},
    { displayName = "Knife", name ="weapon_knife"},
    { displayName = "Machete", name ="weapon_machete"},
    { displayName = "Switch Blade", name ="weapon_switchblade"},
    { displayName = "Nightstick", name ="weapon_nightstick"},
    { displayName = "Wrench", name ="weapon_wrench"},
    { displayName = "Battle Axe", name ="weapon_battleaxe"},
    { displayName = "Pool Cue", name ="weapon_poolcue"},
    { displayName = "Stone Hatchet", name ="weapon_stone_hatchet"}
}


-- Handguns --

Config.doPistol = {
    { displayName = "Pistol", name = "weapon_pistol" },
    { displayName = "Combat Pistol", name = "weapon_combatpistol" },
    { displayName = "AP Pistol", name = "weapon_appistol" },
    { displayName = "Stun Gun", name = "weapon_stungun" },
    { displayName = "Pistol .50", name = "weapon_pistol50" },
    { displayName = "SNS Pistol", name = "weapon_snspistol" },
    { displayName = "Heavy Pistol", name = "weapon_heavypistol" },
    { displayName = "Vintage Pistol", name = "weapon_vintagepistol" },
    { displayName = "Flare Gun", name = "weapon_flaregun" },
    { displayName = "Marksman Pistol", name = "weapon_marksmanpistol" },
    { displayName = "Revolver", name = "weapon_revolver" },
    { displayName = "Ray Gun", name = "weapon_raypistol" },
}


-- SMG's --

Config.doSMG = {
    { displayName = "Micro SMG", name = "weapon_microsmg" },
    { displayName = "SMG", name = "weapon_smg" },
    { displayName = "Assault SMG", name = "weapon_assaultsmg" },
    { displayName = "Combat PDW", name = "weapon_combatpdw" },
    { displayName = "Machine Pistol", name = "weapon_machinepistol" },
    { displayName = "Mini SMG", name = "weapon_minismg" },
    { displayName = "Ray Carbine", name = "weapon_raycarbine" },
}


-- Shotgun's --

Config.doShotgun = {
    { displayName = "Pump Shotgun", name = "weapon_pumpshotgun" },
    { displayName = "Sawnoff Shotgun", name = "weapon_sawnoffshotgun" },
    { displayName = "Assault Shotgun", name = "weapon_assaultshotgun" },
    { displayName = "Bullpup Shotgun", name = "weapon_bullpupshotgun" },
    { displayName = "Musket", name = "weapon_musket" },
    { displayName = "Heavy Shotgun", name = "weapon_heavyshotgun" },
    { displayName = "Doube Barrel Shotgun", name = "weapon_dbshotgun" },
    { displayName = "Auto Shotgun", name = "weapon_autoshotgun" },
}


-- Assault Rifle --

Config.doRifle = {
    { displayName = "Assault Rifle", name = "weapon_assaultrifle" },
    { displayName = "Carbine Rifle", name = "weapon_carbinerifle"},
    { displayName = "Advanced Rifle", name = "weapon_advancedrifle" },
    { displayName = "Special Carbine", name = "weapon_specialcarbine" },
    { displayName = "Bullpup Rifle", name = "weapon_bullpuprifle" },
    { displayName = "Compact Rifle", name = "weapon_compactrifle" }
}


-- Light Machine Guns --

Config.doLMG = {
    { displayName = "MG", name = "weapon_mg" },
    { displayName = "Combat MG", name = "weapon_combatmg" },
    { displayName = "Gusenberg Sweeper", name = "weapon_gusenberg" },
}


-- Sniper Rifles --

Config.doSniper = {
    { displayName = "Sniper Rifle", name = "weapon_sniperrifle"},
    { displayName = "Heavy Sniper Rifle", name = "weapon_heavysniper"},
    { displayName = "Marksman Rifle", name = "weapon_marksmanrifle"},
}


-- Heavy Weapons --

Config.doHeavy = {
    { displayName = "RPG", name = "weapon_rpg" },
    { displayName = "Grenade Launcher", name = "weapon_grenadelauncher" },
    { displayName = "Minigun", name = "weapon_minigun" },
    { displayName = "Firework Launcher", name = "weapon_firework" },
    { displayName = "Railgun", name = "weapon_railgun" },
    { displayName = "Homing Launcher", name = "weapon_hominglauncher" },
    { displayName = "Compact Launcher", name = "weapon_compactlauncher" },
    { displayName = "Ray Minigun", name = "weapon_rayminigun" },
}


-- Throwables --

Config.doThrowable = {
    { displayName = "Grenade", name = "weapon_grenade"},
    { displayName = "BZ Gas", name = "weapon_bzgas"},
    { displayName = "Molotov", name = "weapon_molotov"},
    { displayName = "Sticky Bomb", name = "weapon_stickybomb"},
    { displayName = "Proxmine", name = "weapon_proxmine"},
    { displayName = "Snowball", name = "weapon_snowball"},
    { displayName = "Pipe Bomb", name = "weapon_pipebomb"},
    { displayName = "Ball", name = "weapon_ball"},
    { displayName = "Smoke Grenade", name = "weapon_smokegrenade"},
    { displayName = "Flare", name = "weapon_flare"},
}


-- Misc --

Config.doMisc = {
    { displayName = "Petrol Can", name = "weapon_petrolcan"},
    { displayName = "Parachute", name = "weapon_parachute"},
    { displayName = "Fire Extinguisher", name = "weapon_fireextinguisher"},
}

-- Ammo --

Config.doAmmo = {
    { displayName = "Pistol", name = "weapon_pistol" },
    { displayName = "SMG", name = "weapon_smg" },
    { displayName = "Shotgun", name = "weapon_pumpshotgun" },
    { displayName = "Rifle", name = "weapon_assaultrifle" },
    { displayName = "Light Machine Gun", name = "weapon_mg" },
    { displayName = "Sniper Rifle", name = "weapon_sniper" },
    { displayName = "RPG", name = "weapon_rpg" },
    { displayName = "Grenade Launcher", name = "weapon_grenadelauncher" },
    { displayName = "Minigun", name = "weapon_minigun" },
    { displayName = "Firework Launcher", name = "weapon_firework" },
    { displayName = "Railgun", name = "weapon_railgun" },
    { displayName = "Homing Launcher", name = "weapon_hominglauncher" },
    { displayName = "Compact Launcher", name = "weapon_compactlauncher" },
    { displayName = "Ray Minigun", name = "weapon_rayminigun" },
}