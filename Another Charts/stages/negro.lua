function onCreate()
	makeLuaSprite('negro', 'negro', -2800, -1700);
	setScrollFactor('negro', 0.9, 0.9);
	scaleObject('negro', 8, 8)

	addLuaSprite('negro', false);
	addGlitchEffect('negro', 2, 5, 0.1); 
	close(true);
end