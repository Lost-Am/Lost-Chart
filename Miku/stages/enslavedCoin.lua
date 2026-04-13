function onCreatePost()
	makeLuaSprite('bg', 'Sangtraan/stage', -3200, -2080);
	scaleObject('bg', 3, 3);
   	setScrollFactor('bg', 1, 1);
	addLuaSprite('bg', false);

	makeLuaSprite('oppSprite', 'Sangtraan/char', -2000, -1200);
	scaleObject('oppSprite', 1.3, 1.3);
    	setScrollFactor('oppSprite', 1, 1);
	addLuaSprite('oppSprite', false);
end
function onMoveCamera(focus)
	if focus == 'boyfriend' then
		setProperty('defaultCamZoom', 0.75)
	elseif focus == 'dad' then
		setProperty('defaultCamZoom', 0.3)
	end
end

function onCreatePost()
	makeLuaSprite('bg', 'Sangtraan/stage', -3200, -2080);
	scaleObject('bg', 3, 3);
	setScrollFactor('bg', 1, 1);
	addLuaSprite('bg', false);

	makeLuaSprite('oppSprite', 'Sangtraan/char', -2000, -1200);
	scaleObject('oppSprite', 1.3, 1.3);
	setScrollFactor('oppSprite', 1, 1);
	addLuaSprite('oppSprite', false);

	setProperty('bg.visible', false)
	setProperty('oppSprite.visible', false)
end

function onBeatHit()
	if curBeat == 128 then

		cameraFlash('game', 'FFFFFF', 0.5)

		setProperty('bg.visible', true)
		setProperty('oppSprite.visible', true)
	end
end

function onMoveCamera(focus)
	if focus == 'boyfriend' then
		setProperty('defaultCamZoom', 0.75)
	elseif focus == 'dad' then
		setProperty('defaultCamZoom', 0.3)
	end
end

local centerX = -2000
local centerY = -1200
local radius = 200
local speed = 1

function onUpdate(elapsed)
    local time = getSongPosition() / 1000

    local x = centerX + math.cos(time * speed) * radius
    local y = centerY + math.sin(time * speed) * radius

    setProperty('oppSprite.x', x)
    setProperty('oppSprite.y', y)
end