function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 10') -- Change Default Macro Book Here

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
	sets.JA['Last Resort'] = {back="Ankou's Mantle"}

	sets.Idle = {
		ammo="Staunch Tathlum +1",
		head="Hjarrandi Helm",body="Hjarrandi Breastplate",hands="Volte Moufles",legs="Volte Brayettes",feet="Volte Sollerets",
		ear1="Odnowa Earring +1",ear2="Etiolation Earring",ring1="Defending Ring",ring2="Gelatinous Ring +1",
		neck="Warder's Charm +1",waist="Flume Belt +1",back={name="Ankou's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	sets.Idle.Regen = set_combine(sets.Idle,{
		head="Jumalik Helm",body="Sacro Breastplate",
		ear1="Infused earring",ring1="Sheltered Ring",ring2="Paguroidea Ring",
		neck="Coatl Gorget +1"
	})

	sets.Idle.MVMT = {legs="Carmine Cuisses +1"}

	-----------------
	-- Base TP Set --
	-----------------

	sets.TP = {}

	-----------------
	-- LowACC Sets --
	-----------------

	----------------------------------------------------------Base sets----------------------------------------------------------

	sets.TP.LowACC = {
		ammo="Ginsen",
		head="Flamma Zucchetto +2",body="Argosy Hauberk +1",hands="Sakpata's Gauntlets",legs="Ignominy Flanchard +3",feet="Flamma Gambieras +2",
		ear1="Cessance earring",ear2="Brutal Earring",ring1="Flamma Ring",ring2="Niqmaddu Ring",
		neck="Abyssal Beads +1",waist="Ioskeha Belt +1",back={name="Ankou's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}
	sets.TP.LowACC.Fighters = set_combine(sets.TP.LowACC,{
	})
	sets.TP.LowACC.Dual = set_combine(sets.TP.LowACC,{hands="Emicho Gauntlets +1",ear1="Suppanomimi"})

	----------------------------------------------------------2h sets start----------------------------------------------------------
	--rag
	sets.TP.LowACC.Ragnarok = set_combine(sets.TP.LowACC,{
		body="Hjarrandi Breastplate",hands="Flamma Manopolas +2",legs={name="Odyssean Cuisses",augments={'Accuracy+25','"Store TP"+7','DEX+7'}},feet="Valorous Greaves"
	})
	sets.TP.LowACC.Ragnarok.Fighters = set_combine(sets.TP.LowACC.Ragnarok,{
	})

	--apoc
	sets.TP.LowACC.Apocalypse = set_combine(sets.TP.LowACC,{
	})
	sets.TP.LowACC.Apocalypse.Fighters = set_combine(sets.TP.LowACC.Apocalypse,{
	})

	--calad
	sets.TP.LowACC.Caladbolg = set_combine(sets.TP.LowACC,{
		body="Hjarrandi Breastplate",hands="Flamma Manopolas +2",legs={name="Odyssean Cuisses",augments={'Accuracy+25','"Store TP"+7','DEX+7'}},feet="Valorous Greaves"
	})
	sets.TP.LowACC.Caladbolg.Fighters = set_combine(sets.TP.LowACC.Caladbolg,{
	})

	----------------------------------------------------------1h sets start----------------------------------------------------------
	--???


	------------------
	-- HighACC Sets --
	------------------

	----------------------------------------------------------Base sets----------------------------------------------------------

	sets.TP.HighACC = set_combine(sets.TP.LowACC,{
	})
	sets.TP.HighACC.Fighters = set_combine(sets.TP.HighACC,{
	})
	sets.TP.HighACC.Dual = set_combine(sets.TP.HighACC,{hands="Emicho Gauntlets +1",ear1="Suppanomimi"})

	----------------------------------------------------------2h sets start----------------------------------------------------------
	--rag
	sets.TP.HighACC.Ragnarok = set_combine(sets.TP.HighACC,{
		hands="Argosy mufflers +1"
	})
	sets.TP.HighACC.Ragnarok.Fighters = set_combine(sets.TP.HighACC.Ragnarok,{
	})

	--apoc
	sets.TP.HighACC.Apocalypse = set_combine(sets.TP.HighACC,{
	})
	sets.TP.HighACC.Apocalypse.Fighters = set_combine(sets.TP.HighACC.Apocalypse,{
	})

	--calad
	sets.TP.HighACC.Caladbolg = set_combine(sets.TP.HighACC,{
	})
	sets.TP.HighACC.Caladbolg.Fighters = set_combine(sets.TP.HighACC.Caladbolg,{
	})

	----------------------------------------------------------1h sets start----------------------------------------------------------
	--???

	-----------------
	-- Hybrid Sets --
	-----------------

	sets.TP.Hybrid = set_combine(sets.TP.LowACC,{
		head="Hjarrandi Helm",body="Hjarrandi Breastplate",hands="Sakpata's Gauntlets",legs="Volte Brayettes",feet="Volte Sollerets",
		ring1="Defending Ring",
		waist="Sailfi Belt +1"
	})

	sets.TP.Hybrid.Apocalypse = set_combine(sets.TP.Hybrid,{
	})

	sets.TP.DT = set_combine(sets.TP.Hybrid,{
		head="Sakpata's Helm",body="Sakpata's Plate",hands="Sakpata's Gauntlets",legs="Sakpata's Cuisses",feet="Sakpata's Leggings",
        --head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Odnowa earring +1",ear2="Etiolation Earring",ring1="Defending Ring",ring2="K'ayres Ring",
		neck="Warder's Charm +1"
	})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		Ammo="Coiste Bodhar",
		head="Sakpata's Helm",body="Sakpata's Plate",hands="Sakpata's Gauntlets",legs="Sakpata's Cuisses",feet="Sakpata's Leggings",
		ear1="Moonshade Earring",ear2="Thrud Earring",ring1="Regal Ring",ring2="Niqmaddu Ring",
		neck="Abyssal Beads +1",waist="Fotia Belt",back={name="Ankou's Mantle",augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%'}}
	}

	sets.WS["Resolution"] = set_combine(sets.WS,{waist="Sailfi Belt +1"})
	sets.WS["Resolution"].WSD = set_combine(sets.WS["Resolution"],{waist="Sailfi Belt +1"})

	sets.WS['Insurgency'] = set_combine(sets.WS,{legs="Ignominy Flanchard +3",waist="Sailfi Belt +1",})
	sets.WS['Insurgency'].WSD = set_combine(sets.WS,{legs="Ignominy Flanchard +3",waist="Sailfi Belt +1",})

	sets.WS['Decimation'] = set_combine(sets.WS,{ear1="Lugra Earring +1",waist="Sailfi Belt +1",})
	sets.WS['Decimation'].WSD = set_combine(sets.WS,{ear1="Lugra Earring +1",waist="Sailfi Belt +1",})

	sets.WS['Torcleaver'] = set_combine(sets.WS,{
		Ammo="KnobKierrie",
		head="Nyame Helm",body="Ignominy cuirass +3",hands="Nyame Gauntlets",legs="Fallen's Flanchard +3",feet="Nyame Sollerets",
		waist="Fotia Belt"
	})
	sets.WS['Torcleaver'].WSD = set_combine(sets.WS['Torcleaver'],{})

	sets.WS['Catastrophe'] = set_combine(sets.WS,{
		Ammo="KnobKierrie",
		head="Nyame Helm",body="Ignominy cuirass +3",hands="Nyame Gauntlets",legs="Fallen's Flanchard +3",feet="Nyame Sollerets",
		ear1="Lugra Earring +1",
		back={name="Ankou's Mantle",augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
	})
	sets.WS['Catastrophe'].WSD = set_combine(sets.WS['Catastrophe'],{})

	sets.WS['Cross Reaper'] = set_combine(sets.WS['Catastrophe'],{ear1="Moonshade Earring",})
	sets.WS['Cross Reaper'].WSD = set_combine(sets.WS['Catastrophe'],{ear1="Moonshade Earring",})
	sets.WS['Quietus'] = set_combine(sets.WS['Catastrophe'],{ear1="Moonshade Earring",})
	sets.WS['Quietus'].WSD = set_combine(sets.WS['Catastrophe'],{ear1="Moonshade Earring",})
	sets.WS['Spiral Hell'] = set_combine(sets.WS['Catastrophe'],{ear1="Moonshade Earring",})
	sets.WS['Spiral Hell'].WSD = set_combine(sets.WS['Catastrophe'],{ear1="Moonshade Earring",})
	sets.WS['Savage Blade'] = set_combine(sets.WS['Catastrophe'],{ear1="Moonshade Earring",})
	sets.WS['Savage Blade'].WSD = set_combine(sets.WS['Catastrophe'],{ear1="Moonshade Earring",})

	sets.WS['Entropy'] = set_combine(sets.WS,{
		head="Hjarrandi Helm",body="Fallen's Cuirass +3",legs="Ignominy Flanchard +3",
		ear2="Lugra Earring +1",ring1="Metamorph Ring +1",ring2="Shiva Ring +1",
		waist="Fotia Belt",back={name="Ankou's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	})
	sets.WS['Entropy'].WSD = set_combine(sets.WS['Entropy'],{})

	sets.WS['Scourge'] = set_combine(sets.WS['Torcleaver'],{})
	sets.WS['Scourge'].WSD = set_combine(sets.WS['Torcleaver'],{})
	sets.WS['Ground Strike'] = set_combine(sets.WS['Torcleaver'],{})
	sets.WS['Ground Strike'].WSD = set_combine(sets.WS['Torcleaver'],{})
	sets.WS['Upheaval'] = set_combine(sets.WS['Torcleaver'],{})
	sets.WS['Upheaval'].WSD = set_combine(sets.WS['Torcleaver'],{})

	sets.WS['Infernal Scythe'] = set_combine(sets.WS,{
		Ammo="Seething Bomblet +1",
		head="Pixie Hairpin +1",body="Fallen's Cuirass +3",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Malignance Earring",ear2="Friomisi Earring",ring1="Archon Ring",ring2="Shiva Ring +1",
		neck="Sanctity Necklace",waist="Eschan Stone"
	})
	sets.WS['Infernal Scythe'].WSD = set_combine(sets.WS['Infernal Scythe'],{})

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
		ammo="Sapience Orb",
		head="Fallen's burgeonet +3",body="Sacro Breastplate",hands="Leyline Gloves",
		ear1="Malignance Earring",ear2="Enchanter's Earring +1",ring1="Kishar Ring",ring2="Weather. Ring",
		neck="Voltsurge Torque"
	}

	-------------
	-- Midcast --
	-------------

    sets.Midcast = {}

	sets.Midcast.MAB = {
		ammo="Pemphredo Tathlum",
		head="Jumalik Helm",body="Sacro Breastplate",hands="Fallen's Finger Gauntlets +3",legs="Fallen's Flanchard +3",feet="Founder's Greaves",
		ear1="Malignance Earring",ear2="Friomisi Earring",ring1="Shiva Ring +1",ring2="Shiva Ring +1",
		neck="Sanctity Necklace",waist="Eschan Stone"
	}

	sets.Midcast.MAcc = {
		ammo="Pemphredo Tathlum",
		ear1="Enchanter's Earring",ear2="Gwati Earring",ring1="Stikini Ring +1",ring2="Weather. Ring",
		neck="Sanctity Necklace",waist="Eschan Stone"
	}
	
	sets.Midcast.Dark = set_combine(sets.Midcast.MAB,{
		ammo="Pemphredo Tathlum",
		head="Ignominy burgonet +2",body="Carmine scale mail +1",hands="Fallen's Finger Gauntlets +3",legs="Fallen's Flanchard +3",feet="Ratri Sollerets",
		ear2="Mani Earring",ring1="Archon Ring",ring2="Evanescence Ring",
		neck="Erra Pendant",waist="Sailfi Belt +1",back="Niht Mantle"
	})
	
	sets.Midcast.Drain = set_combine(sets.Midcast.Dark,{
		head="",body="Lugra Cloak +1",legs="Heathen's Flanchard +1",feet="Ratri Sollerets",
	})
	
	sets.Midcast.Absorb = set_combine(sets.Midcast.Dark,{
		head="Ignominy burgonet +2",
		ring1="Kishar Ring",
		back="Ankou's Mantle"
	})
	
	sets.Midcast.Dread = set_combine(sets.Midcast.Dark,{
		head="Ratri Sallet",body="Heath. Cuirass +1",hands="Ratri Gadlings",legs="Ratri Cuisses",feet="Ratri Sollerets",
		ear1="Odnowa Earring +1",ear2="Etiolation Earring",ring1="Eihwaz Ring",ring2="K'ayres Ring",
		neck="Loricate Torque +1",waist="Eschan Stone",back="Moonbeam Cape"
	})

	---------------
	-- Aftercast --
	---------------

    sets.aftercast = {}
end

--------------------------------------------------------------------------------------------------------------
-- HUD STUFF
--------------------------------------------------------------------------------------------------------------

AccIndex = 1
AccArray = {"LowACC","HighACC","Hybrid"}
cidleset = 'Load Temp'
DWMode = false
CPMode = false
DynaMode = false
FighterMode = false
local res = require('resources')

function setup_hud()
    job_property = {}
    job_info = {}
    job_info.box={
        pos={x=2725,y=1320}, -- Change hud pos here
        text={font='Segoe UI Symbol', size=10, Fonts={'sans-serif'},},
        bg={alpha=200,red=0,green=0,blue=0},
        flags={draggable=false},
        padding=4
    }
    window = texts.new(job_info.box)
    initialize(window, job_info.box)
    window:show()
    updatedisplay()
end

function initialize(text, settings)
    local properties = L{}
    properties:append('${modestates}')
    text:clear()
    text:append(properties:concat('\n'))
end

function updatedisplay()
    local str = 'AccMode: \\cs(150,150,255)'..AccArray[AccIndex]..'\\cr'
	str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
	str = str..'\nDWMode: \\cs(150,150,255)'..tostring(DWMode)..'\\cr'
	str = str..'\nDynaMode: \\cs(150,150,255)'..tostring(DynaMode)..'\\cr'
	str = str..'\nCPMode: \\cs(150,150,255)'..tostring(CPMode)..'\\cr'

    local info = {}
    info.modestates = str

    window:update(info)
end

setup_hud()

--------------------------------------------------------------------------------------------------------------
--End Hud Stuff
--------------------------------------------------------------------------------------------------------------
         
function pretarget(spell,action)
	if spell.type == 'WeaponSkill' then
	    local range_mult = {
			[2] = 1.55,
			[3] = 1.490909,
			[4] = 1.44,
			[5] = 1.377778,
			[6] = 1.30,
			[7] = 1.15,
			[8] = 1.25,
			[9] = 1.377778,
			[10] = 1.45,
			[11] = 1.454545454545455,
			[12] = 1.666666666666667,
		}
		ability_distance = res.weapon_skills[spell.id].range
		if spell.target.model_size ~= nil then
			if spell.target.distance > (ability_distance * range_mult[ability_distance] + spell.target.model_size + player.model_size) then
				cancel_spell()
				add_to_chat(123, spell.name..' Canceled: [Out of Range]')
				aftercast()
				return
			end
		end
	end
end

function buff_change(buff,gain)
    if buff:lower() == 'terror' or buff:lower() == 'petrification' or buff:lower() == 'sleep' or buff:lower() == 'stun' then
        if gain then
            equip(sets.TP.DT)
			cidleset = 'Max DT'
			if buff:lower() == 'sleep' then
				if gain and player.hp > 120 and player.status == "Engaged" then -- Equip Berserker's Torque / frenzy When You Are Asleep
					equip({neck="Vim Torque +1"})
					add_to_chat(123,'Berserkers Torque equiped')
				end
			end
        elseif not gain then
            aftercast()
        end
    elseif buff:lower() == 'doom' then
		add_to_chat(123,'You are DOOMED, beg for your life mortal!')
    elseif buff:lower() == 'reive mark' then
        if gain then
			equip({neck="Ygnas's Resolve +1"})
			disable('neck')
			add_to_chat(123,'Reive neck locked')
        elseif not gain then
			if not DynaMode then
				enable('neck')
			end
		end
    elseif buff:lower() == 'fighter\'s roll' then
        if gain then
			FighterMode = true
			add_to_chat(123,'Fighter\'s roll detected')
            aftercast()
        elseif not gain then
			FighterMode = false
            aftercast()
        end
	end
    updatedisplay()
end
         
function precast(spell,action)
	if sets.JA[spell.name] then
		equipSet = sets.JA[spell.name]
		add_to_chat(122,spell.name .. ' Set')
		equip(equipSet)
	elseif spell.type:contains('Magic') then
		if spell.name == 'Impact' then
			disable('body','head')
            equip(sets.Precast)
        elseif spell.name == 'Stoneskin' then
            windower.ffxi.cancel_buff(37)--[[Cancels stoneskin, not delayed incase you get a Quick Cast]]
            equip(sets.Precast)
        elseif spell.name == 'Sneak' then
            windower.ffxi.cancel_buff(71)--[[Cancels Sneak]]
            equip(sets.Precast)
		else
            equip(sets.Precast)
        end
	elseif spell.type == 'WeaponSkill' then
		equipSet = sets.WS
		if AccArray[AccIndex] == 'HighACC' then
			if equipSet[spell.name] then
				if sets.WS[spell.name].HighACC then
					equipSet = equipSet[spell.name].HighACC
					add_to_chat(122,spell.name .. ' HighACC Set')
				else
					equipSet = equipSet[spell.name]
					add_to_chat(122,spell.name .. ' Set')
				end
			end
		elseif player.tp < 1750 or buffactive['Sekkanoki'] then
			if equipSet[spell.name] then
				equipSet = equipSet[spell.name]
				add_to_chat(122,spell.name .. ' Set')
			end
		elseif player.tp > 2750 then
			if equipSet[spell.name] then
				if equipSet[spell.name].WSD then
					equipSet = set_combine(equipSet[spell.name].WSD,{ear1="Ishvara Earring"})
					add_to_chat(122,spell.name .. ' Max Set')
				else
					equipSet = set_combine(equipSet[spell.name],{ear1="Ishvara Earring"})
					add_to_chat(122,spell.name .. ' Max Set')
				end
			else
				equipSet = set_combine(sets.WS,{ear1="Ishvara Earring"})
				add_to_chat(122,spell.name .. ' Max Set')
			end
		elseif player.tp > 1750 then
			if equipSet[spell.name] then
				if equipSet[spell.name].WSD then
					equipSet = equipSet[spell.name].WSD
					add_to_chat(122,spell.name .. ' WSD Set')
				else
					equipSet = equipSet[spell.name]
					add_to_chat(122,spell.name .. ' Set')
				end
			end
		end
		equip(equipSet)

		if world.time >= 17*60 or world.time < 7*60 then -- Dusk to Dawn time
			equip({ear1="Lugra Earring +1"})
		end
	elseif spell.type =='Ninjutsu' then
	end
end

function midcast(spell,action)
	if spell.skill == "Enfeebling Magic" then
		equip(sets.Midcast.MAcc)
	elseif spell.skill == "Enhancing Magic" then
		if spell.name:match('Protect') or spell.name:match('Shell') then
            equip({ring1="Sheltered Ring"})
		end
    elseif spell.type == 'BlackMagic' then
		if spell.skill == "Elemental Magic" then
			equip(sets.Midcast.MAB)
		elseif spell.skill == "Dark Magic" then
			if spell.name:contains('Drain') or spell.name:contains('Aspir') then
				equip(sets.Midcast.Drain)
			elseif spell.name:contains('Dread') then
				equip(sets.Midcast.Dread)
			elseif spell.name:contains('Absorb') then
				equip(sets.Midcast.Absorb)
			else
				equip(sets.Midcast.Dark)
			end
		end
	end
	
    if spell.element == world.weather_element and spell.element == 'Fire' then
        equip({waist="Karin Obi"})
    elseif spell.element == world.weather_element and spell.element == 'Ice' then
        equip({waist="Hyorin Obi"})
    elseif spell.element == world.weather_element and spell.element == 'Lightning' then
        equip({waist="Rairin Obi"})
    elseif spell.element == world.weather_element and spell.element == 'Light' then
        equip({waist="Korin Obi"})
    elseif spell.element == world.weather_element and spell.element == 'Dark' then
        equip({waist="Anrin Obi"})
    end
end

function aftercast(spell,action)
	if midaction() then
        return
    end

	enable('body','head')

	if player.status == 'Engaged' then
		equipSet = sets.TP
		if AccArray[AccIndex] == 'Hybrid' then
			equipSet = equipSet.Hybrid
			if player.equipment.main == 'Ragnarok' then
				equipSet = equipSet.Ragnarok
				cidleset = 'Ragnarok ' .. AccArray[AccIndex]
			elseif player.equipment.main == 'Apocalypse' then
				equipSet = equipSet.Apocalypse
				cidleset = 'Apocalypse ' .. AccArray[AccIndex]
			else
				cidleset = 'Base  ' .. AccArray[AccIndex]
			end
		elseif AccArray[AccIndex] == 'HighACC' then
			equipSet = equipSet.HighACC
			if player.equipment.main == 'Ragnarok' then
				equipSet = equipSet.Ragnarok
				cidleset = 'Ragnarok ' .. AccArray[AccIndex]
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Ragnarok ' .. AccArray[AccIndex]
				end
			elseif player.equipment.main == 'Apocalypse' then
				equipSet = equipSet.Apocalypse
				cidleset = 'Apocalypse ' .. AccArray[AccIndex]
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Apocalypse ' .. AccArray[AccIndex]
				end
			elseif player.equipment.main == 'Zantetsuken X' then
				equipSet = equipSet.Caladbolg
				cidleset = 'Caladbolg ' .. AccArray[AccIndex]
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Caladbolg ' .. AccArray[AccIndex]
				end
			else
				cidleset = 'Base ' .. AccArray[AccIndex]
				if DWMode then
					equipSet = equipSet.Dual
					cidleset = 'DW ' .. AccArray[AccIndex]
				end
			end
		else
			equipSet = equipSet.LowACC
			if player.equipment.main == 'Ragnarok' then
				equipSet = equipSet.Ragnarok
				cidleset = 'Ragnarok ' .. AccArray[AccIndex]
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Ragnarok ' .. AccArray[AccIndex]
				end
			elseif player.equipment.main == 'Apocalypse' then
				equipSet = equipSet.Apocalypse
				cidleset = 'Apocalypse ' .. AccArray[AccIndex]
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Apocalypse ' .. AccArray[AccIndex]
				end
			elseif player.equipment.main == 'Zantetsuken X' then
				equipSet = equipSet.Caladbolg
				cidleset = 'Caladbolg ' .. AccArray[AccIndex]
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Caladbolg ' .. AccArray[AccIndex]
				end
			else
				cidleset = 'Base ' .. AccArray[AccIndex]
				if DWMode then
					equipSet = equipSet.Dual
					cidleset = 'DW ' .. AccArray[AccIndex]
				end
			end
		end
		equip(equipSet)
	else
		if player.hpp > 80 then
			equip(sets.Idle.Regen)
			cidleset = 'Regen Idle'
		else
			equip(sets.Idle)
			cidleset = 'DT Idle'
		end
	end
    updatedisplay()
end
 
function status_change(new,old)
    if new == 'Resting' then
    else
        aftercast()
    end
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command)
function self_command(command)
	if command == 'acc' then -- Accuracy Level Toggle
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
	elseif command == 'dt' then -- Hybrid Accuracy Level
		AccIndex = 3
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
		cidleset = 'Max DT'
	elseif command == 'lacc' then -- Low Accuracy Level
		AccIndex = 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
	elseif command == 'gs' then
		equip({main="Ragnarok",sub="Utu Grip"})
	elseif command == 'ax' then
		equip({main="Kaja Axe",sub="Purgation"})
	elseif command == 'sw' then
		equip({main="Kaja Sword",sub="Reikiko"})
	elseif command == 'sc' then
		equip({main="Apocalypse",sub="Utu Grip"})
    elseif command == 'cp' then
        if CPMode then
            CPMode = false
            enable('back')
            windower.add_to_chat(8,'----- CP Mode Disabled -----')
        else
            CPMode = true
			equip({back="Mecistopins Mantle"})
            disable('back')
            windower.add_to_chat(8,'----- CP Mode Enabled, Cape Locked -----')
        end
    elseif command == 'dw' then
        if DWMode then
            DWMode = false
            windower.add_to_chat(8,'----- DualWield Mode Disabled -----')
        else
            DWMode = true
            windower.add_to_chat(8,'----- DualWield Mode Enabled -----')
        end
    elseif command == 'dyna' then
        if DynaMode then
            DynaMode = false
            enable('neck')
            windower.add_to_chat(8,'----- Dynamis Mode Disabled -----')
        else
            DynaMode = true
            disable('neck')
            windower.add_to_chat(8,'----- Dynamis Mode Enabled -----')
        end
    elseif command == 'update' then
		aftercast()
	end
    updatedisplay()
end