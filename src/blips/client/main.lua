--- @author Wezor
--[[
    Used natives:
        - AddBlipForCoord (https://docs.fivem.net/natives/?_0xC6F43D0E)
        - SetBlipSprite (https://docs.fivem.net/natives/?_0xDF735600A4696DAF)
        - SetBlipColour (https://docs.fivem.net/natives/?_0x03D7FB09E75D6B7E)
        - SetBlipScale (https://docs.fivem.net/natives/?_0xD38744167B2FA257)
        - BeginTextCommandSetBlipName (https://docs.fivem.net/natives/?_0xF9113A30DE5C6670)
        - AddTextComponentString (NATIVE INVALID IN WEBSITE)
        - EndTextCommandSetBlipName (https://docs.fivem.net/natives/?_0xBC38B49BCB83BC9B)
--]]

RegisterCommand("create_blips", function(_, args)
    if (#args < 5) then
        print("Usage: create_blips <coords> <sprite> <name> <scale> <color>")
        return
    end

    local coords <const> = args[1];
    local sprite <const> = args[2];
    local name <const> = args[3];
    local scale <const> = args[4];
    local color <const> = args[5];

    local blips = AddBlipForCoord(coords.x, coords.y, coords.z);
    SetBlipSprite(blips, sprite);
    SetBlipColour(blips, color);
    SetBlipScale(blips, scale);
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(name);
    EndTextCommandSetBlipName(blips);
end)