local PZ = createConditionObject(CONDITION_INFIGHT)
setConditionParam(PZ, CONDITION_PARAM_TICKS, getConfigInfo('whiteSkullTime'))

-- Configuration
local PERKS = {
    {
        StorageId = 50001,
        Spell = "haste"
    },
    {
        StorageId = 50002,
        Spell = "strong haste"
    },
    {
        StorageId = 50003,
        Spell = "great light"
    },
    {
        StorageId = 50004,
        Spell = "fire wave"
    }
}



---cin




local SPELL_CAST_CHANCE = 100 -- Percentage chance to cast a spell
local MAGIC_EFFECT_NO_PERK_ACTIVATED = 72

local function perk(cid, target, lastHit)
    if not isPlayer(cid) or not isPlayer(target) then
        return
    end

    local perkActivated = false

    for _, perkData in ipairs(PERKS) do
        local storageValue = getCreatureStorage(cid, perkData.StorageId)

        if storageValue == 1 then
            -- Roll for the chance to cast a custom spell
            if math.random(1, 100) <= SPELL_CAST_CHANCE then
                doCreatureCastSpell(cid, perkData.Spell)
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Casted spell: " .. perkData.Spell .. " .")
                perkActivated = true
            end
        end
    end

    -- If no perk was activated, send magic effect to the player's position
    if not perkActivated then
        doSendMagicEffect(getCreaturePosition(cid), MAGIC_EFFECT_NO_PERK_ACTIVATED)
    end
end




function onKill(cid, target)
    local gdziejestestystarakurwo = getPlayerPosition(target)

    local function zzz(cid, target)
        doSendMagicEffect(gdziejestestystarakurwo, 32)
		 
    end
	local function createitem(cid, target)
		
       --  local itemID = 7141-- Replace with the desired item ID
         --local itemCount = 1 -- Replace with the desired item count
         --   doCreateItem(itemID, itemCount, gdziejestestystarakurwo)
			doPlayerAddItem(cid, 2151, 1) -- add 1 talon
	end
	
	

    -- If no perk was activated, send magic effect to the player's position
    if not perkActivated then
        doSendMagicEffect(getCreaturePosition(cid), MAGIC_EFFECT_NO_PERK_ACTIVATED)
    end

    if isPlayer(cid) == TRUE and isPlayer(target) == TRUE then
        local GUID = getPlayerGUID(cid)
        local NAME = getPlayerName(cid)
        local namet = getPlayerName(target)
        local skull = getCreatureSkullType(cid)
        local fragTime = getConfigInfo('TimeToDecreaseFrags')
        local amount = getPlayerRedSkullTicks(cid)
        local frags = math.floor((amount / fragTime) + 1)
        local cidd = cid

        local function removeFrag(cid)
            local amountt = getPlayerRedSkullTicks(cidd)
            local fragss = math.floor((amountt / fragTime) + 1)

            if fragss > frags then
                doPlayerSetRedSkullTicks(cidd, amount)
                doPlayerSendTextMessage(cidd, 21, "Frag from " .. namet .. " wasn't counted.")
            end

            if skull == SKULL_WHITE then
                if getCreatureSkullType(cidd) == SKULL_RED then
                    doCreatureSetSkullType(cidd, SKULL_WHITE)
                    doPlayerSetRedSkullTicks(cidd, 0)
                end
            end
        end

        local myGuild = getPlayerGuildId(cid)
        local enemyGuild = getPlayerGuildId(target)

        if myGuild ~= 0 and enemyGuild ~= 0 then
            if enemyGuild == getGuildWarInfo(myGuild).With then
                doAddCondition(cid, PZ)
                if getShowInfo(myGuild).S == 1 then
                    registerDeathOne(myGuild, enemyGuild, cid, target)
                else
                    registerDeathTwo(myGuild, enemyGuild, cid, target)
                end

                addEvent(removeFrag, 150)

                -- Create and add an item to the corpse
               
            end
        end
		
		perk(cid, target, lastHit)
		addEvent(perk, 1000, cid, target)
        doSendMagicEffect(gdziejestestystarakurwo, 65)
        doSendAnimatedText(getPlayerPosition(cid), "FRAG!", TEXTCOLOR_YELLOW)
		addEvent(createitem, 550, cid, target)
        addEvent(zzz, 4000, gdziejestestystarakurwo, target)
    end

    return TRUE
end
