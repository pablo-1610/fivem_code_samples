RegisterCommand("revive_self", function()
    local pCoords, pHeading = GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId())

    NetworkResurrectLocalPlayer(pCoords, pHeading)
end)