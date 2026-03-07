function onEvent(name, value1, value2)
    if name == "day event" then
    makeLuaSprite('sky4', 'sky', -600, -200);
    setScrollFactor('sky4', 0.6, 0.6);
    setObjectOrder('sky3', 1)
    setObjectOrder('sky4', 2)
    setObjectOrder('example', 3)

    doTweenAlpha('funnyday1', 'sky4', 0, 0.0001, 'linear');

    addLuaSprite('sky4', false);


    doTweenAlpha('funnyday2', 'sky4', 1, 45, 'linear');

--dad gf and bf
    doTweenColor('boyfriendColorTween', 'boyfriend', '0xffffffff', 45, 'quadInOut')
    doTweenColor('dadColorTween', 'dad', '0xffffffff', 45, 'quadInOut')
    doTweenColor('gfColorTween', 'gf','0xffffffff', 45, 'quadInOut')
--bg
    doTweenColor('exampleColorTween', 'grassLand', '0xffffffff', 45, 'quadInOut')
    doTweenColor('exampleColorTween2', 'cornBag', '0xffffffff', 45, 'quadInOut')
    doTweenColor('exampleColorTween3', 'cornFence', '0xffffffff', 45, 'quadInOut')
    doTweenColor('exampleColorTween4', 'cornFence2', '0xffffffff', 45, 'quadInOut')
    doTweenColor('exampleColorTween5', 'sign', '0xffffffff', 45, 'quadInOut')
    doTweenColor('exampleColorTween6', 'farmHouse', '0xffffffff', 45, 'quadInOut')
    doTweenColor('exampleColorTween7', 'flatgrass', '0xffffffff', 45, 'quadInOut')
    doTweenColor('exampleColorTween8', 'hills', '0xffffffff', 45, 'quadInOut')
   doTweenColor('exampleColorTween9', 'grass', '0xffffffff', 45, 'quadInOut')
   doTweenColor('exampleColorTween13', 'grassbg', '0xffffffff', 45, 'quadInOut')
    doTweenColor('exampleColorTween10', 'gate', '0xffffffff', 45, 'quadInOut')
    doTweenColor('exampleColorTween11', 'house', '0xffffffff', 45, 'quadInOut')
    doTweenColor('exampleColorTween12', 'grill', '0xffffffff', 45, 'quadInOut')
    end
    end