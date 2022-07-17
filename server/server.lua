ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('police:getActive')
AddEventHandler('police:getActive', function(job)
   
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local job = xPlayer.job.name
    local grade = xPlayer.job.grade

	if job == 'offduty-police' then
		print("[Debug] Du bist nun im Dienst")

		xPlayer.setJob('police', grade)
	elseif job == 'police' then 
		print("[Debug] Du bist aus den Dienst gegangen")

		xPlayer.setJob('offduty-police', grade)
	end

end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(5000)
		print('[Virusexe] PoliceJob Resource is now available')
	end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		print('[Virusexe] PoliceJob Resource is now unavailable')
	end
end)