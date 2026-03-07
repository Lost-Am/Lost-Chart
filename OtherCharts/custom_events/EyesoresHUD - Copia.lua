camShake = false;

function onEvent(name, value1, value2)
if name == 'EyesoresHUD' then
if flashingLights then
		if value1 == 'on' then
			camShake = true;
			addPulseEffect('hud', 1, 2, 0.5)	
end
		if value1 == 'off' then
			camShake = false;
			clearEffects('hud')
			end
end
end
end

function onUpdatePost(elapsed)
	if camShake == true then
		cameraShake('camHud', 0.015, 0.2);
	end
end

