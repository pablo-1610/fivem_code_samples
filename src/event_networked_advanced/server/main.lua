local BURGERS <const> = {
    "big-mac",
    "bbq-burger",
    "cheeseburger",
    "chicken-burger",
}

local function isBurgerAvailable(burgerName)
    for _, burger in ipairs(BURGERS) do
        if (burger == burgerName) then
            return true
        end
    end
    return false
end

RegisterNetEvent("order_a_burger", function(burgerName)
    local serverId <const> = source

    if (not (isBurgerAvailable(burgerName))) then
        -- Security example
        TriggerClientEvent("order_a_burger_cb", serverId, 0)
        return
    end
    SetTimeout(5000, function()
        TriggerClientEvent("order_a_burger_cb", serverId, 1)
    end)
end)