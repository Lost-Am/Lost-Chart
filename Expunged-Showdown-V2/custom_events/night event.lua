function onEvent(name, value1, value2)
    if name == "night event" then
    makeLuaSprite('sky3', 'sky_night', -600, -200);
    setScrollFactor('sky3', 0.6, 0.6);
    setObjectOrder('sky2', 1)
    setObjectOrder('sky3', 2)
    setObjectOrder('example', 3)
if songName == "Escape-From-California" then
makeLuaSprite('sky3', 'sky_night', -1000, -1000)
scaleObject('sky3', 1.8, 1.8)
    setObjectOrder('sky2', 1)
    setObjectOrder('sky3', 2)
    setObjectOrder('example', 3)
end

    doTweenAlpha('funnynight1', 'sky3', 0, 0.0001, 'linear');

    addLuaSprite('sky3', false);


    doTweenAlpha('funnynight2', 'sky3', 1, 45, 'linear');

--dad gf and bf
    doTweenColor('boyfriendColorTween', 'boyfriend', '0xff878787', 45, 'quadInOut')
    doTweenColor('dadColorTween', 'dad', '0xff878787', 45, 'quadInOut')
    doTweenColor('gfColorTween', 'gf','0xff878787', 45, 'quadInOut')
--bg
    doTweenColor('exampleColorTween', 'grassLand', '0xff878787', 45, 'quadInOut')
    doTweenColor('exampleColorTween2', 'cornBag', '0xff878787', 45, 'quadInOut')
    doTweenColor('exampleColorTween3', 'cornFence', '0xff878787', 45, 'quadInOut')
    doTweenColor('exampleColorTween4', 'cornFence2', '0xff878787', 45, 'quadInOut')
    doTweenColor('exampleColorTween5', 'sign', '0xff878787', 45, 'quadInOut')
    doTweenColor('exampleColorTween6', 'farmHouse', '0xff878787', 45, 'quadInOut')
    doTweenColor('exampleColorTween7', 'flatgrass', '0xff878787', 45, 'quadInOut')
    doTweenColor('exampleColorTween8', 'hills', '0xff878787', 45, 'quadInOut')
    doTweenColor('exampleColorTween9', 'train', '0xff878787', 45, 'quadInOut')
    doTweenColor('exampleColorTween10', '1', '0xff878787', 45, 'quadInOut')
    doTweenColor('exampleColorTween11', '2', '0xff878787', 45, 'quadInOut')
doTweenColor('exampleColorTween12', 'gate', '0xff878787', 45, 'quadInOut')
   doTweenColor('exampleColorTween13', 'grassbg', '0xff878787', 45, 'quadInOut')
    end
    end