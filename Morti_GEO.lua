nukes = {}
nukes.t1 = {['Earth']="Stone",		['Water']="Water",		['Air']="Aero",		['Fire']="Fire",	['Ice']="Blizzard",		['Thunder']="Thunder",		['Light']="Thunder",	['Dark']="Blizzard"}
nukes.t2 = {['Earth']="Stone II",	['Water']="Water II",	['Air']="Aero II",	['Fire']="Fire II",	['Ice']="Blizzard II",	['Thunder']="Thunder II",	['Light']="Thunder II",	['Dark']="Blizzard II"}
nukes.t3 = {['Earth']="Stone III",	['Water']="Water III",	['Air']="Aero III",	['Fire']="Fire III",['Ice']="Blizzard III",	['Thunder']="Thunder III",	['Light']="Thunder III",['Dark']="Blizzard III"}
nukes.t4 = {['Earth']="Stone IV",	['Water']="Water IV",	['Air']="Aero IV",	['Fire']="Fire IV",	['Ice']="Blizzard IV",	['Thunder']="Thunder IV",	['Light']="Thunder IV",	['Dark']="Blizzard IV"}
nukes.t5 = {['Earth']="Stone V",	['Water']="Water V",	['Air']="Aero V",	['Fire']="Fire V",	['Ice']="Blizzard V",	['Thunder']="Thunder V",	['Light']="Thunder V",	['Dark']="Blizzard V"}

NukeIndex = 1
EleIndex = 1
IdleIndex = 1

NukeArray = {'Fire','Ice','Air','Earth','Thunder','Water'}
EleArray = {'Fire','Ice','Air','Earth','Thunder','Water'}

IdleArray = {'Auto','DT','MEva'}
idleMode = IdleArray[IdleIndex]

NaSpells = S{"Blindna","Erase","Paralyna","Poisona","Silena","Stona","Viruna","Cursna"}

cidleset = 'Load Temp'
MeleeMode = false
MBMode = false
CPMode = false
DynaMode = false
MBLock = false

function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 2')
	send_command('wait 5;input /lockstyleset 1')
	
	---------------
	-- Idle Sets --
	---------------

    sets.Idle = {
		main="Mafic Cudgel",sub="Ammurapi Shield",ammo="Dunna",
		head="Befouled Crown",body="Azimuth Coat +2",hands="Bagua Mitaines +3",legs="Assiduity Pants +1",feet="Coalrake Sabots",
		ear1="Infused Earring",ear2="Etiolation Earring",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2="Gelatinous Ring +1",
		neck="Sanctity Necklace",waist="Fucho-no-Obi",back={name="Sucellos's Cape",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Damage taken-5%'}}
	}

	sets.Idle.Pet = set_combine(sets.Idle,{
		main="Solstice",sub="Ammurapi Shield",ammo="Dunna",
		head="Azimuth Hood +2",body="Azimuth Coat +2",hands="Geomancy Mitaines +1",legs="Telchine Braconi",feet="Bagua Sandals +3",
		--head="Telchine Cap",body="Telchine Chasuble",hands="Geomancy Mitaines +1",legs="Telchine Braconi",feet="Telchine Pigaches",
		neck="Bagua charm +2",waist="Isa Belt",back={name="Nantosuelta's Cape",augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Pet: "Regen"+10','Pet: "Regen"+5'}}
	})

	sets.Idle.MEva = set_combine(sets.Idle,{
	})
	
    sets.Idle.Resting = set_combine(sets.Idle,{
	})

	sets.Idle.MVMT = {feet="Geomancy Sandals"}

	-------------
	-- TP Sets --
	-------------
	
	sets.TP = {
	}

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
		main="Solstice",sub="Sors Shield",ammo="Dunna",
		head="Vanya Hood",body="Mallquis Saio +1",hands="Bagua Mitaines +3",legs="Geomancy Pants +1",feet="Mallquis Clogs +1",
		ear1="Malignance Earring",ear2="Etiolation Earring",ring1="Prolix Ring",ring2="Kishar Ring",
		neck="Voltsurge Torque",waist="Embla Sash",back="Lifestream Cape"
	}

	-- Fast cast for cure spells
	sets.Precast.Cure = set_combine(sets.Precast,{
	})

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
    sets.JA["Bolster"] = {legs="Bagua Tunic +3"}

	-------------
	-- Midcast --
	-------------

    sets.Midcast = {}

	sets.Midcast.Cure = {
	}

	-- Enhancing set with 500+ skill
	sets.Midcast.Enhancing = {
	}
	
	-- Max enhancing duration set, for when skill doesn't matter.
	sets.Midcast.EnhancingDuration = set_combine(sets.Midcast.Enhancing,{
		sub="Ammurapi Shield",
		waist="Embla Sash"
	})

	sets.Midcast.Geomancy = {
		main="Solstice",sub="Ammurapi Shield",ammo="Dunna",
		head="Azimuth Hood +2",body="Bagua Tunic +3",hands="Geomancy Mitaines +1",legs="Bagua Pants +3",feet="Azimuth Gaiters +2",
		neck="Bagua charm +2",back="Lifestream Cape"
	}

	sets.Midcast.MAcc = {
		main="Solstice",sub="Ammurapi Shield",ammo="Dunna",
		head="Azimuth Hood +2",body="Azimuth Coat +2",hands="Azimuth Gloves +2",legs="Azimuth Tights +2",feet="Bagua Sandals +3",
		ear1="Malignance Earring",ear2="Gwati Earring",ring1="Jhakri Ring",ring2="Kishar Ring",
		neck="Sanctity Necklace",waist="Refoccilation Stone",back={name="Nantosuelta's Cape",augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-2%'}}
	}

	sets.Midcast.MAB = {
		main="Daybreak",sub="Ammurapi Shield",ammo="Dunna",
		head="Bagua galero +3",body="Bagua Tunic +3",hands="Bagua Mitaines +3",legs="Azimuth Tights +2",feet="Azimuth Gaiters +2",
		ear1="Malignance Earring",ear2="Friomisi Earring",ring1="Jhakri Ring",ring2="Shiva Ring +1",
		neck="Sanctity Necklace",waist="Refoccilation Stone",back={name="Nantosuelta's Cape",augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-2%'}}
	}

	sets.Midcast.MB = set_combine(sets.Midcast.MAB,{
		body="Azimuth Coat +2",
	})
	
	sets.Midcast.Dark = set_combine(sets.Midcast.MAcc,{
		ring2="Evanescence Ring",
	})

	sets.Midcast["Cursna"] = {}
	sets.Midcast.Stoneskin = set_combine(sets.Midcast.EnhancingDuration,{})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
	}

	sets.WS.MAB = {
	}

	sets.WS["Seraph Strike"] = set_combine(sets.WS.MAB,{ring2="Weatherspoon ring"})
	sets.WS["Realmrazer"] = set_combine(sets.WS,{})
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
    ["Light"] = "\\cs(255, 255, 255)",
    ["Earth"] = "\\cs(255,150,0)",
    ["Ice"] = "\\cs(0, 204, 204)",
    ["Thunder"] = "\\cs(102, 0, 204)",
    ['Dark'] = "\\cs(92, 92, 92)"
}

function setup_hud()
    job_property = {}
    job_info = {}
    job_info.box={
        pos={x=2725,y=1270},
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
	str = str..'\nMeleeMode: \\cs(150,150,255)'..tostring(MeleeMode)..'\\cr'
	str = str..'\nDynaMode: \\cs(150,150,255)'..tostring(DynaMode)..'\\cr'
	str = str..'\nCPMode: \\cs(150,150,255)'..tostring(CPMode)..'\\cr'
	str = str..'\nMBLock: \\cs(150,150,255)'..tostring(MBLock)..'\\cr'
	str = str..'\nElement: '..Colors[element[1]]..EleArray[EleIndex]..'\\cr'

    local info = {}
    info.modestates = str

    window:update(info)
end

setup_hud()

--------------------------------------------------------------------------------------------------------------
--End Hud Stuff
--------------------------------------------------------------------------------------------------------------

function buff_change(buff,gain)
    if buff:lower() == 'terror' or buff:lower() == 'petrification' or buff:lower() == 'sleep' or buff:lower() == 'stun' then
        if gain then
            equip(sets.Idle.DT)
			cidleset = 'Max DT'
			if buff:lower() == 'sleep' then
				if gain and player.hp > 120 and player.status == "Engaged" then -- Equip Berserker's Torque / frenzy When You Are Asleep
					--equip({neck="Berserker's Torque"})
					--add_to_chat(123,'Berserkers Torque equiped')
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
	end
    updatedisplay()
	aftercast()
end
 
function precast(spell,action)
	if (spell.type:endswith('Magic') or spell.type == "Ninjutsu") and buffactive['Silence'] then
        cancel_spell()
        send_command('input /item "Remedy" <me>')
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
	elseif sets.JA[spell.name] then
		equipSet = sets.JA[spell.name]
		add_to_chat(122,spell.name .. ' Set')
		equip(equipSet)
	end
end
 
function midcast(spell,action)
	if spell.name:contains('Cure') or spell.name:contains('Cura') then
		equip(sets.Midcast.Cure)
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.Midcast.MAcc)
	elseif spell.skill == "Enhancing Magic" then
		if spell.name:contains('Bar') then
			equip(sets.Midcast.Barspell)
		elseif spell.name:contains('Stoneskin') then
			equip(sets.Midcast.Stoneskin)
		else
			equip(sets.Midcast.EnhancingDuration)
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
    elseif spell.type == 'Geomancy' then
		equip(sets.Midcast.Geomancy)
    elseif spell.type == 'Ninjutsu' then
		if spell.name:contains('Utsusemi') then
            windower.ffxi.cancel_buff(66)
            windower.ffxi.cancel_buff(444)
            equip(sets.Precast)
		else
			equip(sets.Midcast.MB)
		end
	elseif sets.Midcast[spell.english] then
        equip(sets.Midcast[spell.english])
    elseif spell.type == "WeaponSkill" then
		equipSet = sets.WS
        if equipSet[spell.name] then
            equipSet = equipSet[spell.name]
			add_to_chat(122,spell.name .. ' Set')
        end
        equip(equipSet)
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

    if not MBLock then
		enable('body','head')
	end

	if player.status == 'Engaged' then
		equipSet = sets.TP
		equip(equipSet)
	else
		if IdleArray[IdleIndex] == 'Auto' then
			if pet.isvalid then
				equip(sets.Idle.Pet)
				cidleset = 'Pet DT'
			elseif player.mpp < 50 then
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
			if pet.isvalid then
				equip(sets.Idle.Pet)
				cidleset = 'Pet DT'
			else
				equip(sets.Idle.DT)
				cidleset = 'Refresh, DT'
			end
		elseif IdleArray[IdleIndex] == 'MEva' then
			if pet.isvalid then
				equip(sets.Idle.Pet)
				cidleset = 'Pet DT'
			else
				equip(sets.Idle.MEva)
				cidleset = 'Refresh, MEva'
			end
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
			if not DynaMode then
				enable('main','sub','ranged')
			end
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
	elseif commandArgs[1]:lower() == 'acc' then
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
	elseif commandArgs[1]:lower() == 'idle' then
		IdleIndex = (IdleIndex % #IdleArray) + 1
        windower.add_to_chat(8,'----- Idle mode updated -----')
    elseif commandArgs[1]:lower() == 'ele' then
		EleIndex = (EleIndex % #EleArray) + 1
		NukeIndex = (NukeIndex % #NukeArray) + 1
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
			if not MeleeMode then
				enable('neck')
			end
            windower.add_to_chat(8,'----- Dynamis Mode Disabled -----')
        else
            DynaMode = true
			equip({neck="Duelist's torque +1"})
            disable('neck')
            windower.add_to_chat(8,'----- Dynamis Mode Enabled -----')
        end
	elseif commandArgs[1]:lower() == 'lockmb' then
        if MBLock then
            MBLock = false
			send_command('input //gs enable all')
        else
            MBLock = true
			equip(sets.Midcast.MB)
			send_command('input //gs disable all')
			windower.add_to_chat(8,'----- MB gear locked, all disabled -----')
		end
    elseif command == 'update' then
		aftercast()
    end
	updatedisplay()
end