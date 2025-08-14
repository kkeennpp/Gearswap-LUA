-- function file_unload()
	-- send_command('unbind f9')
	-- send_command('unbind f10')
-- end

nukes = {}
nukes.t1 = {['Earth']="Stone",		['Water']="Water",		['Air']="Aero",		['Fire']="Fire",	['Ice']="Blizzard",		['Thunder']="Thunder",		['Light']="Thunder",	['Dark']="Blizzard"}
nukes.t2 = {['Earth']="Stone II",	['Water']="Water II",	['Air']="Aero II",	['Fire']="Fire II",	['Ice']="Blizzard II",	['Thunder']="Thunder II",	['Light']="Thunder II",	['Dark']="Blizzard II"}
nukes.t3 = {['Earth']="Stone III",	['Water']="Water III",	['Air']="Aero III",	['Fire']="Fire III",['Ice']="Blizzard III",	['Thunder']="Thunder III",	['Light']="Thunder III",['Dark']="Blizzard III"}
nukes.t4 = {['Earth']="Stone IV",	['Water']="Water IV",	['Air']="Aero IV",	['Fire']="Fire IV",	['Ice']="Blizzard IV",	['Thunder']="Thunder IV",	['Light']="Thunder IV",	['Dark']="Blizzard IV"}
nukes.t5 = {['Earth']="Stone V",	['Water']="Water V",	['Air']="Aero V",	['Fire']="Fire V",	['Ice']="Blizzard V",	['Thunder']="Thunder V",	['Light']="Thunder V",	['Dark']="Blizzard V"}

NukeIndex = 1
EleIndex = 1
IdleIndex = 1
AccIndex = 1

NukeArray = {'Thunder','Earth','Air','Ice','Fire','Water'}
EleArray = {'Thunder','Earth','Air','Ice','Fire','Water'}

AccArray = {"LowACC","Enspell","Hybrid"}
IdleArray = {'Auto','DT'}
idleMode = IdleArray[IdleIndex]

cidleset = 'Load Temp'
MeleeMode = false
MBMode = false
DWMode = false
MBLock = false
SkillMode = false


function get_sets()
	send_command('input /macro book 2;wait .1;input /macro set 7')
	send_command('wait 5;input /lockstyleset 4')
	
	---------------
	-- Idle Sets --
	---------------

    sets.Idle = {
		main="Ruler",sub="Genbu's Shield",range="Aureole",
		head="Duelist's Chapeau +1",body="Dalmatica",hands="Morrigan's Cuffs",legs="Crimson Cuisses",feet="Duelist's Boots",
		neck="Orochi Nodowa",waist="Salire Belt",back="Cheviot Cape",
		ear1="Novia Earring",ear2="Loquacious Earring",ring1="Vivian Ring",ring2="Tamas Ring"
	}

	sets.Idle.DT = set_combine(sets.Idle,{})
	
    sets.Idle.Resting = set_combine(sets.Idle,{
		main="Chatoyant Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
		body="Warlock's Tabard +1",legs="Yigit Seraweels",feet="Avocat Pigaches",
		neck="Grandiose Chain",waist="Duelist's Belt",back="Astute Cape",
		ear1="Antivenom Earring"
	})

	sets.Idle.MVMT = {feet="Crimson Cuisses"}
	
	sets.Melee = {
		main="Enhancing Sword",sub="Genbu's Shield",ammo="Astrolabe",
		head="Walahra Turban",body="Goliard Saio",hands="Dusk Gloves +1",legs="Hydra Brais",feet="Prishe's Boots +1",
		neck="Ancient Torque",waist="Ninurta's Sash",back="Cuchulain's Mantle",
		ear1="Suppanomimi",ear2="Brutal Earring",ring1="Toreador's Ring",ring2="Mars's Ring"
	}

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
        main="Erudite's Staff +1",sub="Thunder Grip",ammo="Hedgehog Bomb",
		head="Warlock's Chapeau +1",body="Duelist's Tabard +1",hands="Morrigan's Cuffs",legs="Neit's Slops",feet="Duelist's Boots",
		neck="Grandiose Chain",waist="Hierarch Belt",back="Astute Cape",
		ear1="Antivenom Earring",ear2="Loquacious Earring",ring1="Vivian Ring",ring2="Tamas Ring"
	}

	sets.Precast.Cure = set_combine(sets.Precast,{})
	sets.Precast.Ailment = set_combine(sets.Precast,{})

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
    sets.JA["Benediction"] = {body="Piety Briault"}

	-------------
	-- Midcast --
	-------------

    sets.Midcast = {}

	sets.Midcast.Cure = {
		main="Chatoyant Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
		head="Goliard Chapeau",body="Duelist's Tabard +1",hands="Nashira Gages",legs="Warlock's Tights",feet="Shadow Clogs",
		neck="Fylgja Torque",waist="Salire Belt",back="Dew Silk Cape +1",
		ear1="Novia Earring",ear2="Loquacious Earring",ring1="Vivian Ring",ring2="Tamas Ring"
	}

	sets.Midcast.Enhancing = {
		ammo="Hedgehog Bomb",
		head="Walahra Turban",body="Goliard Saio",hands="Duelist's Gloves +1",legs="Warlock's Tights",feet="Dusk Ledelsens +1",
		neck="Enhancing Torque",waist="Ninurta's Sash",back="Astute Cape",
		ear1="Novia Earring",ear2="Loquacious Earring",ring1="Vivian Ring",ring2="Tamas Ring"
	}

	sets.Midcast.Refresh = set_combine(sets.Midcast.Enhancing,{})

	sets.Midcast["Stoneskin"] = set_combine(sets.Midcast.Enhancing,{})

	sets.Midcast.MAcc = {
		main="Chatoyant Staff",sub="Thunder Grip",range="Aureole",
		head="Duelist's Chapeau +1",body="Warlock's Tabard +1",hands="Morrigan's Cuffs",legs="Morrigan's Slops",feet="Avocat Pigaches",
		neck="Enfeebling Torque",waist="Ninurta's Sash",back="Altruistic Cape",
		ear1="Novia Earring",ear2="Loquacious Earring",ring1="Balrahn's Ring",ring2="Tamas Ring"
	}

	sets.Midcast.Enfeebling = set_combine(sets.Midcast.MAcc,{
	})

	sets.Midcast.Dark = set_combine(sets.Midcast.MAcc,{neck="Dark Torque"})

	sets.Midcast.MAB = {
		main="Chatoyant Staff",sub="Bugard Strap +1",ammo="Phantom Tathlum",
		head="Warlock's Chapeau +1",body="Morrigan's Robe",hands="Zenith Mitts +1",legs="Shadow Trews",feet="Yigit Crackows",
		neck="Lemegeton Medallion +1",waist="Salire Belt",back="Hecate's Cape",
		ear1="Moldavite Earring",ear2="Novio Earring",ring1="Vivian Ring",ring2="Tamas Ring"
	}

	sets.Midcast.MB = set_combine(sets.Midcast.MAB,{
	})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		ammo="Goblin Cracker",
		head="Gnadbhod's Helm",body="Morrigan's Robe",hands="Morrigan's Cuffs",legs="Morrigan's Slops",feet="Dusk Ledelsens +1",
		neck="Fortitude Torque",waist="Warwolf Belt",back="Cerb. Mantle +1",
		ear1="Suppanomimi",ear2="Brutal Earring",ring1="Strigoi Ring",ring2="Mars's Ring"
	}

	sets.WS["Savage Blade"] = set_combine(sets.WS,{})
	sets.WS["Black Halo"] = set_combine(sets.WS,{})

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
        pos={x=2725,y=1250},
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
	str = str..'\nAccMode: \\cs(150,150,255)'..AccArray[AccIndex]..'\\cr'
	str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
	str = str..'\nMBMode: \\cs(150,150,255)'..tostring(MBMode)..'\\cr'
	str = str..'\nMeleeMode: \\cs(150,150,255)'..tostring(MeleeMode)..'\\cr'
	str = str..'\nDWMode: \\cs(150,150,255)'..tostring(DWMode)..'\\cr'
	str = str..'\nElement: '..Colors[element[1]]..EleArray[EleIndex]..'\\cr'

    local info = {}
    info.modestates = str

    window:update(info)
end

setup_hud()

--------------------------------------------------------------------------------------------------------------
-- LOGIC STUFF
--------------------------------------------------------------------------------------------------------------

function buff_change(name,gain,buff_details)
    updatedisplay()
	aftercast()
end

function skillup()
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
		if spell.name:contains('Refresh') then
			equip(sets.Midcast.Refresh)
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
	
			if spell.element == "Water" then
				equip({body="Poroggo fleece +1"})
			end

			if player.mpp < 60 then
				equip({neck="Uggalepih pendant"})
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
    end
	
    if spell.element == world.weather_element then
        equip({waist="Hachirin-no-Obi"})
    end
end
 
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
	elseif commandArgs[1]:lower() == 'skillup' then
		if SkillMode then
			SkillMode = false
            windower.add_to_chat(8,'----- Skill-Up Mode Disabled -----')
		else
			SkillMode = true
            windower.add_to_chat(8,'----- Skill-Up Mode Enabled -----')
			skillup()
		end
	elseif commandArgs[1]:lower() == 'acc' then
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
	elseif commandArgs[1]:lower() == 'idle' then
		IdleIndex = (IdleIndex % #IdleArray) + 1
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
    elseif commandArgs[1]:lower() == 'dw' then
        if DWMode then
            DWMode = false
            windower.add_to_chat(8,'----- DualWield Mode Disabled -----')
        else
            DWMode = true
            windower.add_to_chat(8,'----- DualWield Mode Enabled -----')
        end
    elseif command == 'update' then
		aftercast()
    end
	updatedisplay()
end