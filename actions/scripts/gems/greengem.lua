local ek = {4,8}
 skills = {1,2,3,4}
 function onUse(cid, item, fromPosition, itemEx, toPosition)

		doPlayerAddSkill(cid, 1, 1) -- club
		doPlayerAddSkill(cid, 2, 1) -- sword
		doPlayerAddSkill(cid, 3, 1) -- axe
		doPlayerAddSkill(cid, 5, 2) -- shielding
		doRemoveItem(item.uid, 1)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You gain 1 of all fighting skill points!")
		return true
end
