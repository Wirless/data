-- Function to send animated text and magic effect
function sendEffect(cid, text, color, effect)
    doSendAnimatedText(getPlayerPosition(cid), text, color)
    doSendMagicEffect(getPlayerPosition(cid), effect)
end

function sendItemName(cid, itemName)
	doSendAnimatedText(getPlayerPosition(cid), itemName, 215)
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
    if getPlayerFreeCap(cid) <= 200 then
        doPlayerSendTextMessage(cid, 22, "You need 200 cap or more to use this!")
        return false
    else
        local generuj = math.random(0, 5700)
        local weaponboxstorage = getPlayerStorageValue(cid, 7141) + 1
        print(generuj)
        setPlayerStorageValue(cid, 7141, weaponboxstorage)
        doRemoveItem(item.uid, 1)
        
        -- Send the rarity of the box immediately
       
        
        local backpack = doPlayerAddItem(cid, 1988, 1)

        if generuj <= 2500 then
            -- COMMON chance
            local itemID = {Cfdragonshield, Cffiresword, 2486, 2491, 2475, 2663, 2662, 3972, 2477, 2476, 3982, 2518, 2515, 2535, 2519, 2528, 2536, 2435, 2434, 2391, 2436, 2430}
            local selectedItem = itemID[math.random(1, #itemID)]
            doAddContainerItem(backpack, selectedItem, 1)
            sendEffect(cid, "COMMON!", TEXTCOLOR_LIGHTGREEN, 26)
            -- Send the item name after 500 seconds
            addEvent(sendItemName, 500, cid, getItemNameById(selectedItem))
        elseif generuj <= 5000 and generuj > 2200 then
            -- RARE chance
            local itemID = {2487, 2472, 2503, 3961, 2407, 2425, 2445, 2432, 2447, 2492, 2195, 2435, 2426, 2440, 2444, 2393, 2446, 2451}
            local selectedItem = itemID[math.random(1, #itemID)]
            doAddContainerItem(backpack, selectedItem, 1)
            sendEffect(cid, "RARE!", TEXTCOLOR_LIGHTBLUE, 26)
            -- Send the item name after 500 seconds
            addEvent(sendItemName, 500, cid, getItemNameById(selectedItem))
        elseif generuj <= 5500 and generuj > 5000 then
            -- EPIC chance
            local itemID = {2393, 2446, 2451, 2470, 2466, 2498, 2504, 2488, 2656, 2645, 2520, 2452, 2421, 2469, 2443, 2514}
            local selectedItem = itemID[math.random(1, #itemID)]
            doAddContainerItem(backpack, selectedItem, 1)
            doSendAnimatedText(getPlayerPosition(cid), "EPIC!",  TEXTCOLOR_PURPLE)
            -- Send the item name after 500 seconds
            addEvent(sendItemName, 500, cid, getItemNameById(selectedItem))
        -- Add more cases for other chances (LEGENDARY, ULTIMATE, GODLIKE) as needed
        else
            -- GODLIKE chance
            local itemID = {2408, 2506, 2390, 2400, 2431, 2415, 2522, 2523, 2539, 2453}
            local selectedItem = itemID[math.random(1, #itemID)]
            doAddContainerItem(backpack, selectedItem, 1)
            sendEffect(cid, "GODLIKE!", TEXTCOLOR_YELLOW, 26)
            -- Send the item name after 500 seconds
            addEvent(sendItemName, 500, cid, getItemNameById(selectedItem))
        end
    end
end
