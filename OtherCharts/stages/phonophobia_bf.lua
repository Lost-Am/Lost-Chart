function onCreate()
	-- background shit
    makeLuaSprite('phonophobia_bf', 'phonophobia_bf', -1170,-750)
    setLuaSpriteScrollFactor('phonophobia_bf', 0.9, 0.9); 
    addLuaSprite('phonophobia_bf')
	scaleObject('phonophobia_bf', 2.5, 2.5);
    setScrollFactor('phonophobia_bf', 0, 0);

    makeLuaSprite('phonophobia_platform', 'phonophobia_platform', 330, -660)
    setLuaSpriteScrollFactor('phonophobia_platform', 0.9, 0.9); 
    addLuaSprite('phonophobia_platform')
	scaleObject('phonophobia_platform', 1.7, 1.7);
    setScrollFactor('phonophobia_platform', 1, 1);

end


local shadname = "stridentCrisisWavy"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy")
		setSpriteShader('phonophobia_bf', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('phonophobia_bf', 'uWaveAmplitude', 0.1)
	setShaderFloat('phonophobia_bf', 'uFrequency', 198)
	setShaderFloat('phonophobia_bf', 'uSpeed', 20.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('phonophobia_bf', 'uTime', os.clock())
	end
