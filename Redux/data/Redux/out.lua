function onCreate()
    setProperty('camGame.alpha', 0)
    setProperty('camHUD.alpha', 0)
end

function onBeatHit()

    if curBeat == 0 then
        doTweenAlpha('fadeInGame', 'camGame', 1, crochet/1000 * 64, 'linear')
        doTweenAlpha('fadeInHUD', 'camHUD', 1, crochet/1000 * 64, 'linear')
    end

    if curBeat == 64 then
        for i = 0,3 do
            noteTweenAlpha('oppoFade'..i, i, 0, 0.5, 'linear')
        end

        local center = screenWidth / 2 - 2 * 112
        for i = 4,7 do
            noteTweenX('bfCenter'..i, i, center + (i-4)*112, 0.5, 'quadOut')
        end
    end

    if curBeat == 126 then
        doTweenAlpha('fadeOut1Game', 'camGame', 0, crochet/1000 * 2, 'linear')
        doTweenAlpha('fadeOut1HUD', 'camHUD', 0, crochet/1000 * 2, 'linear')
    end

    if curBeat == 128 then
        setProperty('camGame.alpha', 1)
        setProperty('camHUD.alpha', 1)
    end

    if curBeat == 640 then
        setProperty('camZooming', false)
    end

    if curBeat == 640 then
        doTweenAlpha('fadeOut2Game', 'camGame', 0, crochet/1000 * 64, 'linear')
        doTweenAlpha('fadeOut2HUD', 'camHUD', 0, crochet/1000 * 64, 'linear')
    end
end