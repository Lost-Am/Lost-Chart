function onCreate()
    -- Creamos overlay negro
    makeLuaSprite('fadeBlack', nil, 0, 0)
    makeGraphic('fadeBlack', screenWidth, screenHeight, '000000')
    setObjectCamera('fadeBlack', 'other') -- sobre toda la pantalla
    setProperty('fadeBlack.alpha', 1) -- empieza totalmente negro
    addLuaSprite('fadeBlack', true)
end

function onSongStart()
    -- === FADE-IN ===
    local fadeInStartBeat = 16
    local fadeInEndBeat = 128
    local fadeInBeats = fadeInEndBeat - fadeInStartBeat
    local fadeInTime = (crochet * fadeInBeats) / 1000

    -- Espera hasta el beat 16 para iniciar el fade-in
    runTimer('fadeIn', crochet * fadeInStartBeat / 1000)

    -- === FADE-OUT ===
    local fadeOutStartBeat = 579
    local fadeOutEndBeat = 639
    local fadeOutBeats = fadeOutEndBeat - fadeOutStartBeat
    local fadeOutTime = (crochet * fadeOutBeats) / 1000

    -- Espera hasta el beat 579 para iniciar el fade-out
    runTimer('fadeOut', crochet * fadeOutStartBeat / 1000)
end

function onTimerCompleted(tag)
    if tag == 'fadeIn' then
        doTweenAlpha('fadeInTween', 'fadeBlack', 0, (crochet * (128-16)) / 1000, 'linear')
    elseif tag == 'fadeOut' then
        doTweenAlpha('fadeOutTween', 'fadeBlack', 1, (crochet * (639-579)) / 1000, 'linear')
    end
end