-- =========================
-- CONFIG
-- =========================
local finished = false

-- =========================
-- START
-- =========================
function onStartCountdown()
    setProperty('health', 50)
end

-- =========================
-- UPDATE
-- =========================
function onUpdate(elapsed)

    -- 🔴 APAGADO DEFINITIVO EN BEAT 360
    if curBeat > 410 then
        if not finished then
            finished = true
            forceResetStrums()
        end
        return
    end

    setPropertyFromClass('ClientPrefs', 'middleScroll', false)

    songPos = getSongPosition()
    local currentBeat = (songPos / 5000) * (curBpm / 60)

    -- PLAYER
    noteTweenX('p0', 4, defaultPlayerStrumX0 - 50 * math.sin((currentBeat + 1) * math.pi), 0.5)
    noteTweenX('p1', 5, defaultPlayerStrumX1 - 350 + 2000 * math.sin((currentBeat + 2) * math.pi), 3)
    noteTweenX('p2', 6, defaultPlayerStrumX2 - 50 * math.sin((currentBeat + 1) * math.pi), 0.5)
    noteTweenX('p3', 7, defaultPlayerStrumX3 - 350 + 2000 * math.sin((currentBeat + 2) * math.pi), 3)

    -- OPPONENT
    noteTweenX('o0', 0, defaultOpponentStrumX0 + 50 * math.sin((currentBeat + 1) * math.pi), 0.5)
    noteTweenX('o1', 1, defaultOpponentStrumX1 + 350 - 2000 * math.sin((currentBeat + 2) * math.pi), 3)
    noteTweenX('o2', 2, defaultOpponentStrumX2 + 50 * math.sin((currentBeat + 1) * math.pi), 0.5)
    noteTweenX('o3', 3, defaultOpponentStrumX3 + 350 - 2000 * math.sin((currentBeat + 2) * math.pi), 3)

    doTweenY('dadMove', 'dad', 150 - 150 * math.sin((currentBeat + 5) * math.pi), 2)
end

-- =========================
-- RESET REAL (SIN TWEENS)
-- =========================
function forceResetStrums()

    -- 🔥 cancelar TODOS los tweens
    cancelTween('p0'); cancelTween('p1'); cancelTween('p2'); cancelTween('p3')
    cancelTween('o0'); cancelTween('o1'); cancelTween('o2'); cancelTween('o3')
    cancelTween('dadMove')

    -- PLAYER (X + Y)
    for i = 0, 3 do
        setPropertyFromGroup('playerStrums', i, 'x', _G['defaultPlayerStrumX'..i])
        setPropertyFromGroup('playerStrums', i, 'y', getPropertyFromGroup('playerStrums', i, 'defaultY'))
    end

    -- OPPONENT (X + Y)
    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'x', _G['defaultOpponentStrumX'..i])
        setPropertyFromGroup('opponentStrums', i, 'y', getPropertyFromGroup('opponentStrums', i, 'defaultY'))
    end
end

-- =========================
-- DAMAGE
-- =========================
function opponentNoteHit(id, direction, noteType, isSustainNote)
    if curBeat <= 410 then
        setProperty('health',
            getProperty('health') - 1 * ((getProperty('health') / 22)) / 6
        )
    end
end