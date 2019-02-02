----------------------------------
-- Area of Patrol, Made by FAXES--
----------------------------------

--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---


local cooldown = 0
peacetimeActive = false
local year, month, day, hour, minute, second = GetLocalTime()
local AOPxNew = 0.660
local AOPyNew = 1.430
local AOPyNew2 = 1.430

AddEventHandler('onClientMapStart', function()
    TriggerEvent('AOP:RunConfig')
    Wait(1000)
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

RegisterNetEvent('AOP:RunConfig')
AddEventHandler('AOP:RunConfig', function()
    Citizen.Trace("[FAXES AOP SCRIPT] Config Ran")
    if AOPLocation == 0 then -- Default
        if serverPLD then
            AOPxNew = 0.660
            AOPyNew = 1.370
            AOPyNew2 = AOPyNew + 0.025
        else
            AOPxNew = 0.660
            AOPyNew = 1.430
            AOPyNew2 = AOPyNew + 0.025
        end
    elseif AOPLocation == 1 then -- Bottom Center
        AOPxNew = 1.000
        AOPyNew = 1.430
        AOPyNew2 = AOPyNew + 0.025
    elseif AOPLocation == 2 then -- Bottom Right [WIP]
        AOPxNew = 0.660
        AOPyNew = 1.430
        AOPyNew2 = AOPyNew + 0.025
    elseif AOPLocation == 3 then -- Top Right [WIP]
        AOPxNew = 0.660
        AOPyNew = 1.430
        AOPyNew2 = AOPyNew + 0.025
    elseif AOPLocation == 4 then -- Top Center
        AOPxNew = 1.000
        AOPyNew = 0.50
        AOPyNew2 = AOPyNew + 0.025
    elseif AOPLocation == 5 then -- Top Left
        AOPxNew = 0.00
        AOPyNew = 0.50
        AOPyNew2 = AOPyNew + 0.025
    elseif AOPLocation == 6 then -- Custom
        AOPxNew = AOPx
        AOPyNew = AOPy
        AOPyNew2 = AOPyNew + 0.025
    end
end)


RegisterNetEvent('AOP:SendAOP')
AddEventHandler('AOP:SendAOP', function(newCurAOP)
    FaxCurAOP = newCurAOP
end)
    
RegisterNetEvent('AOP:SendPT')
AddEventHandler('AOP:SendPT', function(newCurPT)
    peacetimeActive = newCurPT
end)

Citizen.CreateThread(function()
    while true do
        if localTime then
            year, month, day, hour, minute, second = GetLocalTime()
        else
            year = GetClockYear()
            month = GetClockMonth()
            day = GetClockDayOfMonth()
            hour = GetClockHours()
            minute = GetClockMinutes()
            second = GetClockSeconds()
        end
        Citizen.Wait(1)
        local player = GetPlayerPed(-1)
        local veh = GetVehiclePedIsIn(player)
        local mph = math.ceil(GetEntitySpeed(veh) * 2.23)

        local newMinute = minute
        if minute < 10 then
            newMinute = "0" .. minute
        end

        if peacetimeActive then
            if peacetimeNS then
                if IsControlPressed(0, 106) then
                    ShowInfo("~r~Peacetime is enabled. ~n~~s~You can not shoot.")
                end
                SetPlayerCanDoDriveBy(player, false)
                DisablePlayerFiring(player, true)
                DisableControlAction(0, 140) -- Melee R

                if GetPedInVehicleSeat(veh, -1) == player then
                    if mph > maxPTSpeed then
                        ShowInfo("~r~Please keep in mind peacetime is active! ~n~~w~Slow down or stop.")
                    end
                end
            end

            DrawTextAOP(AOPxNew, AOPyNew, 1.0,1.0,0.45, "~p~Time: ~w~" .. hour .. ":" .. newMinute .. " ~p~| Date: ~w~" .. day .. "~p~/~w~" .. month .. "~p~/~w~" .. year, 255, 255, 255, 255)
            DrawTextAOP(AOPxNew, AOPyNew2, 1.0,1.0,0.45, "~w~Current ~r~AOP: ~w~" .. FaxCurAOP .. " ~p~| ~w~PeaceTime: ~g~Enabled", 255, 255, 255, 255)
        elseif not peacetimeActive then
            if peacetime then
                DrawTextAOP(AOPxNew, AOPyNew, 1.0,1.0,0.45, "~p~Time: ~w~" .. hour .. ":" .. newMinute .. " ~p~| Date: ~w~" .. day .. "~p~/~w~" .. month .. "~p~/~w~" .. year, 255, 255, 255, 255)
                DrawTextAOP(AOPxNew, AOPyNew2, 1.0,1.0,0.45, "~w~Current ~r~AOP: ~w~" .. FaxCurAOP .. " ~p~| ~w~PeaceTime: ~r~Disabled", 255, 255, 255, 255)
            else
                DrawTextAOP(AOPxNew, AOPyNew, 1.0,1.0,0.45, "~p~Time: ~w~" .. hour .. ":" .. newMinute, 255, 255, 255, 255)
                DrawTextAOP(AOPxNew, AOPyNew2, 1.0,1.0,0.45, "Date: ~w~" .. day .. "~p~/~w~" .. month .. "~p~/~w~" .. year .. " ~p~| ~w~Current ~r~AOP: ~w~" .. FaxCurAOP, 255, 255, 255, 255)
            end
        end
	end
end)

RegisterNetEvent('AOP:JoinMsg')
AddEventHandler('AOP:JoinMsg', function()
    Wait(1000)
    TriggerEvent("chatMessage", " \n —————————————————————— \n Current RP Area is : " .. FaxCurAOP .. " \n ——————————————————————", {145, 145, 145})
end)

function DrawTextAOP(x,y ,width,height,scale, text, r,g,b,a)
    if AOPLocation == 1 or AOPLocation == 4 then
        SetTextCentre(true)
    end
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