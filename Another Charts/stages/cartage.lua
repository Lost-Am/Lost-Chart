function onCreate()

	-- shaders!!
	initLuaShader("cartage")

	makeLuaSprite('bg', 'cartage', -1600, -900);
	setLuaSpriteScrollFactor('bg', 0, 0);
	scaleObject('bg', 3.5, 3.5);
	setProperty('bg.flipY', true)
	addLuaSprite('bg', false)

	setSpriteShader("bg", "cartage")
end
function onUpdate(elapsed)
	setShaderFloat('bg', 'iTime', getSongPosition()/2000)
end