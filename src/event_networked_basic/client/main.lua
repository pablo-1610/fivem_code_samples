--[[
    Commands
--]]

RegisterCommand("ping", function()
    TriggerServerEvent("ping")
end)

--[[
    Code
--]]

RegisterNetEvent("pong", function()
    print("I received a pong !")
end)