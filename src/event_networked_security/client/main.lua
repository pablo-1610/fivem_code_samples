--[[
    Commands
--]]

RegisterCommand("flood", function()
    for _ = 1, 5 do
        -- Do it 5 times
        TriggerServerEvent("flood_me")
    end
end)

--[[
    Code
--]]

RegisterNetEvent("flood_me_cb", function()
    print("I sent a flood !")
end)