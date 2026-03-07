-- StartFade.lua
-- Fade de aparición desde el inicio hasta el beat 64
-- Psych Engine 0.6.3

function onCreate()
    makeLuaSprite('startFade', nil, 0, 0)
    makeGraphic('startFade', screenWidth, screenHeight, '000000')
    setObjectCamera('startFade', 'other')

    -- Empieza en negro
    setProperty('startFade.alpha', 1)
    addLuaSprite('startFade', true)
end

function onSongStart()
    -- Duración del fade = 64 beats
    -- crochet = duración de 1 beat en ms
    local fadeTime = (crochet * 70) / 1000

    doTweenAlpha(
        'startFadeOut',
        'startFade',
        0,
        fadeTime,
        'linear'
    )
end