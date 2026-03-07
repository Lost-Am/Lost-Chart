function onCreate()
	-- background shit
	makeLuaSprite('omet', 'omet', -1500, -1200);
	setScrollFactor('omet', 0.9, 0.9);
	addGlitchEffect('omet', 2, 6);
        scaleObject('omet', 0.8, 0.8)
	

	addLuaSprite('omet', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end