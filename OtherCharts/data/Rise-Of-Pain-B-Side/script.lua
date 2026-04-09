function onCreate()

    makeLuaSprite('fadeBlack', nil, 0, 0)
    makeGraphic('fadeBlack', screenWidth, screenHeight, '000000')
    setObjectCamera('fadeBlack', 'other')
    setProperty('fadeBlack.alpha', 1)
    addLuaSprite('fadeBlack', true)
end

function onSongStart()

    local fadeInStartBeat = 16
    local fadeInEndBeat = 128
    local fadeInBeats = fadeInEndBeat - fadeInStartBeat
    local fadeInTime = (crochet * fadeInBeats) / 1000

    runTimer('fadeIn', crochet * fadeInStartBeat / 1000)

    local fadeOutStartBeat = 579
    local fadeOutEndBeat = 639
    local fadeOutBeats = fadeOutEndBeat - fadeOutStartBeat
    local fadeOutTime = (crochet * fadeOutBeats) / 1000

    runTimer('fadeOut', crochet * fadeOutStartBeat / 1000)
end

function onTimerCompleted(tag)
    if tag == 'fadeIn' then
        doTweenAlpha('fadeInTween', 'fadeBlack', 0, (crochet * (128-16)) / 1000, 'linear')
    elseif tag == 'fadeOut' then
        doTweenAlpha('fadeOutTween', 'fadeBlack', 1, (crochet * (639-579)) / 1000, 'linear')
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