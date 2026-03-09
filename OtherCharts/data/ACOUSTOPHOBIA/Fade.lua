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