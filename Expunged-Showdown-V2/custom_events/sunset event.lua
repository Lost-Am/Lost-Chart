function onEvent(name, value1, value2)
    if name == "sunset event" then
    makeLuaSprite('sky2', 'sky_sunset', -600, -200);
    setScrollFactor('sky2', 0.6, 0.6);
    setObjectOrder('sky', 0)
    setObjectOrder('sky2', 1)
    setObjectOrder('example', 2)
if songName == "Escape-From-California" then
makeLuaSprite('sky2', 'sky_sunset', -1000, -1000)
scaleObject('sky2', 1.8, 1.8)
   setObjectOrder('sky', 0)
    setObjectOrder('sky2', 1)
    setObjectOrder('example', 2)
end
    doTweenAlpha('funnysunset1', 'sky2', 0, 0.0001, 'linear');

    addLuaSprite('sky2', false);


    doTweenAlpha('funnysunset12', 'sky2', 1, 45, 'linear');

--dad gf and bf
    doTweenColor('boyfriendColorTween', 'boyfriend', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('dadColorTween', 'dad', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('gfColorTween', 'gf','0xffff8fb2', 45, 'quadInOut')
--bg
    doTweenColor('exampleColorTween', 'grassLand', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('exampleColorTween2', 'cornBag', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('exampleColorTween3', 'cornFence', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('exampleColorTween4', 'cornFence2', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('exampleColorTween5', 'sign', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('exampleColorTween6', 'grass', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('exampleColorTween7', 'gate', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('exampleColorTween8', 'house', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('exampleColorTween9', 'grill', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('exampleColorTween10', 'farmHouse', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('exampleColorTween11', 'flatgrass', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('exampleColorTween12', 'hills', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('exampleColorTween13', 'train', '0xffff8fb2', 45, 'quadInOut')
doTweenColor('exampleColorTween16', 'grassbg', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('exampleColorTween14', '1', '0xffff8fb2', 45, 'quadInOut')
    doTweenColor('exampleColorTween15', '2', '0xffff8fb2', 45, 'quadInOut')
    end
    end