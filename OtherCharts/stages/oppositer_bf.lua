function onCreate()
	-- background shit
    makeLuaSprite('oppositer_bf', 'oppositer_bf', -1170,-750)
    setLuaSpriteScrollFactor('oppositer_bf', 0.9, 0.9); 
    addLuaSprite('oppositer_bf')
	scaleObject('oppositer_bf', 2.5, 2.5);
    setScrollFactor('oppositer_bf', 0, 0);

    makeLuaSprite('oppositer_platform', 'oppositer_platform', 330, -660)
    setLuaSpriteScrollFactor('oppositer_platform', 0.9, 0.9); 
    addLuaSprite('oppositer_platform')
	scaleObject('oppositer_platform', 1.7, 1.7);
    setScrollFactor('oppositer_platform', 1, 1);

end


local shadname = "stridentCrisisWavy"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy")
		setSpriteShader('oppositer_bf', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('oppositer_bf', 'uWaveAmplitude', 0.1)
	setShaderFloat('oppositer_bf', 'uFrequency', 250)
	setShaderFloat('oppositer_bf', 'uSpeed', 20.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('oppositer_bf', 'uTime', os.clock())
	end
