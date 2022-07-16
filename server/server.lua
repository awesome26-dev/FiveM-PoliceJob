ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('policejob:forceBlip')
AddEventHandler('policejob:forceBlip', function()
	TriggerClientEvent('policejob:updateBlip', -1)
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(5000)
		TriggerClientEvent('policejob:updateBlip', -1)
		print(' Police Job Test Message')
	end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		print(' Police Job STOPING')
	end
end)
