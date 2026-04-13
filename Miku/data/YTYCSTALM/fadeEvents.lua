function onCreate()
    makeLuaSprite('black', '', 0, 0)
    makeGraphic('black', screenWidth, screenHeight, '000000')
    setObjectCamera('black', 'other')
    setProperty('black.alpha', 0)
    addLuaSprite('black', true)
end

local flashBeats = {
    [256]=true,[328]=true,[352]=true,[384]=true,
    [448]=true,[576]=true,[640]=true,[704]=true,
    [736]=true,[768]=true
}

function onBeatHit()

    if flashBeats[curBeat] then
        cameraFlash('game', 'FFFFFF', 0.5)
    end

    if curBeat == 320 then
        doTweenAlpha('dimHUD', 'camHUD', 0.5, crochet * 8 / 1000, 'linear')
        doTweenAlpha('dimGame', 'camGame', 0.5, crochet * 8 / 1000, 'linear')
    end

    if curBeat == 328 then
        doTweenAlpha('normHUD', 'camHUD', 1, 0.2, 'linear')
        doTweenAlpha('normGame', 'camGame', 1, 0.2, 'linear')
    end

    if curBeat == 632 then
        doTweenAlpha('fade1', 'black', 0.9, crochet * 8 / 1000, 'linear')
    end

    if curBeat == 640 then

        cameraFlash('game', 'FFFFFF', 0.5)

        runTimer('fadeBack1', 0.1)
    end

    if curBeat == 760 then
        doTweenAlpha('fade2', 'black', 1, crochet * 8 / 1000, 'linear')
    end

    if curBeat == 768 then
        cameraFlash('game', 'FFFFFF', 0.5)
        runTimer('fadeBack2', 0.1)
    end

    if curBeat == 1024 then
        doTweenAlpha('fade3', 'black', 1, crochet * (1167-1024) / 1000, 'linear')
    end
end

function onTimerCompleted(tag)
    if tag == 'fadeBack1' then
        doTweenAlpha('back1', 'black', 0, 0.3, 'linear')
    end

    if tag == 'fadeBack2' then
        doTweenAlpha('back2', 'black', 0, 0.3, 'linear')
    end
end