### Send an internal event

__**Usage**__:
```lua
TriggerEvent("eventName", [args...])
```

__**Example**__:
```lua
TriggerEvent("order_a_burger", "BigMac", {exclude = {"tomatoes"}})
```

### Listen to an internal event

__**Usage**__:
```lua
AddEventHandler("eventName", handler)
```

__**Example**__:
```lua
AddEventHandler("order_a_burger", function(burger, data)
    print(("New order received for a: %s"):format(burger))
    if (data and #data.exclude > 0) then
        print("Excluded ingredients:")
        for _, ingredient in ipairs(data.exclude) do
            print(("- %s"):format(ingredient))
        end
    end
end)
```