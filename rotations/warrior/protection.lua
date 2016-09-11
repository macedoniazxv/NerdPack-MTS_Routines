local mKey = 'MTS_Warr_Prot'
local config = {
	key = mKey,
	profiles = true,
	title = '|T'..MTS.Interface.Logo..':10:10|t MTS Config',
	subtitle = 'Warrior - Protection Settings',
	color = (function() return NeP.Core.classColor('player') end),
	width = 250,
	height = 500,
	config = {

	}
}

local E = MTS.dynEval
local F = function(key) return NeP.Interface.fetchKey(mKey, key, 100) end

local exeOnLoad = function()
	MTS.Splash()
	NeP.Interface.buildGUI(config)
	MTS.ClassSetting(mKey)
end

local Survival = {

}

local Cooldowns = {

}

local AoE = {

}


local ST = {

}

local Keybinds = {
	-- Pause
	{'%pause', 'keybinds(alt)'},
}

local outCombat = {
	{Keybinds},
}

NeP.Engine.registerRotation(73, '[|cff'..MTS.Interface.addonColor..'MTS|r] Warrior - Protection', 
	{-- In-Combat
		{Keybinds},
		{Survival, 'player.health < 100'},
		{Cooldowns, 'toggle(cooldowns)'},
		{AoE, {'toggle(AoE)', 'player.area(8).enemies >= 3'}},
		{ST, {'target.range < 8', 'target.infront'}}
	}, outCombat, exeOnLoad)