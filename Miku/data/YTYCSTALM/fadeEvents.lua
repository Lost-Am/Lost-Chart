function onCreate()
    makeLuaSprite('black', '', 0, 0)
    makeGraphic('black', screenWidth, screenHeight, '000000')
    setObjectCamera('black', 'other')
    setProperty('black.alpha', 0)
    addLuaSprite('black', true)

    setProperty('boyfriend.alpha', 0)
end

local blockedBeats = {
    [132]=true,[140]=true,[148]=true,[156]=true,
    [164]=true,[172]=true,[180]=true,[188]=true,
    [196]=true,[204]=true,[212]=true,[220]=true,
    [228]=true,[236]=true,[244]=true,[252]=true
}

local flashBeats = {
    [256]=true,[328]=true,[352]=true,[384]=true,[448]=true,
    [512]=true,[576]=true,[640]=true,[672]=true,
    [704]=true,[736]=true,[768]=true
}

local fadeOutBeats = {
    [320]=true,[632]=true,[760]=true,[888]=true
}

function onBeatHit()

    if curBeat == 24 then
        doTweenAlpha('bfFade', 'boyfriend', 1, crochet * (64-24) / 1000, 'linear')
    end

    if blockedBeats[curBeat] then
        setProperty('camGame.zoom', getProperty('camGame.zoom') - 0.015)
        setProperty('camHUD.zoom', getProperty('camHUD.zoom') - 0.03)
    end

    if fadeOutBeats[curBeat] then
        doTweenAlpha('fadeOut_' .. curBeat, 'black', 1, crochet * 8 / 1000, 'linear')
    end

    if flashBeats[curBeat] then
        cancelTween('fadeOut_320')
        cancelTween('fadeOut_632')
        cancelTween('fadeOut_760')
        cancelTween('fadeOut_888')
        cancelTween('dimBlack')
        setProperty('black.alpha', 0)
        cameraFlash('game', 'FFFFFF', 0.5)
    end

    if curBeat == 896 then
        cancelTween('fadeOut_888')
        setProperty('black.alpha', 0)
    end

    if curBeat == 510 then
        doTweenAlpha('dimBlack', 'black', 0.5, crochet * 2 / 1000, 'linear')
    end

    if curBeat == 1024 then
        doTweenAlpha('fadeFinal', 'black', 1, crochet * 96 / 1000, 'linear')
    end

end