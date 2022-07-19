AddEventHandler("who_i_am", function(firstName, lastName)
    print(("I am %s %s"):format(firstName, lastName:upper()))
end)