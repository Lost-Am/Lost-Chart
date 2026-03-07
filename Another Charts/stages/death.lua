function onCreate()
	makeLuaSprite('death', 'death', -1500,-1000);
	addLuaSprite('death', false);
	setScrollFactor('death', 0, 0);
	addGlitchEffect('death', 420, 420)

	addGlitchEffect('hbl', 420, 420) -- needed
end