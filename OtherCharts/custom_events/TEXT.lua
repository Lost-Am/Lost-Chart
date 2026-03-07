require "math"
function onCreate() -- creates the first text object, "customtext".
	runTimer("allfpslol", 1/framerate, 0) -- idk why i still have this here, could just use onUpdate with my latest improvements
	posx = 0
	posy = 0 -- setting default values
	prevposx = 0
	prevposy = 0
	text = ""
	width = 300
	size = 25
	color = "FFFFFF"
	font = ""
	object = "customtext"
	objects = {"customtext"}
	tween = false
	alreadytweening = false
	
	makeLuaText(object, text, width, pos) --making text object
	addLuaText(object)
	setTextSize(object, size)
end

luaDebugMode = true

function onEvent(name, value1, value2)
	if name == 'TEXT' then
		if value1 == "1" then
			text = value2
			setTextString(object, value2)
		end
		if value1 == "2" then
			
			string = value2 -- setting up value to be separated

			splitpos = string:split(",")
			
			posx = tonumber(splitpos[1])
			posy = tonumber(splitpos[2])
			if table.getn(splitpos) >= 3 then
				timetotween = splitpos[3]
				timetotween = tonumber(timetotween)
			else
				timetotween = ""
			end
			if timetotween == "" then -- if not blank and greater than 0, then we have something we can tween with
				--debugPrint("didn't get tween") --these were for testing. uncomment if editing!
				setProperty(object .. '.x', posx)
				setProperty(object .. '.y', posy)
			elseif timetotween > 0 then
				doTweenX(object .. "x", object, posx, timetotween, 'linear')
				doTweenY(object .. "y", object, posy, timetotween, 'linear')
				--debugPrint("got tween")
			else 
				debugPrint("The third value can't be 0 or less! Remove it if you don't need it!") -- If you don't need it, don't include it!
				setProperty(object .. '.x', posx)
				setProperty(object .. '.y', posy)
			end
		end
		if value1 == "3" then
			color = value2
			setTextColor(object, value2)
		end
		if value1 == "4" then
			size = value2
			setTextSize(object, value2)
		end
		if value1 == "5" then
			width = value2
			setTextWidth(object, value2)
		end
		if value1 == "6" then
			font = value2
			setTextFont(object, value2)
		end
		if value1 == "7" then
			object = value2
			if setContains(objects, object) then -- gotta make sure it exists. this list contains all created text objects

			else	
				table.insert(objects, object) -- if it doesn't exist, then add it to the list and create it.
				-- initialise the text object
				posx = 0 -- setting default values
				posy = 0
				text = ""
				width = 300
				size = 25
				color = "FFFFFF"
				font = ""
			
				makeLuaText(object, text, width, pos) --making text object
				addLuaText(object)
				setTextSize(object, size)					
			end
		end
		if value1 == "8" then -- this code is terribly simple, it's just the initialisation script again.
			pos = 0, 0 -- setting default values
			text = ""
			width = 300
			size = 25
			color = "FFFFFF"
			font = ""
			
			makeLuaText(object, text, width, pos) --making text object
			addLuaText(object)
			setTextSize(object, size)
		end
	end
end

function addToSet(set, key)
    set[key] = true
end

function removeFromSet(set, key)
    set[key] = nil
end

function setContains(set, key)
	searchResult = false
	for i = 1, #set do
		if set[i]:match(key) then
			searchResult = true
		end
	end
    return searchResult
end

function string:split( inSplitPattern, outResults )
  if not outResults then
    outResults = { }
  end
  local theStart = 1
  local theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
  while theSplitStart do
    table.insert( outResults, string.sub( self, theStart, theSplitStart-1 ) )
    theStart = theSplitEnd + 1
    theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
  end
  table.insert( outResults, string.sub( self, theStart ) )
  return outResults
end