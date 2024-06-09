nukes = {}
nukes.t1 = {['Earth']="Stone",		['Water']="Water",		['Air']="Aero",		['Fire']="Fire",	['Ice']="Blizzard",		['Thunder']="Thunder",		['Light']="Thunder",	['Dark']="Blizzard"}
nukes.t2 = {['Earth']="Stone II",	['Water']="Water II",	['Air']="Aero II",	['Fire']="Fire II",	['Ice']="Blizzard II",	['Thunder']="Thunder II",	['Light']="Thunder II",	['Dark']="Blizzard II"}
nukes.t3 = {['Earth']="Stone III",	['Water']="Water III",	['Air']="Aero III",	['Fire']="Fire III",['Ice']="Blizzard III",	['Thunder']="Thunder III",	['Light']="Thunder III",['Dark']="Blizzard III"}
nukes.t4 = {['Earth']="Stone IV",	['Water']="Water IV",	['Air']="Aero IV",	['Fire']="Fire IV",	['Ice']="Blizzard IV",	['Thunder']="Thunder IV",	['Light']="Thunder IV",	['Dark']="Blizzard IV"}
nukes.t5 = {['Earth']="Stone V",	['Water']="Water V",	['Air']="Aero V",	['Fire']="Fire V",	['Ice']="Blizzard V",	['Thunder']="Thunder V",	['Light']="Thunder V",	['Dark']="Blizzard V"}
nukes.t6 = {['Earth']="Stone VI",	['Water']="Water VI",	['Air']="Aero VI",	['Fire']="Fire VI",	['Ice']="Blizzard VI",	['Thunder']="Thunder VI",	['Light']="Thunder VI",	['Dark']="Blizzard VI"}

nukes.helix = {['Earth']="Geohelix",	['Water']="Hydrohelix",	['Air']="Anemohelix",	['Fire']="Pyrohelix", ['Ice']="Cryohelix", ['Thunder']="Ionohelix",		['Light']="Luminohelix", ['Dark']="Noctohelix"}
nukes.storm = {['Earth']="Sandstorm",	['Water']="Rainstorm",	['Air']="Windstorm",	['Fire']="Firestorm", ['Ice']="Hailstorm", ['Thunder']="Thunderstorm",	['Light']="Aurorastorm", ['Dark']="Voidstorm"}

--elements =  {'Ice', 'Air', 'Dark', 'Light', 'Earth', 'Thunder', 'Water', 'Fire'}
--tier1sc =   {'Induration', 'Detonation', 'Compression', 'Transfixion', 'Scission', 'Impaction', 'Reverberation', 'Liquefaction'}
--tier2sc =   {'Distortion', 'Fragmentation', 'Gravitation', 'Fusion', 'Gravitation', 'Fragmentation', 'Distortion', 'Fusion'}
NukeIndex = 1
EleIndex = 1
SCIndex = 1
NukeArray = {'Thunder','Earth','Air','Ice','Fire','Water'}
EleArray = {'Thunder','Earth','Air','Ice','Fire','Water'}

MeleeMode = false
cidleset = 'Load Temp'
MBMode = false
CPMode = false
DynaMode = false

IdleIndex = 1
IdleArray = {'Auto','DT','MEva'}
idleMode = IdleArray[IdleIndex]

function get_sets()
	send_command('input /macro book 2;wait .1;input /macro set 6')
	
	---------------
	-- Idle Sets --
	---------------

    sets.Idle = {
		main="Mpaca's Staff",sub="Kaja Grip",ammo="Ghastly Tathlum +1",
		head="Volte Beret",body="Agwu's Robe",hands="Nyame Gauntlets",legs="Assiduity Pants +1",feet="Nyame Sollerets",
		ear1="Etiolation Earring",ear2="Infused Earring",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2={name="Stikini Ring +1",bag="wardrobe 1"},
		neck="Sanctity Necklace",waist="Fucho-no-Obi",back="Twilight Cape"
	}

	-- Used when IdleMode is "DT"
	sets.Idle.DT = set_combine(sets.Idle,{
		main="Malignance Pole",sub="Kaja Grip",
		ear2="Ethereal Earring",ring1="Dark Ring",ring2="Defending Ring",
		neck="Loricate Torque +1"
	})

	-- Used when IdleMode is "MEva"
	sets.Idle.MEva = set_combine(sets.Idle,{
	})
	
    sets.Idle.Resting = set_combine(sets.Idle,{
	})

	sets.Idle.MVMT = {feet="Herald's Gaiters"}
	
	sets.Melee = {
	}

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
		head="Nahtirah Hat",body="Anhur Robe",legs="Agwu's Slops",feet="Agwu's Pigaches",
		ear1="Malignance Earring",ear2="Enchanter's Earring +1",ring1="Weatherspoon Ring",ring2="Kishar Ring",
		neck="Voltsurge Torque",waist="Embla Sash"
	}

	-- Fast cast for cure spells
	sets.Precast.Cure = set_combine(sets.Precast,{
		body="Heka's Kalasiris",ear2="Mendicant's Earring"
	})

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
    sets.JA["Tabula Rasa"] = {legs="Pedagogy Pants +3"}

	-------------
	-- Midcast --
	-------------

    sets.Midcast = {}

	sets.Midcast.Cure = {
	}

	-- Enhancing set with 500 skill
	sets.Midcast.Enhancing = {
	}

	sets.Midcast["Stoneskin"] = set_combine(sets.Midcast.Enhancing,{})

	sets.Midcast.MAcc = {
	}

	sets.Midcast.MAB = {
		main="Lathi",sub="Enki Strap",ammo="Pemphredo Tathlum",
		head="Agwu's Cap",body="Amalric Doublet +1",hands="Amalric Gages +1",legs="Amalric Slops +1",feet="Amalric Nails +1",
		ear1="Malignance Earring",ear2="Regal Earring",ring1="Freke Ring",ring2="Shiva Ring +1",
		neck="Sanctity Necklace",waist="Sacro Cord"
	}

	sets.Midcast.MB = set_combine(sets.Midcast.MAB,{ring2="Mujin Band",neck="Mizukage-no-Kubikazari",body="Agwu's Robe",feet="Agwu's Pigaches"})
	
	sets.Midcast.Dark = set_combine(sets.Midcast.MAB,{
		main="Rubicundity",sub="Ammurapi Shield",ammo="Ghastly Tathlum +1",
		head="Pixie Hairpin +1",feet="Agwu's Pigaches",
		ring1="Archon Ring",ring2="Evanescence Ring",
		neck="Erra Pendant",waist="Fucho-no-Obi"
	})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		head="Agwu's Cap",body="Amalric Doublet +1",hands="Amalric Gages +1",legs="Amalric Slops +1",feet="Amalric Nails +1",
		ear1="Malignance Earring",ear2="Regal Earring",ring1="Freke Ring",ring2="Shiva Ring +1",
		neck="Sanctity Necklace",waist="Sacro Cord"
	}

	sets.WS["Realmrazer"] = {}
	sets.WS["Judgment"] = {}
	sets.WS["Black Halo"] = {}
	sets.WS["Hexa Strike"] = {}
	sets.WS["Flash Nova"] = {}

	sets.WS["Myrkr"] = {
		ammo="Pemphredo Tathlum",
		head="Agwu's Cap",body="Amalric Doublet +1",hands="Telchine Gloves",legs="Amalric Slops +1",feet="Telchine Pigaches",
		ear1="Moonshade Earring",ear2="Loquac. Earring",ring1="Vivian Ring",ring2="Serket Ring",
		neck="Sanctity Necklace",waist="Fucho-no-Obi",back="Fi Follet Cape"
	}

	---------------
	-- Aftercast --
	---------------

    sets.aftercast = {}
end

--------------------------------------------------------------------------------------------------------------
-- HUD STUFF
--------------------------------------------------------------------------------------------------------------

local res = require('resources')

Colors = {
    ["Fire"] = "\\cs(255,0,0)",
    ["Water"] = "\\cs(0,128,255)",
    ["Air"] = "\\cs(0,255,0)",
    ["Light"] = "\\cs(255,255,255)",
    ["Earth"] = "\\cs(255,150,0)",
    ["Ice"] = "\\cs(0,204,204)",
    ["Thunder"] = "\\cs(102,0,204)",
    ['Dark'] = "\\cs(92,92,92)"
}

function setup_hud()
    sch_property = {}
    sch_info = {}
    sch_info.box={
        pos={x=2725,y=1270},
        text={font='Segoe UI Symbol', size=10, Fonts={'sans-serif'},},
        bg={alpha=200,red=0,green=0,blue=0},
        flags={draggable=false},
        padding=4
    }
    window = texts.new(sch_info.box)
    initialize(window, sch_info.box)
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
	element = (EleArray[EleIndex]:split('/'))

	local str = 'IdleMode: \\cs(150,150,255)'..IdleArray[IdleIndex]..'\\cr'
	str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
	str = str..'\nMBMode: \\cs(150,150,255)'..tostring(MBMode)..'\\cr'
	str = str..'\nMeleeMode: \\cs(150,150,255)'..tostring(MeleeMode)..'\\cr'
	str = str..'\nDynaMode: \\cs(150,150,255)'..tostring(DynaMode)..'\\cr'
	str = str..'\nCPMode: \\cs(150,150,255)'..tostring(CPMode)..'\\cr'
	str = str..'\nElement: '..Colors[element[1]]..EleArray[EleIndex]..'\\cr'

    local info = {}
    info.modestates = str

    window:update(info)
end

setup_hud()

--------------------------------------------------------------------------------------------------------------
--End Hud Stuff
--------------------------------------------------------------------------------------------------------------

--function buff_refresh(name,buff_details)
    --updatedisplay()
	--aftercast()
--end

function buff_change(name,gain,buff_details)
    updatedisplay()
	aftercast()
end
 
 
function precast(spell,action)
	if (spell.type:endswith('Magic') or spell.type == "Ninjutsu") and buffactive['Silence'] then
        cancel_spell()
        send_command('input /item "Echo Drops" <me>')
        add_to_chat(123, '****** ['..spell.name..' CANCELED - Using Echo Drops] ******')
    end

	if spell.type:contains('Magic') then
		if spell.name == 'Impact' then
			disable('body','head')
            equip(sets.Precast)
        elseif spell.name == 'Stoneskin' then
            windower.ffxi.cancel_buff(37)--[[Cancels stoneskin, not delayed incase you get a Quick Cast]]
            equip(sets.Precast)
        elseif spell.name == 'Sneak' then
            windower.ffxi.cancel_buff(71)--[[Cancels Sneak]]
            equip(sets.Precast)
        elseif spell.name:contains('Cure') or spell.name:contains('Cura') then
            equip(sets.Precast.Cure)
		else
            equip(sets.Precast)
        end
    elseif spell.type == "WeaponSkill" then
		equipSet = sets.WS
        if equipSet[spell.name] then
            equipSet = equipSet[spell.name]
			add_to_chat(122,spell.name .. ' Set')
        end
        equip(equipSet)
	end
end
 
function midcast(spell,action)
	if spell.name:contains('Cure') or spell.name:contains('Cura') then
		equip(sets.Midcast.Cure)
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.Midcast.MAcc)
	elseif spell.skill == "Enhancing Magic" then
		if spell.name:match('Protect') or spell.name:match('Shell') then
			equip(sets.Midcast.Enhancing)
            equip({ring1="Sheltered Ring"})
		else
			equip(sets.Midcast.Enhancing)
		end
    elseif spell.type == 'BlackMagic' then
		if spell.skill == "Elemental Magic" then
			if MBMode then
				equip(sets.Midcast.MB)
			else
				equip(sets.Midcast.MAB)
			end
		elseif spell.skill == "Dark Magic" then
			if spell.name == 'Stun' then
				equip(sets.Midcast.MAcc)
			else
				equip(sets.Midcast.Dark)
			end
		end
	elseif sets.Midcast[spell.english] then
        equip(sets.Midcast[spell.english])
		--if buffactive['Penury'] then equip(sets.buff['Penury']) end
		--if buffactive['Parsimony'] then equip(sets.buff['Parsimony']) end
		--if buffactive['Celerity'] then equip(sets.buff['Celerity']) end
		--if buffactive['Alacrity'] then equip(sets.buff['Alacrity']) end
    end
	
    if spell.element == world.weather_element then
        equip({waist="Hachirin-no-Obi"})
    end
end
--send_command('input /p '..world.weather_element)
 
function aftercast(spell,action)
    if midaction() then
        return
    end
	enable('body','head')

	if player.status == 'Engaged' then
        equip(sets.Melee)
		cidleset = 'Melee'
	else
		if IdleArray[IdleIndex] == 'Auto' then
			if player.mpp < 50 then
				equip(set_combine(sets.Idle,{waist="Fucho-no-Obi"}))
				cidleset = 'Refresh, Obi'
			elseif player.mpp > 85 then
				equip(sets.Idle.MEva)
				cidleset = 'Refresh, MEva'
			elseif player.hpp < 60 then
				equip(sets.Idle.DT)
				cidleset = 'Refresh, DT'
			else
				equip(sets.Idle)
				cidleset = 'Refresh'
			end
		elseif IdleArray[IdleIndex] == 'DT' then
			equip(sets.Idle.DT)
			cidleset = 'Refresh, DT'
		elseif IdleArray[IdleIndex] == 'MEva' then
			equip(sets.Idle.MEva)
			cidleset = 'Refresh, MEva'
		end
	end

    updatedisplay()
end
 
function status_change(new,old)
    if new == 'Engaged' then
        aftercast()
    elseif new == 'Resting' then
        equip(sets.Idle.Resting)
    else
        aftercast()
    end
end

function self_command(command)
	commandArgs = (command:split(' '))
	if commandArgs[1]:lower() == 'melee' then
		if MeleeMode then
			MeleeMode = false
			enable('main','sub','ranged')
			windower.add_to_chat(8,'----- Weapons Unlocked, WILL LOSE TP -----')
			aftercast()
		else
			MeleeMode = true
			disable('main','sub','ranged')
			windower.add_to_chat(8,'----- Weapons Locked, WILL NOT LOSE TP -----')
			aftercast()
		end
	elseif commandArgs[1]:lower() == 'mb' then
		if MBMode then
			MBMode = false
            windower.add_to_chat(8,'----- Magic Burst Mode Disabled -----')
		else
			MBMode = true
            windower.add_to_chat(8,'----- Magic Burst Mode Enabled -----')
		end
	elseif commandArgs[1]:lower() == 'idle' then
		IdleIndex = (IdleIndex % #IdleArray) + 1
	elseif commandArgs[1]:lower() == 'strat' then
        handle_strategems(commandArgs[2])
    elseif commandArgs[1]:lower() == 'ele' then
		if commandArgs[2]:lower() == 'down' then
			if NukeIndex == 1 then
				EleIndex = 6
				NukeIndex = 6
			else
				EleIndex = EleIndex - 1
				NukeIndex = NukeIndex - 1
			end
		else
			EleIndex = (EleIndex % #EleArray) + 1
			NukeIndex = (NukeIndex % #NukeArray) + 1
		end
        windower.add_to_chat(8,'----- Element changed to ' .. EleArray[EleIndex] .. ' -----')
    elseif commandArgs[1]:lower() == 'nuke' then
		local tier = commandArgs[2]:lower()
		local element = NukeArray[NukeIndex]
		send_command('@input /ma "'..nukes[tier][element]..'" <t>')
    elseif commandArgs[1]:lower() == 'cp' then
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
    elseif commandArgs[1]:lower() == 'dyna' then
        if DynaMode then
            DynaMode = false
            enable('main','sub','neck')
            windower.add_to_chat(8,'----- Dynamis Mode Disabled -----')
        else
            DynaMode = true
			equip({main="Pedagogy Staff",sub="Eletta Grip",neck="Argute Stole +1"})
            disable('main','sub','neck')
            windower.add_to_chat(8,'----- Dynamis Mode Enabled -----')
        end
    elseif commandArgs[1]:lower() == '6s' then
        if SCMode then
            SCMode = false
            enable('main','sub')
            windower.add_to_chat(8,'----- 6 Step Mode Disabled -----')
        else
            SCMode = true
			equip({main=""})
            disable('main','sub')
            windower.add_to_chat(8,'----- 6 Step Mode Enabled, Main Locked -----')
            windower.add_to_chat(8,'----- /console exec live/sch6step.txt -----')
        end
    elseif command == 'update' then
		aftercast()
    end
	updatedisplay()
end