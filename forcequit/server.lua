local Admins = {
  "steam:" -- Add licenses here for people who can use this command
}

function IsAdmin(player)
    local allowed = false
    for i,l in ipairs(Admins) do
        for x,d in ipairs(GetPlayerIdentifiers(player)) do
            if d == l then
                allowed = true
            end
        end
    end
    return allowed
end

AddEventHandler('playerConnecting', function(playerName, setKickReason)
    CanUse = IsAdmin(source)
end)

RegisterNetEvent("forcequit")
AddEventHandler("forcequit", function(id)
	CanUse = IsAdmin(source)
    if CanUse then
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
    else
        TriggerClientEvent("chatMessage", source, "",{255,0,0},"Permission Denied!")
    end
end)

RegisterNetEvent("forceload")
AddEventHandler("forceload", function(id)
	CanUse = IsAdmin(source)
    if CanUse then
        if id == "all" then
            print("User: "..GetPlayerName(source).." Forceload everyone!")
            TriggerClientEvent("ForceQuit",-1)
        elseif id ~= "all" and tonumber(id) ~= nil then
            if GetPlayerName(id) == nil then
                TriggerClientEvent("chatMessage", source, "Force Load",{255,0,0},"User not found!")
            else
                TriggerClientEvent("ForceLoad",id)
                TriggerClientEvent("chatMessage", source, "Force Load",{255,0,0},"Successfully Load User ^3"..GetPlayerName(id).."^7, ID: ^3"..id.."^7!")
            end
        else
            TriggerClientEvent("chatMessage", source, "Force Load",{255,0,0},"Please enter 'all' or an id!")
        end
    else
        TriggerClientEvent("chatMessage", source, "",{255,0,0},"Permission Denied!")
    end
end)

RegisterNetEvent("forcesplit")
AddEventHandler("forcesplit", function(id)
	CanUse = IsAdmin(source)
    if CanUse then
        if id == "all" then
            print("User: "..GetPlayerName(source).." Forcesplit everyone!")
            TriggerClientEvent("ForceSplit",-1)
        elseif id ~= "all" and tonumber(id) ~= nil then
            if GetPlayerName(id) == nil then
                TriggerClientEvent("chatMessage", source, "Force Split",{255,0,0},"User not found!")
            else
                TriggerClientEvent("ForceSplit",id)
                TriggerClientEvent("chatMessage", source, "Force Split",{255,0,0},"Successfully Split User ^3"..GetPlayerName(id).."^7, ID: ^3"..id.."^7!")
            end
        else
            TriggerClientEvent("chatMessage", source, "Force Split",{255,0,0},"Please enter 'all' or an id!")
        end
    else
        TriggerClientEvent("chatMessage", source, "",{255,0,0},"Permission Denied!")
    end
end)

