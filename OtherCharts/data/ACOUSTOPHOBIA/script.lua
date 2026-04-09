function onCreate()
    makeLuaSprite('fadeScreen', nil, 0, 0)
    makeGraphic('fadeScreen', screenWidth, screenHeight, '000000')
    setObjectCamera('fadeScreen', 'other')
    addLuaSprite('fadeScreen', true)

    
    setProperty('fadeScreen.alpha', 1)
end

function onUpdate(elapsed)

    local songPos = getSongPosition()
    local currentBeat = (songPos / 1000) * (bpm / 60)

    
    if currentBeat >= 0 and currentBeat <= 128 then
        local progress = currentBeat / 128
        setProperty('fadeScreen.alpha', 1 - progress)
    end

    
    if currentBeat >= 511 and currentBeat <= 571 then
        local progress = (currentBeat - 511) / (571 - 511)
        setProperty('fadeScreen.alpha', progress)
    end

end

function onUpdate()
	songPos = getSongPosition()
	currentBeat = (songPos/1000)*(bpm/98)
	setProperty("gf.scale.x",0.5)
	setProperty("gf.scale.y",0.5)
	setProperty("gf.y",-1000+math.sin(currentBeat*math.pi/16)*200)
	setProperty("gf.x",-2000+math.fmod(currentBeat*100,4500))
	setProperty("gf.angle",currentBeat*10)
end