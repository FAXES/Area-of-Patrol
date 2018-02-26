-- Made by FAXES
AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aoplist' then
        TriggerClientEvent('AOPList', player)
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopbc' then --                        <- Command used to display the message          Message displayed server wide.
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : BLAINE COUNTY \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopstate' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : STATEWIDE \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopls' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : LOS SANTOS \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopvw' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : VINEWOOD \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopdt' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : DOWNTOWN LS \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopdavis' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : DAVIS / STRAWBERRY \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopdp' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : DEL PERRO \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aoprh' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : ROCKFORD HILLS \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopsandy' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : SANDY SHORES \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopharm' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : HARMONY \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopgrape' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : GRAPESEED \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aoppb' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : PALETO BAY \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/pton' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n PEACE TIME IS NOW IN EFFECT \n This Means No Priority Calls.  \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/ptoff' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n PEACE TIME IS NO LONGER IN EFFECT \n Resume Normal RP.  \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopvote' then
        TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA VOTE \n Comment a RP area you want!  \n ——————————————————————", {239, 0, 0})
        CancelEvent()
    end
end)
-- Made by FAXES