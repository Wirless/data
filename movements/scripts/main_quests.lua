function onStepIn(cid, item, pos, topos)
if isPlayer(cid) == TRUE and item.actionid == 8000 then

	if item.uid == 8193 then
	Skull1 = getThingfromPos({x=32563, y=31957, z=1, stackpos=2})
	Skull2 = getThingfromPos({x=32565, y=31957, z=1, stackpos=2})
	Skull3 = getThingfromPos({x=32567, y=31957, z=1, stackpos=2})
	Skull4 = getThingfromPos({x=32569, y=31957, z=1, stackpos=2})
		if Skull1.itemid == 2229 and Skull2.itemid == 2229 and Skull3.itemid == 2229 and Skull4.itemid == 2229 then
		doRemoveItem(Skull1.uid)
		doRemoveItem(Skull2.uid)
		doRemoveItem(Skull3.uid)
		doRemoveItem(Skull4.uid)
		doTeleportThing(cid,{x=32479, y=31923, z=7})
		doSendMagicEffect({x=32479, y=31923, z=7}, 10)
		end
	
	elseif item.uid == 8194 then
	doTeleportThing(cid,{x=32566, y=31958, z=1})
	doSendMagicEffect({x=32566, y=31958, z=1}, 10)
	elseif item.uid == 9923 then
	doTeleportThing(cid,{x=32566, y=31958, z=1})
	doSendMagicEffect({x=32566, y=31958, z=1}, 10)
	elseif item.uid == 9924 then
	doTeleportThing(cid,{x=32566, y=31958, z=1})
	doSendMagicEffect({x=32566, y=31958, z=1}, 10)
	elseif item.uid == 9925 then
	doTeleportThing(cid,{x=32566, y=31958, z=1})
	doSendMagicEffect({x=32566, y=31958, z=1}, 10)
	
	
	
	
	
		-- Assuming 'item' is the item that triggered this code
	elseif item.uid == 8213 then

		-- Check if the player has the required items in their inventory
		if getPlayerItemCount(cid, 2335) > 0 and getPlayerItemCount(cid, 2336) > 0 and getPlayerItemCount(cid, 2337) > 0
				and getPlayerItemCount(cid, 2338) > 0 and getPlayerItemCount(cid, 2339) > 0
				and getPlayerItemCount(cid, 2340) > 0 and getPlayerItemCount(cid, 2341) > 0 then
			-- Remove the required items from the player's inventory
			doPlayerRemoveItem(cid, 2335, 1)
			doPlayerRemoveItem(cid, 2336, 1)
			doPlayerRemoveItem(cid, 2337, 1)
			doPlayerRemoveItem(cid, 2338, 1)
			doPlayerRemoveItem(cid, 2339, 1)
			doPlayerRemoveItem(cid, 2340, 1)
			doPlayerRemoveItem(cid, 2341, 1)

			-- Create item 2342 at the specified position
			doCreateItem(2342, 1, {x=33198, y=32876, z=11})

			-- Send a magic effect to the player
			doSendMagicEffect(getCreaturePosition(cid), 83)
		else
			-- Inform the player that they don't have the required items
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You don't have the required items.")
		end




	
	
	
	
	--//Paradox Quest, Removing Rewards//--
	elseif item.uid == 8196 and getPlayerStorageValue(cid,8200) <= 0 then --Remove Money
	setPlayerStorageValue(cid,8200,1)
	CHESTPOS = {x=32478, y=31900, z=1}
	doSendMagicEffect(CHESTPOS, 15)	
	elseif item.uid == 9921 and getPlayerStorageValue(cid,8200) <= 0 then --Remove Money
	setPlayerStorageValue(cid,8200,1)
	CHESTPOS = {x=32478, y=31900, z=1}
	doSendMagicEffect(CHESTPOS, 15)	
	elseif item.uid == 9914 and getPlayerStorageValue(cid,8200) <= 0 then --Remove Money
	setPlayerStorageValue(cid,8200,1)
	CHESTPOS = {x=32478, y=31900, z=1}
	doSendMagicEffect(CHESTPOS, 15)	
	elseif item.uid == 8197 and getPlayerStorageValue(cid,8201) <= 0 then --Remove Wand
	setPlayerStorageValue(cid,8201,1)
	CHESTPOS = {x=32480, y=31900, z=1}
	doSendMagicEffect(CHESTPOS, 15)		
	elseif item.uid == 9919 and getPlayerStorageValue(cid,8201) <= 0 then --Remove Wand
	setPlayerStorageValue(cid,8201,1)
	CHESTPOS = {x=32480, y=31900, z=1}
	doSendMagicEffect(CHESTPOS, 15)		
	elseif item.uid == 9920 and getPlayerStorageValue(cid,8201) <= 0 then --Remove Wand
	setPlayerStorageValue(cid,8201,1)
	CHESTPOS = {x=32480, y=31900, z=1}
	doSendMagicEffect(CHESTPOS, 15)	
	elseif item.uid == 8198 and getPlayerStorageValue(cid,8202) <= 0 then --Remove Talons
	setPlayerStorageValue(cid,8202,1)
	CHESTPOS = {x=32479, y=31900, z=1}
	doSendMagicEffect(CHESTPOS, 15)	
	elseif item.uid == 9912 and getPlayerStorageValue(cid,8202) <= 0 then --Remove Talons
	setPlayerStorageValue(cid,8202,1)
	CHESTPOS = {x=32479, y=31900, z=1}
	doSendMagicEffect(CHESTPOS, 15)	
	elseif item.uid == 9913 and getPlayerStorageValue(cid,8202) <= 0 then --Remove Talons
	setPlayerStorageValue(cid,8202,1)
	CHESTPOS = {x=32479, y=31900, z=1}
	doSendMagicEffect(CHESTPOS, 15)	
	elseif item.uid == 8199 and getPlayerStorageValue(cid,8203) <= 0 then --Phoenix Egg
	setPlayerStorageValue(cid,8203,1)
	CHESTPOS = {x=32477, y=31900, z=1}
	doSendMagicEffect(CHESTPOS, 15)	
	elseif item.uid == 9918 and getPlayerStorageValue(cid,8203) <= 0 then --Phoenix Egg
	setPlayerStorageValue(cid,8203,1)
	CHESTPOS = {x=32477, y=31900, z=1}
	doSendMagicEffect(CHESTPOS, 15)	
	elseif item.uid == 9910 and getPlayerStorageValue(cid,8203) <= 0 then --Phoenix Egg
	setPlayerStorageValue(cid,8203,1)
	CHESTPOS = {x=32477, y=31900, z=1}
	doSendMagicEffect(CHESTPOS, 15)	
	elseif item.uid == 9911 and getPlayerStorageValue(cid,8203) <= 0 then --Phoenix Egg
	setPlayerStorageValue(cid,8203,1)
	CHESTPOS = {x=32477, y=31900, z=1}
	doSendMagicEffect(CHESTPOS, 15)	
	
	end
end

if item.itemid == 416 then
doTransformItem(item.uid,item.itemid+1)
end

if item.itemid == 426 then
doTransformItem(item.uid,item.itemid-1)
end

return true
end

function onStepOut(cid, item, pos, topos)
	if item.uid == 8213 then
		if getPlayerItemCount(cid, 2342) >= 1 and getPlayerStorageValue(cid,8213) <= 0 then
		setPlayerStorageValue(cid,8213,1)
		end
	end
	
if item.itemid == 417 then
doTransformItem(item.uid,item.itemid-1)
end
	
if item.itemid == 425 then
doTransformItem(item.uid,item.itemid+1)
end
end