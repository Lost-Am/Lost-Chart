function onCreate()
    makeLuaSprite('startFade', nil, 0, 0)
    makeGraphic('startFade', screenWidth, screenHeight, '000000')
    setObjectCamera('startFade', 'other')

    setProperty('startFade.alpha', 1)
    addLuaSprite('startFade', true)
end

function onSongStart()

    local fadeTime = (crochet * 70) / 1000

    doTweenAlpha(
        'startFadeOut',
        'startFade',
        0,
        fadeTime,
        'linear'
    )
end