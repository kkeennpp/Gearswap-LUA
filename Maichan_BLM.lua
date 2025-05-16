nukes = {}
nukes.t1 = {['Earth']="Stone",		['Water']="Water",		['Air']="Aero",		['Fire']="Fire",	['Ice']="Blizzard",		['Thunder']="Thunder",		['Light']="Thunder",	['Dark']="Blizzard"}
nukes.t2 = {['Earth']="Stone II",	['Water']="Water II",	['Air']="Aero II",	['Fire']="Fire II",	['Ice']="Blizzard II",	['Thunder']="Thunder II",	['Light']="Thunder II",	['Dark']="Blizzard II"}
nukes.t3 = {['Earth']="Stone III",	['Water']="Water III",	['Air']="Aero III",	['Fire']="Fire III",['Ice']="Blizzard III",	['Thunder']="Thunder III",	['Light']="Thunder III",['Dark']="Blizzard III"}
nukes.t4 = {['Earth']="Stone IV",	['Water']="Water IV",	['Air']="Aero IV",	['Fire']="Fire IV",	['Ice']="Blizzard IV",	['Thunder']="Thunder IV",	['Light']="Thunder IV",	['Dark']="Blizzard IV"}
nukes.t5 = {['Earth']="Stone V",	['Water']="Water V",	['Air']="Aero V",	['Fire']="Fire V",	['Ice']="Blizzard V",	['Thunder']="Thunder V",	['Light']="Thunder V",	['Dark']="Blizzard V"}
nukes.t6 = {['Earth']="Stone VI",	['Water']="Water VI",	['Air']="Aero VI",	['Fire']="Fire VI",	['Ice']="Blizzard VI",	['Thunder']="Thunder VI",	['Light']="Thunder VI",	['Dark']="Blizzard VI"}

nukes.am = {['Earth']="Quake",		['Water']="Flood",		['Air']="Tornado",		['Fire']="Flare",		['Ice']="Freeze",		['Thunder']="Burst",		['Light']="Burst",		['Dark']="Freeze"}
nukes.am2 = {['Earth']="Quake II",	['Water']="Flood II",	['Air']="Tornado II",	['Fire']="Flare II",	['Ice']="Freeze II",	['Thunder']="Burst II",		['Light']="Burst II",	['Dark']="Freeze II"}

nukes.helix = {['Earth']="Geohelix",	['Water']="Hydrohelix",	['Air']="Anemohelix",	['Fire']="Pyrohelix", ['Ice']="Cryohelix", ['Thunder']="Ionohelix",		['Light']="Luminohelix", ['Dark']="Noctohelix"}
nukes.storm = {['Earth']="Sandstorm",	['Water']="Rainstorm",	['Air']="Windstorm",	['Fire']="Firestorm", ['Ice']="Hailstorm", ['Thunder']="Thunderstorm",	['Light']="Aurorastorm", ['Dark']="Voidstorm"}

ele_debuff=S{'Burn','Frost','Choke','Rasp','Shock','Drown'}

--elements =  {'Ice', 'Air', 'Dark', 'Light', 'Earth', 'Thunder', 'Water', 'Fire'}
--tier1sc =   {'Induration', 'Detonation', 'Compression', 'Transfixion', 'Scission', 'Impaction', 'Reverberation', 'Liquefaction'}
--tier2sc =   {'Distortion', 'Fragmentation', 'Gravitation', 'Fusion', 'Gravitation', 'Fragmentation', 'Distortion', 'Fusion'}

NukeIndex = 1
EleIndex = 1
AccIndex = 1

NukeArray = {'Thunder','Earth','Air','Ice','Fire','Water'}
EleArray = {'Thunder','Earth','Air','Ice','Fire','Water'}

MeleeMode = false
cidleset = 'Load Temp'
MBMode = false
MAccMode = false
RingMode = true

IdleIndex = 1
IdleArray = {'Auto','DT'}
idleMode = IdleArray[IdleIndex]

function get_sets()
	send_command('input /macro book 2;wait .1;input /macro set 8')
	send_command('wait 5;input /lockstyleset 6')
	
	---------------
	-- Idle Sets --
	---------------

    sets.Idle = {
		main="Earth Staff",sub="Bugard Strap +1",ammo="Hedgehog Bomb",
		head="Wivre Hairpin",body="Dalmatica",hands="Morrigan's Cuffs",legs="Morrigan's Slops",feet="Herald's Gaiters",
		ear1="Novia Earring",ear2="Loquacious Earring",ring1="Vivian Ring",ring2="Tamas Ring",
		neck="Grandiose Chain",waist="Salire Belt",back="Cheviot Cape"
	}

	-- Used when IdleMode is "DT"
	sets.Idle.DT = set_combine(sets.Idle,{})
	
    sets.Idle.Resting = set_combine(sets.Idle,{
		main="Chatoyant Staff",
        head="Goliard Chapeau",body="Yigit Gomlek",hands="Oracle's Gloves",legs="Yigit Seraweels",feet="Avocat Pigaches",
		ear1="Antivenom Earring",
        neck="Beak Necklace +1",waist="Hierarch Belt",
	})

	sets.Idle.MVMT = {feet="Herald's Gaiters"}
	
	sets.Melee = {
	}

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
        main="Erudite's Staff +1",sub="Bugard Strap +1",ammo="Hedgehog Bomb",
		head="Sorcerer's Petasos +1",body="Dalmatica",hands="Morrigan's Cuffs",legs="Neit's Slops",feet="Rostrum Pumps",
		ear1="Antivenom Earring",ear2="Loquacious Earring",ring1="Vivian Ring",ring2="Tamas Ring",
        neck="Morgana's Choker",waist="Hierarch Belt",back="Veela Cape"
	}

	sets.Precast.yellow = {
		main="Earth Staff",sub="Bugard Strap +1",ammo="Hedgehog Bomb",
		head="Zenith Crown +1",body="Dalmatica",hands="Zenith Mitts +1",legs="Neit's Slops",feet="Rostrum Pumps",
		ear1="Antivenom Earring",ear2="Loquacious Earring",ring1="Vivian Ring",ring2="Serket Ring",
        neck="Morgana's Choker",waist="Hierarch Belt",back="Veela Cape"
	}

	sets.Precast.yellow2 = {
		main="Earth Staff",sub="Bugard Strap +1",ammo="Hedgehog Bomb",
		head="Zenith Crown +1",body="Dalmatica",hands="Zenith Mitts +1",legs="Zenith Slacks",feet="Avocat Pigaches",
		ear1="Antivenom Earring",ear2="Loquacious Earring",ring1="Vivian Ring",ring2="Tamas Ring",
		neck="Beak Necklace +1",waist="Hierarch Belt",back="Ixion Cape"
	}

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
		main="Chatoyant Staff",
	}

	sets.Midcast.Enhancing = {
	}

	sets.Midcast["Stoneskin"] = set_combine(sets.Midcast.Enhancing,{})

	sets.Midcast.MAcc = {
		main="Chatoyant Staff",sub="Bugard Strap +1",range="Aureole",
		head="Nashira Turban",body="Nashira Manteel",hands="Morrigan's Cuffs",legs="Shadow Trews",feet="Shadow Clogs",
		neck="Morrigan's Choker",waist="Salire Belt",back="Hecate's Cape",
		ear1="Novia Earring",ear2="Loquacious Earring",ring1="Balrahn's Ring",ring2="Tamas Ring"
	}

	sets.Midcast.Enfeebling = set_combine(sets.Midcast.MAcc,{
		head="Igqira Tiara",body="Wizard's Coat +1",hands="Oracle's Gloves",legs="Igqira Lappas",feet="Shadow Clogs",
		neck="Enfeebling Torque",back="Altruistic Cape",
		ear1="Enfeebling Earring",
	})
	
	sets.Midcast.Dark = set_combine(sets.Midcast.MAcc,{
		head="Nashira Turban",body="Nashira Manteel",hands="Morrigan's Cuffs",legs="Wizard Tonban +1",feet="Rostrum Pumps",
		neck="Dark Torque",back="Merciful Cape",
		ear1="Astral Earring",
	})

	sets.Midcast.MAB = {
		main="Chatoyant Staff",sub="Bugard Strap +1",ammo="Phantom Tathlum",
		head="Zenith Crown +1",body="Morrigan's Robe",hands="Zenith Mitts +1",legs="Shadow Trews",feet="Yigit Crackows",
		neck="Lemegeton Medallion +1",waist="Salire Belt",back="Ixion Cape",
		ear1="Moldavite Earring",ear2="Novio Earring",ring1="Vivian Ring",ring2="Tamas Ring"
	}

	sets.Midcast.MAB.MAcc = set_combine(sets.Midcast.MAB,{
		range="Aureole",ammo="",
		head="Sorcerer's Petasos +1",body="Morrigan's Robe",hands="Wizard's Gloves +1",legs="Morrigan's Slops",feet="Nashira Crackows",
		back="Merciful Cape",
	})

	sets.Midcast.MB = set_combine(sets.Midcast.MAB,{
	})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
	}

	sets.WS["Realmrazer"] = {}
	sets.WS["Judgment"] = {}
	sets.WS["Black Halo"] = {}
	sets.WS["Hexa Strike"] = {}
	sets.WS["Flash Nova"] = {}

	sets.WS["Myrkr"] = {
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
    ['Dark'] = "\\cs(92,92,92)",
}

function setup_hud()
    job_property = {}
    job_info = {}
    job_info.box={
        pos={x=2725,y=1288},
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
	element = (EleArray[EleIndex]:split('/'))

	local str = 'IdleMode: \\cs(150,150,255)'..IdleArray[IdleIndex]..'\\cr'
	str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
	str = str..'\nMBMode: \\cs(150,150,255)'..tostring(MBMode)..'\\cr'
	str = str..'\nMAccMode: \\cs(150,150,255)'..tostring(MAccMode)..'\\cr'
	str = str..'\nRingMode: \\cs(150,150,255)'..tostring(RingMode)..'\\cr'
	str = str..'\nMeleeMode: \\cs(150,150,255)'..tostring(MeleeMode)..'\\cr'
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
		if spell.name == 'Stoneskin' then
            windower.ffxi.cancel_buff(37)--[[Cancels stoneskin, not delayed incase you get a Quick Cast]]
            equip(sets.Precast)
        elseif spell.name == 'Sneak' and spell.target.type == 'SELF' then
            windower.ffxi.cancel_buff(71)--[[Cancels Sneak]]
            equip(sets.Precast)
        elseif spell.name:contains('Cure') or spell.name:contains('Cura') then
            equip(sets.Precast.Cure)
		elseif spell.skill == "Elemental Magic" and RingMode then
			if ele_debuff:contains(spell.name) then
				equip(sets.Precast)
			else
				equip(sets.Precast.yellow)
			end
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
		equip(sets.Midcast.Enfeebling)
	elseif spell.skill == "Enhancing Magic" then
		equip(sets.Midcast.Enhancing)
    elseif spell.type == 'BlackMagic' then
		if spell.skill == "Elemental Magic" then
			if MBMode then
				equip(sets.Midcast.MB)
				if player.mpp < 60 then
					equip({neck="Uggalepih pendant"})
				end
			elseif MAccMode then
				equip(sets.Midcast.MAB.MAcc)
			else
				equip(sets.Midcast.MAB)
				if player.mpp < 60 then
					equip({neck="Uggalepih pendant"})
				end
			end
			
			if RingMode then
				equip({ring1="Sorcerer's Ring"})
			end
	
			if spell.element == "Water" then
				equip({body="Poroggo fleece +1"})
			end
	
			if spell.element == world.day_element then
				equip({legs="Sorcerer's Tonban +1"})
				--equip({waist="Hachirin-no-Obi"})
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
        --equip({waist="Hachirin-no-Obi"})
    end
end
--send_command('input /p '..world.weather_element)
 
function aftercast(spell,action)
    if midaction() then
        return
    end

	if player.status == 'Engaged' then
        equip(sets.Melee)
		cidleset = 'Melee'
	elseif player.status == 'Resting' then
        equip(sets.Idle.Resting)
		cidleset = 'Resting'
	else
		if IdleArray[IdleIndex] == 'Auto' then
			if player.mpp < 85 then
				equip(sets.Idle)
				cidleset = 'Idle, Refresh'
			elseif player.hpp < 60 then
				equip(sets.Idle.DT)
				cidleset = 'Idle, DT'
			else
				equip(sets.Idle)
				cidleset = 'Idle, Refresh'
			end
		elseif IdleArray[IdleIndex] == 'DT' then
			equip(sets.Idle.DT)
			cidleset = 'Idle, DT'
		end
	end

    updatedisplay()
end
 
function status_change(new,old)
    if new == 'Engaged' then
        aftercast()
    elseif new == 'Resting' then
        equip(sets.Idle.Resting)
		cidleset = 'Resting'
		updatedisplay()
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
	elseif commandArgs[1]:lower() == 'macc' then
		if MAccMode then
			MAccMode = false
            windower.add_to_chat(8,'----- MagicAcc Mode Disabled -----')
		else
			MAccMode = true
            windower.add_to_chat(8,'----- MagicAcc Mode Enabled -----')
		end
	elseif commandArgs[1]:lower() == 'ring' then
		if RingMode then
			RingMode = false
            windower.add_to_chat(8,'----- Suicide Mode Disabled -----')
		else
			RingMode = true
            windower.add_to_chat(8,'----- Suicide Mode Enabled -----')
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
    elseif command == 'update' then
		aftercast()
    end
	updatedisplay()
end

function handle_strategems(strategem)
	if buffactive['light arts'] or buffactive['addendum: white'] then
        if strategem == 'cost' then
            send_command('input /ja Penury <me>')
        elseif strategem == 'speed' then
            send_command('input /ja Celerity <me>')
        elseif strategem == 'aoe' then
            send_command('input /ja Accession <me>')
        elseif strategem == 'power' then
            send_command('input /ja Rapture <me>')
        elseif strategem == 'duration' then
            send_command('input /ja Perpetuance <me>')
        elseif strategem == 'accuracy' then
            send_command('input /ja Altruism <me>')
        elseif strategem == 'enmity' then
            send_command('input /ja Tranquility <me>')
        elseif strategem == 'skillchain' then
            add_to_chat(122,'Error: Light Arts does not have a skillchain strategem.')
        end
    elseif buffactive['dark arts'] or buffactive['addendum: black'] then
        if strategem == 'cost' then
            send_command('input /ja Parsimony <me>')
        elseif strategem == 'speed' then
            send_command('input /ja Alacrity <me>')
        elseif strategem == 'aoe' then
            send_command('input /ja Manifestation <me>')
        elseif strategem == 'power' then
            send_command('input /ja Ebullience <me>')
        elseif strategem == 'duration' then
            add_to_chat(122,'Error: Dark Arts does not have a duration strategem.')
        elseif strategem == 'accuracy' then
            send_command('input /ja Focalization <me>')
        elseif strategem == 'enmity' then
            send_command('input /ja Equanimity <me>')
        elseif strategem == 'skillchain' then
            send_command('input /ja Immanence <me>')
        end
    else
        add_to_chat(123,'No arts has been activated yet.')
    end
end