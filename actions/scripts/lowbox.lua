
function onUse(cid, item, fromPosition, itemEx, toPosition)
local generuj = math.random(0,10000)

print(generuj)

	if getPlayerItemCount(cid, 7141) >= 1 and doPlayerRemoveItem(cid,7141, 1) == true then -- jesli gracz ma 1 lub wiecej boxow
	--do
		if generuj <= 2500 then
			-- COMMON
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, Cfdragonshield, 1)
			doAddContainerItem(backpack, Cffiresword, 1)
			doAddContainerItem(backpack, Cfknightaxe, 1)
			doAddContainerItem(backpack, Cfdragonhammer, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "COMMON!", TEXTCOLOR_LIGHTGREEN)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 5000 and generuj > 2200 then
			-- COMMON
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, Cfskullstaff, 1)
			doAddContainerItem(backpack, Cftowershield, 1)
			doAddContainerItem(backpack, Cfepee, 1)
			doAddContainerItem(backpack, Cfnaginata, 1)
			doPlayerRemoveItem(cid,7141, 1)	
			doSendAnimatedText(getPlayerPosition(cid), "COMMON!", TEXTCOLOR_LIGHTGREEN)
			doSendMagicEffect(getPlayerPosition(cid), 26)
	
		elseif generuj <= 5500 and generuj > 5000 then
			-- RARE chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, Cfcrownshield, 1)
			doAddContainerItem(backpack, 2443, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "RARE!", TEXTCOLOR_LIGHTBLUE)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 6000 and generuj > 5500 then
			-- RARE chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, Cfcrownshield, 1)
			doAddContainerItem(backpack, 2443, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "RARE!", TEXTCOLOR_LIGHTBLUE)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif (generuj <= 6500) and (generuj > 6000) then
			-- RARE chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, Cfwarhammer, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "RARE!", TEXTCOLOR_LIGHTBLUE)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 7000 and generuj > 6500 then
			-- RARE chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, Cfgiantsword, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "RARE!", TEXTCOLOR_LIGHTBLUE)
			doSendMagicEffect(getPlayerPosition(cid), 26)

		elseif generuj <= 7300 and generuj > 7000 then
				-- EPIC chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, 2520, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "EPIC!",  TEXTCOLOR_PURPLE)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 7600 and generuj > 7300 then
				-- EPIC chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, 2534, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "EPIC!",  TEXTCOLOR_PURPLE)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 7900 and generuj > 7600 then
				-- EPIC chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, 2536, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "EPIC!",  TEXTCOLOR_PURPLE)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 8200 and generuj > 7900 then
				-- EPIC chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, 2444, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "EPIC!",  TEXTCOLOR_PURPLE)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 8500 and generuj > 8200 then
				-- EPIC chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, 2539, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "EPIC!",  TEXTCOLOR_PURPLE)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 8800 and generuj > 8500 then
			-- EPIC chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, 2400, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "EPIC!",  TEXTCOLOR_PURPLE)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 9100 and generuj > 8800 then
			-- EPIC chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, 2431, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "EPIC!",  TEXTCOLOR_PURPLE)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 9300 and generuj > 9100 then
			-- LEGENDARY chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, 2514, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "LEGENDARY!", TEXTCOLOR_ORANGE)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 9500 and generuj > 9300 then
			-- LEGENDARY chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, Cfgreataxe, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "LEGENDARY!", TEXTCOLOR_ORANGE)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 9600 and generuj > 9500 then
			-- ULTIMATE chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, Cfthunderhammer, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "ULTIMATE!", TEXTCOLOR_RED)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 9700 and generuj > 9600 then
			-- ULTIMATE chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, Cfwarlordsword, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "ULTIMATE!", TEXTCOLOR_RED)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 9800 and generuj > 9700 then
			-- ULTIMATE chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, 2522, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "ULTIMATE!", TEXTCOLOR_RED)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj <= 9950 and generuj > 9800 then
			-- ULTIMATE chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, 2523, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "ULTIMATE!", TEXTCOLOR_RED)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		elseif generuj > 9950 then
			-- GODLIKE chance
			backpack = doPlayerAddItem(cid, 1988, 1)
			doAddContainerItem(backpack, 2390, 1)
			doPlayerRemoveItem(cid,7141, 1)
			doSendAnimatedText(getPlayerPosition(cid), "GODLIKE!", TEXTCOLOR_YELLOW)
			doSendMagicEffect(getPlayerPosition(cid), 26)
		end
		

	else
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Put the box in backpack with space first.")
		doSendMagicEffect(getPlayerPosition(cid), 2)

	end

end









