local GUI = {

}

local exeOnLoad = function()
	MTS.Splash()
end

local Tank = {

}

local Player = {

}

local Lowest = {

}

local Keybinds = {
	-- Pause
	{'%pause', 'keybind(alt)'},
}

local inCombat = {
	{Keybinds},
	{Tank, 'tank.health < 100'},
	{Player, 'player.health < 100'},
	{Lowest, 'lowest.health < 100'},
}

local outCombat = {
	{Keybinds},
}

NeP.Engine.registerRotation(270, '[|cff'..MTS.Interface.addonColor..'MTS|r] Monk - Mistweaver', inCombat, outCombat, exeOnLoad, GUI)