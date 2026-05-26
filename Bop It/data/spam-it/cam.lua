local blockedBeats = {
    [52]=true,[60]=true,[68]=true,[76]=true,
    [84]=true,[92]=true,[100]=true,[108]=true,
    [116]=true,[124]=true,[132]=true,[140]=true,
    [148]=true,[156]=true,[164]=true,[172]=true,
    [180]=true,[188]=true,[196]=true,[204]=true,
    [212]=true,[220]=true,[228]=true,[236]=true,
    [244]=true,[252]=true,[260]=true,[268]=true,
    [276]=true,[284]=true,[292]=true,

    [300]=true,[301]=true,[302]=true,[303]=true,
    [304]=true,[305]=true,[306]=true,[307]=true,
    [308]=true,[309]=true,[310]=true,[311]=true,
    [312]=true,

}

function onBeatHit()

    if blockedBeats[curBeat] then
        setProperty('camZooming', false)
        return
    end

    setProperty('camZooming', true)

end

function onCreate()
    makeLuaSprite('black', '', 0, 0)
    makeGraphic('black', screenWidth, screenHeight, '000000')
    setObjectCamera('black', 'other')
    addLuaSprite('black', true)

    setProperty('black.alpha', 1)
end
