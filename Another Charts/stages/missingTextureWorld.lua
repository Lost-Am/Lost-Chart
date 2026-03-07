function onCreate()
	makeLuaSprite('MissingBG', 'MissingBG', -2800, -1700);
	setScrollFactor('MissingBG', 0.5, 0.5);
	scaleObject('MissingBG', 4, 4)

	addLuaSprite('MissingBG', false);
	addGlitchEffect('MissingBG', 2, 5, 0.1); 
	close(true);
end