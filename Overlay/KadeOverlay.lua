function onCreatePost()
    local songName = songName or getProperty('curSong')
    local diffName = getProperty('storyDifficultyText') or 'Normal'

    local text = songName .. ' - ' .. diffName .. ' | H-Slice+JS 0.2.3'

    makeLuaText('songInfo', text, 0, 8, 0)
    setTextSize('songInfo', 18)
    setTextBorder('songInfo', 1, '000000')
    setTextAlignment('songInfo', 'left')
    setObjectCamera('songInfo', 'hud')
    addLuaText('songInfo')

    setProperty('songInfo.y', screenHeight - getProperty('songInfo.height') - 6)
end
