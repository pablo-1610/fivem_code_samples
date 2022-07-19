---@author Wezor
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


RegisterNetEvent("create_blips")
AddEventHandler("create_blips", function(coords, sprite, name, scale, color)
    local coords <const> = coords;
    local sprite <const> = sprite;
    local name <const> = name;
    local scale <const> = scale;
    local color <const> = color;

    local blips = AddBlipForCoord(coords.x, coords.y, coords.z);
    SetBlipSprite(blips, sprite);
    SetBlipColour(blips, color);
    SetBlipScale(blips, scale);
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(name);
    EndTextCommandSetBlipName(blips);
end)