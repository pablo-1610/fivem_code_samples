--[[
    Commands
--]]

RegisterCommand("order_burger", function()
    TriggerServerEvent("order_a_burger", "bbq-burger") -- Try to change the burger name !
end)

RegisterCommand("order_specific_burger", function(_, args)
    if (#args ~= 1) then
        print("Usage: order_specific_burger <burger_name>")
        return
    end

    local burgerName <const> = args[1]

    TriggerServerEvent("order_a_burger", burgerName)
end)

--[[
    Code
--]]

RegisterNetEvent("order_a_burger_cb", function(state)
    if (state == 0) then
        print("The burger is not available")
    else
        print("Your order has been saved !")
    end
end)