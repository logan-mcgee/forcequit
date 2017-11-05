RegisterCommand("forcequit", function(source,args,cantremember)
	for k,v in pairs(args) do
		if k == 1 then
			id = v
			TriggerServerEvent("forcequit", id)
		end
	end
end, true)

RegisterNetEvent("ForceQuit")
AddEventHandler("ForceQuit", function()
	ForceSocialClubUpdate()
end)