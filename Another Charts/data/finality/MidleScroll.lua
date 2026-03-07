function onSongStart()
    
    for i = 0, 3 do
        setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
        setPropertyFromGroup('strumLineNotes', i, 'visible', false)
    end

    
    local sw = getPropertyFromClass('flixel.FlxG', 'width')
    local spacing = 112
    local startX = (sw / 2) - (spacing * 2)

    for i = 4, 7 do
        setPropertyFromGroup(
            'strumLineNotes',
            i,
            'x',
            startX + (i - 4) * spacing
        )
    end

    
    setProperty('healthBar.visible', false)
    setProperty('healthBarBG.visible', false)
    setProperty('iconP1.visible', false)
    setProperty('iconP2.visible', false)
end

function onUpdate()
    
    for i = getProperty('notes.length') - 1, 0, -1 do
        if not getPropertyFromGroup('notes', i, 'mustPress') then
            removeFromGroup('notes', i, true)
        end
    end
end
