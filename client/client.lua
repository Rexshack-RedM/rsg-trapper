local QRCore = exports['qr-core']:GetCoreObject()
local trapper
local name

-- prompts
Citizen.CreateThread(function()
    for trapper, v in pairs(Config.TrapperLocations) do
		local name = v.name
        exports['qr-core']:createPrompt(v.location, v.coords, QRCore.Shared.Keybinds['J'], 'Open ' .. v.name, {
            type = 'client',
            event = 'rsg-trapper:client:menu',
            args = { name },
        })
        if v.showblip == true then
            local TrapperBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(TrapperBlip, GetHashKey(Config.Blip.blipSprite), true)
            SetBlipScale(TrapperBlip, Config.Blip.blipScale)
			Citizen.InvokeNative(0x9CB1A1623062F402, TrapperBlip, Config.Blip.blipName)
        end
    end
end)

-- trapper menu
RegisterNetEvent('rsg-trapper:client:menu', function(trappername)
    exports['qr-menu']:openMenu({
        {
            header = trappername,
            isMenuHeader = true,
        },
        {
            header = "Sell Pelt",
            txt = "sell your animal pelts to the vendor",
			icon = "fas fa-paw",
            params = {
                event = 'rsg-trapper:client:sellpelt',
				isServer = false,
				args = {}
            }
        },
        {
            header = "Open Shop",
            txt = "buy items from the trapper",
			icon = "fas fa-shopping-basket",
            params = {
                event = 'rsg-trapper:client:OpenTrapperShop',
				isServer = false,
				args = {}
            }
        },
        {
            header = "Close Menu",
            txt = '',
            params = {
                event = 'qr-menu:closeMenu',
            }
        },
    })
end)

-- sell pelt to trapper
RegisterNetEvent('rsg-trapper:client:sellpelt')
AddEventHandler('rsg-trapper:client:sellpelt', function()
	local ped = PlayerPedId()
	local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, ped)
	local quality = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)
	if Config.Debug == true then
		print("holding: "..tostring(holding))
		print("quality: "..tostring(quality))
	end
	if holding ~= false then
		for i, row in pairs(Config.Pelts) do
			if quality == Config.Pelts[i]["pelthash"] then
				local reward = Config.Pelts[i]["reward"]
				local rewarditem = Config.Pelts[i]["rewarditem"]
				local name = Config.Pelts[i]["name"]
				if Config.Debug == true then
					print("reward: "..tostring(reward))
					print("name: "..tostring(name))
				end
				QRCore.Functions.Progressbar('sell-pelt', 'Selling '..name..'..', Config.SellTime, false, true, {
					disableMovement = true,
					disableCarMovement = false,
					disableMouse = false,
					disableCombat = true,
				}, {}, {}, {}, function() -- Done
					local deleted = DeleteThis(holding)
					if deleted then
						TriggerServerEvent("rsg-trapper:server:reward", reward, rewarditem)
					else
						QRCore.Functions.Notify('something went wrong!', 'error')
					end
				end)
			end
		end
	end
end)

-- delete holding
function DeleteThis(holding)
    NetworkRequestControlOfEntity(holding)
    SetEntityAsMissionEntity(holding, true, true)
    Wait(100)
    DeleteEntity(holding)
    Wait(500)
    local entitycheck = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
    local holdingcheck = GetPedType(entitycheck)
    if holdingcheck == 0 then
        return true
    else
        return false
    end
end

-- trapper shop
RegisterNetEvent('rsg-trapper:client:OpenTrapperShop')
AddEventHandler('rsg-trapper:client:OpenTrapperShop', function()
    local ShopItems = {}
    ShopItems.label = "Trapper Shop"
    ShopItems.items = Config.TrapperShop
    ShopItems.slots = #Config.TrapperShop
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "TrapperShop_"..math.random(1, 99), ShopItems)
end)
