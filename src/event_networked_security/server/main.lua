local coolDown = {}

--- Remove the player from the cool down
--- @param serverId number player server id
local function removeFromCoolDown(serverId)
    for i = 1, #coolDown do
        if (coolDown[i] == serverId) then
            table.remove(coolDown, i)
            return
        end
    end
end

--- Start the cool down
--- @param serverId number player server id
local function doCoolDown(serverId)
    table.insert(coolDown, serverId)
    SetTimeout(5000, function()
        removeFromCoolDown(serverId)
    end)
end

--- Check if the player is in the cool down
--- @param serverId number player server id
--- @return boolean true if the player is in the coolDown, false otherwise
local function isOnCoolDown(serverId)
    for _, otherServerId in ipairs(coolDown) do
        if (serverId == otherServerId) then
            return true
        end
    end
    return false
end

RegisterNetEvent("flood_me", function()
    local serverId <const> = source

    if (isOnCoolDown(serverId)) then
        print("Player id %i tried to flood the server", serverId)
        return
    end
    TriggerClientEvent("flood_me_cb", serverId)
    doCoolDown(serverId)
end)