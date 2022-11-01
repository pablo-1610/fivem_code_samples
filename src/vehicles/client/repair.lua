RegisterCommand("repair", function()
    local vehicle

    if (not IsPedInAnyVehicle(PlayerPedId())) then
        return print("Not in a vehicle")
    end
    vehicle = GetVehiclePedIsIn(PlayerPedId())
    SetVehicleFixed(vehicle)
    SetVehicleDirtLevel(vehicle, 0)
end)