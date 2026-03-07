function onCreate()
	-- background shit
	makeLuaSprite('scarybg', 'scarybg', -700, -500);
	scaleObject('scarybg', 3, 3);
	addGlitchEffect('scarybg', 2, 5);
	setProperty('scarybg.antialiasing', false)
	setScrollFactor('scarybg', 0.9, 0.9);

	addLuaSprite('scarybg', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end