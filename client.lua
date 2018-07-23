----------------------------------
-- Area of Patrol, Made by FAXES--
----------------------------------
AddEventHandler('playerSpawned', function()
    TriggerServerEvent('AOP:Sync')
end)

-- No longer in use....
RegisterNetEvent('AOP:List')
AddEventHandler('AOP:List', function()
	TriggerEvent("chatMessage", "AOP Script", {255, 0, 0}, "Blaine County [/aopbc], State Wide [/aopstate], Los Santos [/aopls], Vinewood [/aopvw], Mirror Park [/aopmp] Pillbox Hill / Downtown [aopdt], Davis [/aopdavis], Del Perro [/aopdp], Rockford Hills [/aoprh], Sandy Shores [/aopsandy], Harmony [/aopharm], GrapeSeed [/aopgrape], Paleto Bay [/aoppb], ^4Peace Time On [/pton], Peace Time Off [/ptoff], ^3RP Area Vote [/aopvote]")
end)

AddEventHandler('chatMessage', function(source, name, msg)
    RegisterNetEvent('AOP:NoPerms')
    AddEventHandler('AOP:NoPerms', function()
        TriggerEvent("chatMessage", "AOP Script", {255, 0, 0}, "Insignificant Permissions to run command.")
    end)
        
    RegisterNetEvent('AOP:NoVote')
    AddEventHandler('AOP:NoVote', function()
        TriggerEvent("chatMessage", "AOP Script", {255, 0, 0}, "AOP Vote Is Currently Not Active.")
    end)
end)

FaxCurAOP = "None"
FaxCurAOP2 = "Set"

RegisterNetEvent('AOP:SendAOP')
AddEventHandler('AOP:SendAOP', function(newCurAOP, newCurAOP2)
    FaxCurAOP = newCurAOP
	FaxCurAOP2 = newCurAOP2
end)
    
local year, month, day, hour, minute, second = GetLocalTime()

Citizen.CreateThread(function()
    while true do
    year, month, day, hour, minute, second = GetLocalTime()
        Citizen.Wait(1)
		DrawText2(0.660, 1.458, 1.0,1.0,0.45, "~p~Time: ~w~" .. hour .. ":" .. minute .. " ~p~|  ~w~Current ~r~AOP: ~w~" .. FaxCurAOP .. " " .. FaxCurAOP2, 255, 255, 255, 255)
	end
end)

function DrawText2(x,y ,width,height,scale, text, r,g,b,a)
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