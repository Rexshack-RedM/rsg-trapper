local QRCore = exports['qr-core']:GetCoreObject()

RegisterServerEvent('rsg-trapper:server:reward')
AddEventHandler('rsg-trapper:server:reward', function(reward, rewarditem)
	local src = source
	local Player = QRCore.Functions.GetPlayer(src)
	local money = reward
	Player.Functions.AddMoney('cash', money)
	if rewarditem ~= false then
		TriggerServerEvent('QRCore:Server:AddItem', rewarditem, 1)
		TriggerEvent("inventory:client:ItemBox", QRCore.Shared.Items[rewarditem], "add")
	end
end)
