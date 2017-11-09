RegisterCommand("forcequit", function(source,args,cantremember)
	for k,v in pairs(args) do
		if k == 1 then
			id = v
			TriggerServerEvent("forcequit", id)
		end
	end
end, false)

RegisterNetEvent("ForceQuit")
AddEventHandler("ForceQuit", function()
	ForceSocialClubUpdate()
end)

RegisterCommand("forceload", function(source,args,cantremember)
	for k,v in pairs(args) do
		if k == 1 then
			id = v
			TriggerServerEvent("forceload", id)
		end
	end
end, false)

RegisterNetEvent("ForceLoad")
AddEventHandler("ForceLoad", function()
	ShutdownAndLaunchSinglePlayerGame()
end)

RegisterCommand("forcesplit", function(source,args,cantremember)
	for k,v in pairs(args) do
		if k == 1 then
			id = v
			TriggerServerEvent("forcesplit", id)
		end
	end
end, false)

RegisterNetEvent("ForceSplit")
AddEventHandler("ForceSplit", function()
	NetworkBail()
end)
