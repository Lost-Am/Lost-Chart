function onCreate()
	-- background shit
	makeLuaSprite('cheater', 'cheater', -1000, -450);
	addGlitchEffect('cheater', 2, 5);
	scaleObject('cheater', 1.5, 1.5);
	setScrollFactor('cheater', 0.6, 0.6);
	setProperty('cheater.antialiasing', false)


	addLuaSprite('cheater', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end