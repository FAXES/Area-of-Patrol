--[[
    -----------------------------------
    -- Area of Patrol, Made by FAXES --
    --          CONFIG FILE          --
    -----------------------------------

    !!!!!!!!!IMPORTANT!!!!!!!!!
    To see what each variable (configurable option) below does. Please view the link right below...

    Default / Variable Docs: https://docs.faxes.zone/docs/aop-setup/#variable-documentation
]]

--[[
    1. General Config & Commands
--]]

    FaxCurAOP = "None Set"
    usingPerms = true
    AOPChangeNotification = true

    AOPCommand = "aop"
    PTCommand = "pt"

    featColor = "~p~"
    noPermsMessage = "~r~Insufficient Permissions."


--[[
    2. Peacetime Settings
--]]

    peacetime = true
    peacetimeNS = true
    maxPTSpeed = 100

    PTOnMessage = featColor .. "Peace Time ~w~is now ~g~ in effect!"
    PTOffMessage = featColor .. "Peace Time ~w~is now ~r~off."


--[[
    3. DrawText Settings
--]]

    AOPLocation = 0
    serverPLD = false
    localTime = 1
    
    AOPx = 0.660
    AOPy = 1.430


--[[
    4. Auto AOP Settings
--]]

    autoChangeAOP = false

    ACAOPUnder5 = "Paleto Bay"
    ACAOPUnder10 = "Sandy Shores"
    ACAOPUnder20 = "Blaine County"
    ACAOPUnder30 = "Los Santos"
    ACAOPOver30 = "San Andreas"


--[[
    5. AOP Spawn Locations
--]]

    AOPSpawnsEnabled = false
    AOPSpawns = {
        {
            AOPName = 'sandy shores',
            AOPCoords  = {x = 311.22, y = 3457.60, z = 36.15}
        },
        {
            AOPName = 'paleto bay',
            AOPCoords  = {x = -447.24, y = 5970.46, z = 31.78}
        },
        {
            AOPName = 'downtown',
            AOPCoords  = {x = 219.98, y = -913.38, z = 30.69}
        },
        {
            AOPName = 'rockford hills',
            AOPCoords  = {x = -851.57, y = -128.04, z = 37.62}
        },
    }

-- NEW!
--[[
    6. Discord Permissions
    Make sure to have discord_perms installed and configured!
--]]

    usingDiscordPerms = false
    discordRoleIds = {
        "Role_ID",
        "Role_ID"
    }