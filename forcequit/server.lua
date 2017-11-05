RegisterNetEvent("forcequit")
AddEventHandler("forcequit", function(id)
	if id == "all" then
		print("User: "..GetPlayerName(source).." Forcequit everyone!")
		TriggerClientEvent("ForceQuit",-1)
	elseif id ~= "all" and tonumber(id) ~= nil then
		if GetPlayerName(id) == nil then
			TriggerClientEvent("chatMessage", source, "Force Quit",{255,0,0},"User not found!")
		else
			TriggerClientEvent("ForceQuit",id)
			TriggerClientEvent("chatMessage", source, "Force Quit",{255,0,0},"Successfully Quit User ^3"..GetPlayerName(id).."^7, ID: ^3"..id.."^7!")
		end
	else
		TriggerClientEvent("chatMessage", source, "Force Quit",{255,0,0},"Please enter 'all' or an id!")
	end
end)
