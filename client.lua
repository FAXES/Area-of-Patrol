----------------------------------
-- Area of Patrol, Made by FAXES--
----------------------------------
AddEventHandler('onClientMapStart', function()
    TriggerServerEvent('AOP:Sync')
    TriggerServerEvent('AOP:PTSync')
    TriggerEvent('AOP:JoinMsg')
end)


RegisterNetEvent('AOP:NoPerms')
AddEventHandler('AOP:NoPerms', function()
    TriggerEvent("chatMessage", "AOP Script", {255, 0, 0}, "Insufficient Permissions.")
end)
    
RegisterNetEvent('AOP:NoVote')
AddEventHandler('AOP:NoVote', function()
    TriggerEvent("chatMessage", "AOP Script", {255, 0, 0}, "AOP Vote Is Currently Not Active.")
end)

RegisterNetEvent('AOP:PTSound')
AddEventHandler('AOP:PTSound', function()
    PlaySoundFrontend(-1,"CONFIRM_BEEP", "HUD_MINI_GAME_SOUNDSET",1)
end)


peacetimeActive = false

RegisterNetEvent('AOP:SendAOP')
AddEventHandler('AOP:SendAOP', function(newCurAOP, newCurAOP2)
    FaxCurAOP = newCurAOP
	FaxCurAOP2 = newCurAOP2
end)
    
RegisterNetEvent('AOP:SendPT')
AddEventHandler('AOP:SendPT', function(newCurPT)
    peacetimeActive = newCurPT
end)
    
local year, month, day, hour, minute, second = GetLocalTime()

Citizen.CreateThread(function()
    while true do
    year, month, day, hour, minute, second = GetLocalTime()
        Citizen.Wait(1)
        local player = GetPlayerPed(-1)

        local newMinute = minute
        if minute < 10 then
            newMinute = "0" .. minute
        end

        if peacetimeActive then
            if peacetimeNS then
                -- DisableControlAction(2, 37, true) -- tab
                if IsControlPressed(0, 106) then
                    ShowInfo("~r~Peacetime is enabled. ~n~~s~You can not shoot.")
                end
                DisablePlayerFiring(player, true)
            end

            DrawTextAOP(0.660, 1.430, 1.0,1.0,0.45, "~p~Time: ~w~" .. hour .. ":" .. newMinute .. " ~p~| Date: ~w~" .. day .. "~p~/~w~" .. month .. "~p~/~w~" .. year, 255, 255, 255, 255)
            DrawTextAOP(0.660, 1.458, 1.0,1.0,0.45, "~w~Current ~r~AOP: ~w~" .. FaxCurAOP .. " " .. FaxCurAOP2 .. " ~p~| ~w~PeaceTime: ~g~Enabled", 255, 255, 255, 255)
        elseif not peacetimeActive then
            EnableControlAction(2, 37, true) -- tab
            DrawTextAOP(0.660, 1.430, 1.0,1.0,0.45, "~p~Time: ~w~" .. hour .. ":" .. newMinute .. " ~p~| Date: ~w~" .. day .. "~p~/~w~" .. month .. "~p~/~w~" .. year, 255, 255, 255, 255)
            DrawTextAOP(0.660, 1.458, 1.0,1.0,0.45, "~w~Current ~r~AOP: ~w~" .. FaxCurAOP .. " " .. FaxCurAOP2 .. " ~p~| ~w~PeaceTime: ~r~Disabled", 255, 255, 255, 255)
        end
	end
end)

RegisterNetEvent('AOP:JoinMsg')
AddEventHandler('AOP:JoinMsg', function()
    Wait(1000)
    TriggerEvent("chatMessage", " \n —————————————————————— \n Current RP Area is : " .. FaxCurAOP .. " " .. FaxCurAOP2 .. " \n ——————————————————————", {145, 145, 145})
end)

function DrawTextAOP(x,y ,width,height,scale, text, r,g,b,a)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(2, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end

function ShowInfo(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(true, false)
end