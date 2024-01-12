wokacje = {1,2,5,6}
--MAGIC VOCATIONS IF NOT THEN MLVL LESS
palek = {3,7}
knight = {4,8}
function onUse(cid, item, fromPosition, itemEx, toPosition)
		doPlayerAddSkill(cid, 7, 1) -- magic
		doRemoveItem(item.uid, 1)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You gain magic level.")
	return true
end 
