local pall = {3,7}
 skille = {4,5}
 function onUse(cid, item, fromPosition, itemEx, toPosition)
		doPlayerAddSkill(cid, 5, 2) -- shielding

		doPlayerAddSkill(cid, 4, 1) -- distance
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You gain 2 shielding skill points and 1 distance point!")
		
			doRemoveItem(item.uid, 1)
end 