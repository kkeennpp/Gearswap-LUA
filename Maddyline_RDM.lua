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

NukeArray = {'Fire','Ice','Air','Earth','Thunder','Water'}
EleArray = {'Fire','Ice','Air','Earth','Thunder','Water'}

AccArray = {"LowACC","HighACC","Hybrid"}
IdleArray = {'Auto','DT','MEva'}
idleMode = IdleArray[IdleIndex]

NaSpells = S{"Blindna","Erase","Paralyna","Poisona","Silena","Stona","Viruna","Cursna"}
GainSpells = S{"Gain-STR","Gain-DEX","Gain-VIT","Gain-AGI","Gain-INT","Gain-MND","Gain-CHR"}
EnSpells = S{"Enfire","Enfire II","Enblizzard","Enblizzard II","Enaero","Enaero II","Enstone","Enstone II","Enthunder","Enthunder II","Enwater","Enwater II"}

cidleset = 'Load Temp'
MeleeMode = false
MBMode = false
CPMode = false
DynaMode = false
DWMode = false
MBLock = false

function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 5')
	
	---------------
	-- Idle Sets --
	---------------

    sets.Idle = {
		main="Daybreak",sub="Sacro Bulwark",ammo="Homiliary",
		head="Vitiation Chapeau +3",body="Jhakri Robe +2",hands="Chironic Gloves",legs="Lengo Pants",feet="Nyame Sollerets",
		ear1="Infused earring",ear2="Etiolation Earring",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2="Gelatinous Ring +1",
		neck="Sanctity Necklace",waist="Fucho-no-Obi",back={name="Sucellos's Cape",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Damage taken-5%'}}
	}

	-- Used when IdleMode is "DT"
	sets.Idle.DT = set_combine(sets.Idle,{
		legs="Nyame Flanchard",
		ear2="Ethereal Earring",neck="Loricate Torque +1"
	})

	-- Used when IdleMode is "MEva"
	sets.Idle.MEva = set_combine(sets.Idle,{
	})
	
    sets.Idle.Resting = set_combine(sets.Idle,{
        main="Chatoyant Staff",
        head="Inyanga Tiara +2",
		neck="Eidolon Pendant +1"
	})

	sets.Idle.MVMT = {legs="Carmine Cuisses +1"}

	-------------
	-- TP Sets --
	-------------
	
	sets.TP = {
		main="Vitiation Sword",sub="Sacro Bulwark",ammo="Coiste Bodhar",
		head="Malignance Chapeau",body="Ayanmo Corazza +2",hands="Ayanmo Manopolas +2",legs="Carmine Cuisses +1",feet="Carmine greaves +1",
		ear1="Sherida Earring",ear2="Hollow Earring",ring1="Ilabrat Ring",ring2="K'ayres Ring",
		neck="Anu Torque",waist="Sailfi Belt +1",back={name="Sucellos's Cape",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Damage taken-5%'}}
	}

	sets.TP.Dual = set_combine(sets.TP,{
		main="Vitiation Sword",sub="Daybreak",
		ear2="Suppanomimi"
	})

	sets.TP.HighACC = set_combine(sets.TP,{
	})
	
	sets.TP.Dual.HighACC = set_combine(sets.TP.HighACC,{ear2="Suppanomimi",})

	sets.TP.Hybrid = set_combine(sets.TP,{
		legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear2="Odnowa Earring +1",ring1="Patricius Ring",ring2="Gelatinous Ring +1",
	})

	sets.TP.DT = set_combine(sets.TP,{
        head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear2="Etiolation Earring",ring1="Patricius Ring",ring2="Gelatinous Ring +1",
		neck="Warder's Charm +1"
	})

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
		main="Vitiation Sword",sub="Thuellaic Ecu +1",ammo="Homiliary",
		head="Atrophy Chapeau +2",body="Vitiation Tabard +3",hands="Gendewitha Gages +1",legs="Lengo Pants",feet="Kaykaus Boots",
		ear1="Malignance Earring",ear2="Lethargy Earring +1",ring1="Weatherspoon Ring",ring2="Kishar Ring",
		neck="Voltsurge Torque",waist="Embla Sash",back={name="Sucellos's Cape",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Damage taken-5%'}}
	}

	-- Fast cast for cure spells
	sets.Precast.Cure = set_combine(sets.Precast,{
		sub="Genbu's Shield",
		feet="Vanya Clogs",
		ear2="Mendicant's Earring",
		back="Pahtli Cape"
	})

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
    sets.JA["Chainspell"] = {legs="Vitiation Tabard +3"}

	-------------
	-- Midcast --
	-------------

    sets.Midcast = {}

	sets.Midcast.Cure = {
		sub="Sors Shield",ammo="Clarus Stone",
		head="Gendewitha Caubeen +1",body="Vitiation Tabard +3",hands="Gendewitha Gages +1",legs="Atrophy Tights +2",feet="Vanya Clogs",
		ear1="Beatific Earring",ear2="Mendicant's Earring",ring1="Sirona's Ring",ring2="Ephedra Ring",
		neck="Colossus's Torque",waist="Embla Sash",back="Tempered Cape +1"
	}

	sets.Midcast.Enhancingskill = {
		main="Pukulatmuj +1",sub="Pukulatmuj",
		head="Befouled Crown",body="Vitiation Tabard +3",hands="Vitiation Gloves +3",legs="Atrophy Tights +2",feet="Lethargy Houseaux +2",
		ear1="Mimir Earring",ear2="Andoaa Earring",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2="Kishar Ring",
		neck="Colossus's Torque",waist="Olympus Sash",back="Ghostfyre Cape"
	}
	
	-- Max enhancing duration set, for when skill doesn't matter.
	sets.Midcast.EnhancingDuration = set_combine(sets.Midcast.Enhancingskill,{
		sub="Ammurapi Shield",
		head="Telchine Cap",hands="Atrophy Gloves +2",legs="Telchine Braconi",
		ear2="Lethargy Earring +1",
		neck="Duelist's torque +1",waist="Embla Sash"
	})

	sets.Midcast.Refresh = set_combine(sets.Midcast.EnhancingDuration,{
		body="Atrophy Tabard +2",legs="Lethargy Fuseau +1"
	})

	sets.Midcast.MAcc = {
		main="Daybreak",sub="Ammurapi Shield",ammo="Regal Gem",
		head="Vitiation Chapeau +3",body="Atrophy Tabard +2",hands="Lethargy Gantherots +2",legs="Chironic Hose",feet="Vitiation Boots +3",
		ear1="Snotra Earring",ear2="Regal Earring",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2="Kishar Ring",
		neck="Duelist's torque +1",waist="Rumination Sash",back={name="Sucellos's Cape",augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%'}}
	}

	sets.Midcast.MAB = {
		main="Bunzi's Rod",sub="Ammurapi Shield",ammo="Ghastly Tathlum",
		head="Cath Palug Crown",body="Amalric Doublet +1",hands="Amalric Gages +1",legs="Amalric Slops +1",feet="Vitiation Boots +3",
		ear1="Malignance Earring",ear2="Regal Earring",ring1="Shiva Ring +1",ring2="Freke Ring",
		neck="Sanctity Necklace",waist="Sacro Cord",back={name="Sucellos's Cape",augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10'}}
	}

	sets.Midcast.MB = set_combine(sets.Midcast.MAB,{legs="Merlinic Shalwar",feet="Jhakri Pigaches +2"})
	
	sets.Midcast.Dark = set_combine(sets.Midcast.MAB,{
		ring2="Evanescence Ring",
	})
	
	sets.Midcast.naSpell = {}

	sets.Midcast["Cursna"] = {}
	sets.Midcast.Stoneskin = set_combine(sets.Midcast.EnhancingDuration,{})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		ammo="Coiste Bodhar",
		head="Nyame Helm",body="Ayanmo Corazza +2",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Lethargy Houseaux +2",
		ear1="Sherida Earring",ear2="Moonshade Earring",ring1="Ilabrat Ring",ring2="Petrov Ring",
		neck="Anu Torque",waist="Sailfi Belt +1",back={name="Sucellos's Cape",augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Damage taken-5%'}}
	}

	sets.WS.MAB = {
		ammo="Regal Gem",
		head="Cath Palug crown",body="Amalric Doublet +1",hands="Jhakri Cuffs +2",legs="Amalric Slops +1",feet="Lethargy Houseaux +2",
		ear1="Malignance Earring",ear2="Moonshade Earring",ring1="Shiva Ring +1",ring2="Freke Ring",
		neck="Sanctity Necklace",waist="Sacro Cord",back={name="Sucellos's Cape",augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%'}}
	}

	sets.WS["Saguine Blade"] = set_combine(sets.WS.MAB,{})
	sets.WS["Aeolian Edge"] = set_combine(sets.WS.MAB,{})
	sets.WS["Seraph Blade"] = set_combine(sets.WS.MAB,{ring1="Weatherspoon ring"})
	sets.WS["Red Lotus Blade"] = set_combine(sets.WS.MAB,{})
	sets.WS["Seraph Strike"] = set_combine(sets.WS.MAB,{ring1="Weatherspoon ring"})
	sets.WS["Realmrazer"] = set_combine(sets.WS,{})
	sets.WS["Black Halo"] = set_combine(sets.WS,{})

	sets.WS["Requiescat"] = set_combine(sets.WS,{
		head="Nyame Helm",body="Ayanmo Corazza +2",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		neck="Light Gorget"
	})

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
	str = str..'\nDynaMode: \\cs(150,150,255)'..tostring(DynaMode)..'\\cr'
	str = str..'\nCPMode: \\cs(150,150,255)'..tostring(CPMode)..'\\cr'
	str = str..'\nDWMode: \\cs(150,150,255)'..tostring(DWMode)..'\\cr'
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
		if spell.name:contains('Refresh') then
			equip(sets.Midcast.Refresh)
		elseif spell.name:contains('Bar') then
			equip(sets.Midcast.Barspell)
		elseif spell.name:contains('Stoneskin') then
			equip(sets.Midcast.Stoneskin)
		elseif GainSpells:contains(spell.name) then
			equip(sets.Midcast.Enhancingskill)
		elseif EnSpells:contains(spell.name) then
			equip(sets.Midcast.Enhancingskill)
		elseif spell.name:contains('Temper') then
			equip(sets.Midcast.Enhancingskill)
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
		if AccArray[AccIndex] == 'Hybrid' then
			equipSet = equipSet['Hybrid']
			cidleset = 'Hybrid'
		elseif AccArray[AccIndex] == 'HighACC' then
			equipSet = equipSet[AccArray[AccIndex]]
			cidleset = 'High Acc'
			if DWMode then
				equipSet = sets.TP.Dual.HighACC
				cidleset = 'DW HighACC'
			end
		else
			equipSet = sets.TP
			cidleset = 'LowACC'
			if DWMode then
				equipSet = sets.TP.Dual
				cidleset = 'DW LowACC'
			end
		end
		equip(equipSet)
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
    elseif commandArgs[1]:lower() == 'dw' then
        if DWMode then
            DWMode = false
            windower.add_to_chat(8,'----- DualWield Mode Disabled -----')
        else
            DWMode = true
            windower.add_to_chat(8,'----- DualWield Mode Enabled -----')
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