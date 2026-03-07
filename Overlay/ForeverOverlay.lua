function onCreatePost()
    makeLuaText('hsliceTag', 'H-Slice+JS 0.2.3', 0, 0, 0)
    setTextSize('hsliceTag', 18)
    setTextBorder('hsliceTag', 1, '000000')
    setTextAlignment('hsliceTag', 'right')
    setObjectCamera('hsliceTag', 'hud')
    addLuaText('hsliceTag')

    setProperty('hsliceTag.x', screenWidth - getProperty('hsliceTag.width') - 8)
    setProperty('hsliceTag.y', screenHeight - getProperty('hsliceTag.height') - 6)
end
