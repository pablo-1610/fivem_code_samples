-- Simple console cast command
RegisterCommand("console_cast", function(_, args)
    if (#args <= 0) then
        print("Usage: console_cast <message>")
        return
    end
    local message <const> = table.concat(args, " ")
    print(("Console cast: %s"):format(message))
end)