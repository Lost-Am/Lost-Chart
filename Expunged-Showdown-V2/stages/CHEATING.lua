function onCreate()

    makeLuaSprite('cheater', 'cheater', -1000, -450)
    scaleObject('cheater', 1.5, 1.5)
    setScrollFactor('cheater', 0.6, 0.6)
    setProperty('cheater.antialiasing', false)
    addGlitchEffect('cheater', 2, 5)
    addLuaSprite('cheater', false)

    makeLuaSprite('scarybg', 'scarybg', -700, -500)
    scaleObject('scarybg', 3, 3)
    setScrollFactor('scarybg', 0.9, 0.9)
    setProperty('scarybg.antialiasing', false)
    addGlitchEffect('scarybg', 2, 5)
    setProperty('scarybg.visible', false)
    addLuaSprite('scarybg', false)

    makeLuaSprite('rbg', 'creepyRoom', -1200, -600)
    scaleObject('rbg', 2, 2)
    setProperty('rbg.antialiasing', false)
    addGlitchEffect('rbg', 2, 5)
    setProperty('rbg.visible', false)
    addLuaSprite('rbg', false)

end

function onBeatHit()

    if curBeat == 360 then
        switchStage('unfair')
    end

    if curBeat == 672 then
        switchStage('bambers')
    end

end

function switchStage(stage)

    setProperty('cheater.visible', false)
    setProperty('scarybg.visible', false)
    setProperty('rbg.visible', false)

    if stage == 'cheating' then
        setProperty('cheater.visible', true)

    elseif stage == 'unfair' then
        setProperty('scarybg.visible', true)

    elseif stage == 'bambers' then
        setProperty('rbg.visible', true)
    end

end