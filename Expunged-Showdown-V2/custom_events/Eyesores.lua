camShake = false;

function onEvent(name, value1, value2)
if name == 'Eyesores' then
if flashingLights then
		if value1 == 'on' then
			camShake = true;
			addPulseEffect('game', 1, 2, 0.5)	
end
		if value1 == 'off' then
			camShake = false;
			makeLuaSprite('flash', 'white', 0, 0);
			setObjectCamera('flash', 'hud');
			addLuaSprite('flash', true);
			doTweenColor('flashcolour', 'flash', 'FFFFFF', 0.01, 'linear');
			doTweenAlpha('flashalpha', 'flash', 0, 1, 'linear');
			clearEffects('game')
			end
end
end
end

function onUpdatePost(elapsed)
	if camShake == true then
		cameraShake('camGame', 0.015, 0.2);
		characterPlayAnim('gf', 'scared', true)
	end
end
