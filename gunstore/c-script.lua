gunMenuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("Ammunation", "~b~Welcome to the Ammunation")
gunMenuPool:Add(mainMenu)

function addItem(name, weapon)
    local newItem = NativeUI.CreateItem(name, "Gives ".. name)
    newItem.Activated = function(sender, item)
        if item == newItem then
            conditions = ableToBuy(weapon)
            if conditions == true then
                giveWeapon(weapon)
                notify('You have got a ~r~'.. name ..'~w~.')
            end
        end
    end
    return newItem
end

function addAmmoBuy(name, weapon)
    local newItem = NativeUI.CreateItem(name, "Gives" .. name .. " ammo")
    newItem.Activated = function(sender, item)
        if item == newItem then
            conditions = ableToBuyAmmo(weapon)
            if conditions == true then
                addAmmo(weapon, 10)
                notify('You have got another 10 rounds for the ~r~'.. name .. '~w~.')
            end
        end
    end
    return newItem
end

function addMeleeItem(name, weapon)
    local newItem = NativeUI.CreateItem(name, "Gives ".. name)
    newItem.Activated = function(sender, item)
        if item == newItem then
            conditions = ableToBuy(weapon)
            if conditions == true then
                giveMeleeWeapon(weapon)
                notify('You have got a ~r~'.. name ..'~w~.')
            end
        end
    end
    return newItem
end

function meleeSub(menu)
    local meleeSubM = gunMenuPool:AddSubMenu(menu, "Melee Weapons")

    for i = 1, #Config.doMelee do
        meleeSubM:AddItem(addMeleeItem(Config.doMelee[i].displayName, Config.doMelee[i].name))
    end
end

function pistolSub(menu)
    local handGunSubM = gunMenuPool:AddSubMenu(menu, "Handguns")
    
    ---- Adds items to menu ----
    for i = 1, #Config.doPistol do
        handGunSubM:AddItem(addItem(Config.doPistol[i].displayName, Config.doPistol[i].name))
    end


    -- ---- Buy Handgun Ammo
    -- local buyAmmoHGM = gunMenuPool:AddSubMenu(handGunSubM, "Buy Handgun Ammo")

    -- -- Hand Ammo --
    -- local itemPistolAmmo = NativeUI.CreateItem("Pistol Ammo", "Gives Pistol Ammo")
    -- itemPistolAmmo.Activated = function(sender, item)
    --     if item == itemPistolAmmo then
    --         conditions = ableToBuyAmmo("weapon_pistol")
    --         if conditions == true then
    --             addAmmo("weapon_pistol", 12)
    --             notify("You have bought a Pistol mag.")
    --         end
    --     end
    -- end

    -- buyAmmoHGM:AddItem(itemPistolAmmo)
end

function smgSub(menu)
    local smgSubM = gunMenuPool:AddSubMenu(menu, "Submachine Guns")

    ---- Adds items to menu ----
    for i = 1, #Config.doSMG do
        smgSubM:AddItem(addItem(Config.doSMG[i].displayName, Config.doSMG[i].name))
    end
end

function shotgunSub(menu)
    local shotgunSubM = gunMenuPool:AddSubMenu(menu, "Shotgun Guns")

    ---- Adds items to menu ----
    for i = 1, #Config.doShotgun do
        shotgunSubM:AddItem(addItem(Config.doShotgun[i].displayName, Config.doShotgun[i].name))
    end
end

function assaultRifleSub(menu)
    local assaultRifleM = gunMenuPool:AddSubMenu(menu, "Assault Rifle")

    for i = 1, #Config.doRifle do
        assaultRifleM:AddItem(addItem(Config.doRifle[i].displayName, Config.doRifle[i].name))
    end
end

function lmgSub(menu)
    local lmgSubM = gunMenuPool:AddSubMenu(menu, "Light Machine Guns")

    for i = 1, #Config.doLMG do
        lmgSubM:AddItem(addItem(Config.doLMG[i].displayName, Config.doLMG[i].name))
    end
end

function sniperSub(menu)
    local sniperSubM = gunMenuPool:AddSubMenu(menu, "Sniper Rifles")

    for i = 1, #Config.doSniper do
        sniperSubM:AddItem(addItem(Config.doSniper[i].displayName, Config.doSniper[i].name))
    end
end

function heavySub(menu)
    local heavySubM = gunMenuPool:AddSubMenu(menu, "Heavy Weapons")

    for i = 1, #Config.doHeavy do
        heavySubM:AddItem(addItem(Config.doHeavy[i].displayName, Config.doHeavy[i].name))
    end
end

function throwableSub(menu)
    local throwableSubM = gunMenuPool:AddSubMenu(menu, "Throwable Weapons")

    for i = 1, #Config.doThrowable do
        throwableSubM:AddItem(addItem(Config.doThrowable[i].displayName, Config.doThrowable[i].name))
    end
end

function miscSub(menu)
    local miscSubM = gunMenuPool:AddSubMenu(menu, "Misc Weapons")

    for i = 1, #Config.doMisc do
        miscSubM:AddItem(addItem(Config.doMisc[i].displayName, Config.doMisc[i].name))
    end
end

function buyAmmoSub(menu)
    local buyAmmoSubM = gunMenuPool:AddSubMenu(menu, "Buy Ammo")

    for i = 1, #Config.doAmmo do
        buyAmmoSubM:AddItem(addAmmoBuy(Config.doAmmo[i].displayName, Config.doAmmo[i].name))
    end
end

---- Add Items to mainMenu ----
meleeSub(mainMenu)
pistolSub(mainMenu)
smgSub(mainMenu)
shotgunSub(mainMenu)
assaultRifleSub(mainMenu)
lmgSub(mainMenu)
sniperSub(mainMenu)
heavySub(mainMenu)
throwableSub(mainMenu)
miscSub(mainMenu)
buyAmmoSub(mainMenu)
gunMenuPool:RefreshIndex()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        gunMenuPool:ProcessMenus()
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if nearStore() == true then
            alert('Press ~b~E~w~ to open menu.')
            if IsControlJustReleased(1, 38) then
                mainMenu:Visible(true)
            end
            
        else
            mainMenu:Visible(false)
        end
    end
end)


---- Near Ammunation ----
function nearStore()
    for i = 1, #Config.amLocations do
		local coords = GetEntityCoords(PlayerPedId(), 0)
		local dist = Vdist(Config.amLocations[i].x, Config.amLocations[i].y, Config.amLocations[i].z, coords.x, coords.y, coords.z)
		if dist < 1.6 then
			distance = dist
			pos = Config.amLocations[i]
            return true
        end
	end
end

---- Give Weapon ----
function giveWeapon(hash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(hash), 1, false, true)
end

function giveMeleeWeapon(hash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(hash), 1, true, true)
    SetPedAmmo(GetPlayerPed(-1), GetHashKey(hash), 1)
end

function hasWeapon(hash)
    print(HasPedGotWeapon(GetPlayerPed(-1), GetHashKey(hash), false))
    return HasPedGotWeapon(GetPlayerPed(-1), GetHashKey(hash), false)
end

function addAmmo(hash, amount)
    AddAmmoToPed(GetPlayerPed(-1), GetHashKey(hash), amount)
end

---- Notifications ----
function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end

function alert(msg) 
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

---- Do conditions to see if the user is able to buy the weapon ----
function ableToBuy(weapon)
    if hasWeapon(weapon) == 1 then
        notify('Sorry but you already have this item.')
        return false
    elseif hasWeapon(weapon) == false then
        return true
    end
end

function ableToBuyAmmo(weapon)
    -- if hasWeapon(weapon) == false then
    --     notify('Sorry but you need the weapon to buy the ammo.')
    --     return false
    -- elseif hasWeapon(weapon) == 1 then
    --     return true
    -- end
    return true
end