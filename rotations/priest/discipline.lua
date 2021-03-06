local GUI = {

}

local exeOnLoad = function()
	MTSCR.ExeOnLoad()
end

local Atonement = {
	--Shadow Word: Pain for a low to moderate HoT to your Atonement targets.
	{'Shadow Word: Pain', 'target.debuff(Shadow Word: Pain).duration < 5', 'target'},
	--Penance on cooldown for low to moderate healing to your Atonement targets.
	{'Penance', nil, 'target'},
	--Smite for low to moderate healing to your Atonement targets.
	{'Smite', nil, 'target'}
}

local Lowest = {
	--Power Word: Shield Use to absorb low to moderate damage and to apply Atonement.
	{'Power Word: Shield', '!lowest.buff(Power Word: Shield)'},
	-- Penance if talent "Penitent"
	{'Penance', {'lowest.health < 70', 'talent(1,1)'}, 'target'},
	--Plea for an efficient direct heal and to apply Atonement.
	{'Plea', 'lowest.health < 30'}
}

local inCombat = {
	{Lowest, 'lowest.health < 100'},
	{Atonement}
}

local outCombat = {

}

NeP.Engine.registerRotation(256, '[|cff'..MTSCR.Interface.addonColor..'MTS|r] Priest - Discipline', inCombat, outCombat, exeOnLoad, GUI)