

function gadget:GetInfo()
	return {
		name		= "Xmas effects",
		desc		= "Creates comblast xmasballs and random candycanes on the map",
		author		= "Floris",
		date		= "October 2017",
		license		= "",
		layer		= 0,
		enabled		= true,
	}
end


if gadgetHandler:IsSyncedCode() then

	local enableUnitDecorations = true		-- burst out xmas ball after unit death
	local maxDecorations = 150

	local itsXmas = false

	local hasDecoration = {}
	for udefID,def in ipairs(UnitDefs) do
		if def.name == 'xmasball' then
			xmasballUdefID = udefID
		end
		if not def.isAirUnit and not def.modCategories["ship"] and not def.modCategories["hover"] and not def.modCategories["underwater"] then
			if def.mass >= 35 then
				local balls = math.floor(((def.radius-15) / 8))
				if balls > 0 then
					hasDecoration[udefID] = {balls, (def.radius/12), 30*6}
				end
			end
		end
		if def.customParams.iscommander ~= nil then
			hasDecoration[udefID] = {28, 9, 30*18}
		end
	end

	local addGaiaBalls = false	-- if false, only own teamcolored balls are added

	local decorationCount = 0
	local decorations = {}
	local decorationsTerminal = {}
	local createDecorations = {}
	local createdDecorations = {}

	local candycaneAmount = math.ceil((Game.mapSizeX*Game.mapSizeZ)/1500000)
	local candycanes = {}
	local gaiaTeamID = Spring.GetGaiaTeamID()
	local random = math.random
	local GetGroundHeight = Spring.GetGroundHeight
	local receivedPlayerXmas = {}
	local receivedPlayerCount = 0

	function gadget:RecvLuaMsg(msg, playerID)
		if msg:sub(1,4)=="xmas" then
			if receivedPlayerXmas[playerID] == nil then
				receivedPlayerCount = receivedPlayerCount + 1
				receivedPlayerXmas[playerID] = (msg:sub(5,6) == '1' and true or false)
			end
		end
	end

	function initiateXmas()
		if not itsXmas then
			itsXmas = true
			-- spawn candy canes
			for i=1, candycaneAmount do
				local x = random(0, Game.mapSizeX)
				local z = random(0, Game.mapSizeZ)
				local groundType, groundType2 = Spring.GetGroundInfo(x,z)
				if (type(groundType) == 'string' and groundType ~= "void" or groundType2 ~= "void") then	-- 105 compatibility
					local y = GetGroundHeight(x, z)
					local caneType = math.ceil(random(1,7))
					local featureID = Spring.CreateFeature('candycane'..caneType,x,y,z,random(0,360))
					Spring.SetFeatureRotation(featureID, random(-12,12), random(-12,12), random(-180,180))
					candycanes[featureID] = caneType
				end
			end
		end
	end

	local function setGaiaUnitSpecifics(unitID)
		Spring.SetUnitNeutral(unitID, true)
		Spring.SetUnitNoSelect(unitID, true)
		Spring.SetUnitStealth(unitID, true)
		Spring.SetUnitNoMinimap(unitID, true)
		--Spring.SetUnitMaxHealth(unitID, 2)
		Spring.SetUnitBlocking(unitID, true, true, false, false, true, false, false)
		Spring.SetUnitSensorRadius(unitID, 'los', 0)
		Spring.SetUnitSensorRadius(unitID, 'airLos', 0)
		Spring.SetUnitSensorRadius(unitID, 'radar', 0)
		Spring.SetUnitSensorRadius(unitID, 'sonar', 0)
		for weaponID, _ in pairs(UnitDefs[Spring.GetUnitDefID(unitID)].weapons) do
			Spring.UnitWeaponHoldFire(unitID, weaponID)
		end
	end

	function gadget:GameFrame(n)
		if not itsXmas then
			if n == 1 then
				local xmasRatio = 0
				for playerID, xmas in pairs(receivedPlayerXmas) do
					if xmas then
						xmasRatio = xmasRatio + (1/receivedPlayerCount)
					end
				end
				if xmasRatio > 0.75 then
					initiateXmas()
				else
					return
				end
			else
				return
			end
		end
		if n % 30 == 1 then
			for unitID, frame in pairs(decorations) do
				if frame < n then
					decorations[unitID] = nil
					local x,y,z = Spring.GetUnitPosition(unitID)
					local gy = Spring.GetGroundHeight(x,z)

					decorationsTerminal[unitID] = n+240+((y - gy) * 33)		-- allows if in sea to take longer to go under seafloor
					if decorationsTerminal[unitID] > n+1400 then	-- limit time
						decorationsTerminal[unitID] = n+1400
					end
					local env = Spring.UnitScript.GetScriptEnv(unitID)
					Spring.UnitScript.CallAsUnit(unitID,env.Sink)
				end
			end
		end
		if n % 90 == 1 then
			for unitID, frame in pairs(decorationsTerminal) do

				if frame < n then
					decorationsTerminal[unitID] = nil
					if Spring.GetUnitIsDead(unitID) == false then
						Spring.DestroyUnit(unitID, false, false)
					end
				end
			end
		end

		-- add destroyed unit decorations
		if enableUnitDecorations then
			for _, data in ipairs(createDecorations) do
				local i = 0
				local uID
				local amount = hasDecoration[data[5]][1]
				while i < amount do
					local teamID = data[4]
					if addGaiaBalls and random() > 0.5 then
						teamID = gaiaTeamID
					end
					uID = Spring.CreateUnit(xmasballUdefID, data[1],data[2],data[3], 0, teamID)
					if uID ~= nil then
						decorationCount = decorationCount + 1
						decorations[uID] = Spring.GetGameFrame() + hasDecoration[data[5]][3] + (random()*(hasDecoration[data[5]][3]*0.33))
						Spring.SetUnitRotation(uID,random()*360,random()*360,random()*360)
						local impulseMult = hasDecoration[data[5]][2]
						Spring.AddUnitImpulse(uID, (random()-0.5)*(impulseMult/2), 1+(random()*impulseMult), (random()-0.5)*(impulseMult/2))
					end
					i = i + 1
				end
			end
			createDecorations = {}
		end

		-- add gifted unit decorations
		for _, unitID in ipairs(createdDecorations) do
			if decorations[unitID] == nil then
				decorationCount = decorationCount + 1
				decorations[unitID] = Spring.GetGameFrame() + 600 + (random()*300)
				setGaiaUnitSpecifics(unitID)
				Spring.SetUnitRotation(unitID,random()*360,random()*360,random()*360)
				Spring.AddUnitImpulse(unitID, (random()-0.5)*2, 3.8+(random()*1), (random()-0.5)*2)
			end
		end
		createdDecorations = {}
	end

	function gadget:UnitDestroyed(unitID, unitDefID, teamID, attackerID, attackerDefID, attackerTeamID)
		if not itsXmas then
			return
		end
		if unitDefID == xmasballUdefID then
			if decorations[unitID] ~= nil then
				decorations[unitID] = nil
			elseif decorationsTerminal[unitID] ~= nil then
				decorationsTerminal[unitID] = nil
			end
			decorationCount = decorationCount - 1
		elseif attackerID ~= nil then	-- is not reclaimed
			if enableUnitDecorations and hasDecoration[unitDefID] ~= nil and decorationCount < maxDecorations then
				local x,y,z = Spring.GetUnitPosition(unitID)
				createDecorations[#createDecorations+1] = {x,y,z, teamID, unitDefID }
				--Spring.Echo(hasDecoration[unitDefID][1])
			end
		end
	end

	function gadget:UnitCreated(unitID, unitDefID, unitTeam)
		if unitDefID == xmasballUdefID then
			setGaiaUnitSpecifics(unitID)
		end
	end

	function gadget:UnitGiven(unitID, unitDefID, unitTeam)
		if unitDefID == xmasballUdefID then
			setGaiaUnitSpecifics(unitID)
		end
	end

	function gadget:GameOver()
		gadgetHandler:RemoveGadget(self)
	end
end
