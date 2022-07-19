RegisterCommand("kick_him", function(senderId, args)
    if (senderId ~= 0) then
        print("The command can only be executed from the server console")
        return
    end
    if (#args <= 0) then
        print("Usage: kick_him <playerId> [reason]")
        return
    end
    local playerId<const> = tonumber(args[1])
    local reason <const> = table.concat(args, " ", 2)

    -- Reference: https://docs.fivem.net/natives/?_0xBA0613E1
    DropPlayer(playerId, reason)
end)