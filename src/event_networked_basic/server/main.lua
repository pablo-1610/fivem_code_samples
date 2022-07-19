RegisterNetEvent("event_networked", function()
    local serverId <const> = source

    TriggerClientEvent("pong", serverId)
end)