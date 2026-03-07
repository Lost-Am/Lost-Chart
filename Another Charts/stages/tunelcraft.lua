function onCreate()

	-- shaders!!
	initLuaShader("tunelcraft")

	makeLuaSprite('bg', 'tunelcraft', -1600, -900);
	setLuaSpriteScrollFactor('bg', 0, 0);
	scaleObject('bg', 3.5, 3.5);
	setProperty('bg.alpha', 1)
	addLuaSprite('bg', false)

	setSpriteShader("bg", "tunelcraft")
end
function onUpdate(elapsed)
	setShaderFloat('bg', 'iTime', getSongPosition()/2000)
end