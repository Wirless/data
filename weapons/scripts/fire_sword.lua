local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0.2, 0, 0.9, 0)


local condition = createConditionObject(CONDITION_FIRE)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)

-- Add a 25% chance for the condition to be applied
if math.random(1, 25) == 1 then
	setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 1487)
    setConditionParam(condition, CONDITION_PARAM_MINVALUE, 20)
    setConditionParam(condition, CONDITION_PARAM_MAXVALUE, 20)
    setConditionParam(condition, CONDITION_PARAM_STARTVALUE, 20)
    setConditionParam(condition, CONDITION_PARAM_TICKINTERVAL, 5000)
    setConditionParam(condition, CONDITION_PARAM_FORCEUPDATE, true)
    setCombatCondition(combat, condition)
end

local area = createCombatArea(AREA_CROSSTARGET)
setCombatArea(combat, area)

function onUseWeapon(cid, var)
    return doCombat(cid, combat, var)
end
