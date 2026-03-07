-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Fade UI' then
		-- 1 remove  0 bring back
		type = tonumber(value1)
		duration = tonumber(value2);
		if duration < 0 then
			duration = 0;
		end

		-- fade out
		if type == 1 and duration == 0 then
			for i = 0, 4, 1 do
				setPropertyFromGroup('playerStrums', i, 'alpha', tonumber(0))
			end
			for i = 0, 4, 1 do
				setPropertyFromGroup('opponentStrums', i, 'alpha', tonumber(0))
			end
            setProperty('healthBar.alpha',  tonumber(0))
            setProperty('Health.alpha',  tonumber(0))
            setProperty('watermark.alpha',  tonumber(0))
            setProperty('songTextSY.alpha',  tonumber(0))
            setProperty('credits.alpha',  tonumber(0))
            setProperty('iconP1.alpha',  tonumber(0))
            setProperty('iconP2.alpha',  tonumber(0))
            setProperty('scoreTxt.alpha',  tonumber(0))
            setProperty('timeBar.alpha', tonumber(0))
            setProperty('timeTxt.alpha', tonumber(0))
            setProperty('botplayTxt.alpha', tonumber(0))
           setProperty('sick.alpha', tonumber(0))
          setProperty('good.alpha', tonumber(0))
          setProperty('bad.alpha', tonumber(0))
          setProperty('shit.alpha', tonumber(0))
		elseif type == 1 and duration > 0 then
			noteTweenAlpha("noteGoneOpp1", 0, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp2", 1, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp3", 2, 0, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp4", 3, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone5", 4, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone6", 5, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone7", 6, 0, duration, "quartInOut");
            noteTweenAlpha("noteGone8", 7, 0, duration, "quartInOut");
            doTweenAlpha('hp', 'healthBar', 0, duration, 'quartInOut')
            doTweenAlpha('h', 'Health', 0, duration, 'quartInOut')
            doTweenAlpha('sy', 'songTextSY', 0, duration, 'quartInOut')
            doTweenAlpha('hw', 'watermark', 0, duration, 'quartInOut')
            doTweenAlpha('hqq', 'credits', 0, duration, 'quartInOut')
            doTweenAlpha('hpicon1', 'iconP1', 0, duration, 'quartInOut')
            doTweenAlpha('hpicon2', 'iconP2', 0, duration, 'quartInOut')
            doTweenAlpha('score', 'scoreTxt', 0, duration, 'quartInOut')
            doTweenAlpha('timeBar', 'timeBar', 0, duration, 'quartInOut')
            doTweenAlpha('timeBarTxt', 'timeTxt', 0, duration, 'quartInOut')
            doTweenAlpha('botplaytxt', 'botplayTxt', 0, duration, 'quartInOut')
        doTweenAlpha('sicks', 'sick', 0, duration, 'quartInOut')
           doTweenAlpha('goods', 'good', 0, duration, 'quartInOut')
           doTweenAlpha('bads', 'bad', 0, duration, 'quartInOut')
           doTweenAlpha('shits', 'shit', 0, duration, 'quartInOut')
		end

		-- fade in
		if type == 0 and duration == 0 then
			for i = 0, 4, 1 do
				setPropertyFromGroup('playerStrums', i, 'alpha', tonumber(1))
			end
			for i = 0, 4, 1 do
				setPropertyFromGroup('opponentStrums', i, 'alpha', tonumber(1))
			end
            setProperty('healthBar.alpha',  tonumber(1))
            setProperty('Health.alpha',  tonumber(1))
            setProperty('watermark.alpha',  tonumber(1))
            setProperty('songTextSY.alpha',  tonumber(1))
            setProperty('credits.alpha',  tonumber(0))
            setProperty('iconP1.alpha',  tonumber(1))
            setProperty('iconP2.alpha',  tonumber(1))
            setProperty('scoreTxt.alpha',  tonumber(1))
            setProperty('timeBar.alpha', tonumber(1))
            setProperty('timeTxt.alpha', tonumber(1))
            setProperty('botplayTxt.alpha', tonumber(1))
         setProperty('sick.alpha', tonumber(1))
         setProperty('good.alpha', tonumber(1))
          setProperty('bad.alpha', tonumber(1))
          setProperty('shit.alpha', tonumber(1))
		elseif type == 0 and duration > 0 then
			noteTweenAlpha("noteGoneOpp1", 0, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp2", 1, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp3", 2, 1, duration, "quartInOut");
            noteTweenAlpha("noteGoneOpp4", 3, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone5", 4, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone6", 5, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone7", 6, 1, duration, "quartInOut");
            noteTweenAlpha("noteGone8", 7, 1, duration, "quartInOut");
            doTweenAlpha('hp', 'healthBar', 1, duration, 'quartInOut')
            doTweenAlpha('h', 'Health', 1, duration, 'quartInOut')
            doTweenAlpha('sy', 'songTextSY', 1, duration, 'quartInOut')
            doTweenAlpha('hw', 'watermark', 1, duration, 'quartInOut')
            doTweenAlpha('hqq', 'credits', 1, duration, 'quartInOut')
            doTweenAlpha('hpicon1', 'iconP1', 1, duration, 'quartInOut')
            doTweenAlpha('hpicon2', 'iconP2', 1, duration, 'quartInOut')
            doTweenAlpha('score', 'scoreTxt', 1, duration, 'quartInOut')
            doTweenAlpha('timeBar', 'timeBar', 1, duration, 'quartInOut')
            doTweenAlpha('timeBarTxt', 'timeTxt', 1, duration, 'quartInOut')
            doTweenAlpha('botplaytxt', 'botplayTxt', 1, duration, 'quartInOut')
         doTweenAlpha('sicks', 'sick', 1, duration, 'quartInOut')
           doTweenAlpha('goods', 'good', 1, duration, 'quartInOut')
           doTweenAlpha('bads', 'bad', 1, duration, 'quartInOut')
           doTweenAlpha('shits', 'shit', 1, duration, 'quartInOut')
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end

		--[[setProperty("noteGoneOpp1", 0, 0, tonumber(value2));
            setProperty("noteGoneOpp2", 1, 0, tonumber(value2));
            setProperty("noteGoneOpp3", 2, 0, tonumber(value2));
            setProperty("noteGoneOpp4", 3, 0, tonumber(value2));
            setProperty("noteGone5", 4, 0, tonumber(value2));
            setProperty("noteGone6", 5, 0, tonumber(value2));
            setProperty("noteGone7", 6, 0, tonumber(value2));
            setProperty("noteGone8", 7, 0, tonumber(value2));]]