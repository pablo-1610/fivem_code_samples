RegisterCommand("who_i_am", function(senderId)
    if (senderId == 0) then
        print("Command used directly from console")
        return
    end

    -- Reference: https://docs.fivem.net/natives/?_0x406B4B20
    local playerName = GetPlayerName(senderId)
    print(("Command used by %s"):format(playerName))
end)