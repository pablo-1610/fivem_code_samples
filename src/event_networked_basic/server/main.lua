RegisterNetEvent("ping", function()
    local serverId <const> = source
    TriggerClientEvent("pong", serverId)
end)