function ChangeBack(cid)

doTransformItem(getThingfromPos({x=32478, y=31902, z=7, stackpos=1}).uid, 1304)

end

function onStepIn(cid,item,pos)

if item.uniqueid == 47011 and getThingfromPos({x=32478, y=31902, z=7, stackpos=1}).itemid == 1304 then
addEvent(ChangeBack,45000, cid)
	doTransformItem(getThingfromPos({x=32478, y=31902, z=7, stackpos=1}).uid, 1385)
	else
		doPlayerSendCancel(cid, "")
		end
		return 1
		
	end
	