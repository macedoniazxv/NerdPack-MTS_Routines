local mKey = 'MTSDKUnholy'
local config = {
	key = mKey,
	profiles = true,
	title = '|T'..MTS.Interface.Logo..':10:10|t MTS Config',
	subtitle = 'Death Knight unholy Settings',
	color = NeP.Core.classColor('player'),
	width = 250,
	height = 500,
	config = {
		
	}
}

NeP.Interface.buildGUI(config)
local E = MTS.dynEval
local F = function(key) NeP.Interface.fetchKey(mKey, key) end

local exeOnLoad = function()
	MTS.Splash()
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
	{'pause', 'modifier.alt'},
}

local outCombat = {
	{Keybinds},
}

NeP.Engine.registerRotation(252, '[|cff'..MTS.Interface.addonColor..'MTS|r] Death Knight - Unholy', 
	{-- In-Combat
		{Keybinds},
		{Survival, 'player.health < 100'},
		{Cooldowns, 'modifier.cooldowns'},
		{AoE, 'player.area(8).enemies >= 3'},
		{ST}
	}, outCombat, exeOnLoad)