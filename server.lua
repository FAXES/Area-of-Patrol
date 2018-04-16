-- Made by FAXES
AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aoplist' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent('AOP:List', player)
			CancelEvent()
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopbc' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : BLAINE COUNTY \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetMapName("RP : Blaine County")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopstate' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : STATEWIDE \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetMapName("RP : State Wide")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopls' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : LOS SANTOS \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetMapName("RP : Los Santos")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopvw' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : VINEWOOD \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetMapName("RP : VineWood")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopmp' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : MIRROR PARK \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetMapName("RP : Mirror Park")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopdt' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : DOWNTOWN LS \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetMapName("RP : DownTown Los Santos")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopdavis' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : DAVIS / STRAWBERRY \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetMapName("RP : Davis")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopdp' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : DEL PERRO \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetMapName("RP : Del Perro")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aoprh' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : ROCKFORD HILLS \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetMapName("RP : Rockford Hills")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopsandy' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : SANDY SHORES \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetMapName("RP : Sandy Shores")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopharm' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : HARMONY \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetMapName("RP : Harmony")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopgrape' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : GRAPESEED \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetMapName("RP : Grape Seed")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aoppb' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : PALETO BAY \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetMapName("RP : Paleto Bay")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/pton' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n PEACE TIME IS NOW IN EFFECT \n This Means No Priority Calls.  \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetGameType("Peace Time In Effect")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/ptoff' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n PEACE TIME IS NO LONGER IN EFFECT \n Resume Normal RP.  \n ——————————————————————", {239, 0, 0})
			CancelEvent()
			SetGameType("Freeroam")
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)

AddEventHandler('chatMessage', function(player, playerName, message)
    if message:sub(1) == '/aopvote' then
		if IsPlayerAceAllowed(player, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA VOTE \n Comment a RP area you want!  \n ——————————————————————", {239, 0, 0})
			CancelEvent()
		else
			TriggerClientEvent('AOP:NoPerms', player)
		end
    end
end)
-- Made by FAXES