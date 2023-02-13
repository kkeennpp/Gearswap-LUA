nukes = {}
nukes.t1 = {['Earth']="Stone",		['Water']="Water",		['Air']="Aero",		['Fire']="Fire",	['Ice']="Blizzard",		['Thunder']="Thunder",		['Light']="Thunder",	['Dark']="Blizzard"}
nukes.t2 = {['Earth']="Stone II",	['Water']="Water II",	['Air']="Aero II",	['Fire']="Fire II",	['Ice']="Blizzard II",	['Thunder']="Thunder II",	['Light']="Thunder II",	['Dark']="Blizzard II"}
nukes.t3 = {['Earth']="Stone III",	['Water']="Water III",	['Air']="Aero III",	['Fire']="Fire III",['Ice']="Blizzard III",	['Thunder']="Thunder III",	['Light']="Thunder III",['Dark']="Blizzard III"}
nukes.t4 = {['Earth']="Stone IV",	['Water']="Water IV",	['Air']="Aero IV",	['Fire']="Fire IV",	['Ice']="Blizzard IV",	['Thunder']="Thunder IV",	['Light']="Thunder IV",	['Dark']="Blizzard IV"}
nukes.t5 = {['Earth']="Stone V",	['Water']="Water V",	['Air']="Aero V",	['Fire']="Fire V",	['Ice']="Blizzard V",	['Thunder']="Thunder V",	['Light']="Thunder V",	['Dark']="Blizzard V"}

nukes.helix = {['Earth']="Geohelix II",	['Water']="Hydrohelix II",	['Air']="Anemohelix II",['Fire']="Pyrohelix II", ['Ice']="Cryohelix II",['Thunder']="Ionohelix II",	  ['Light']="Luminohelix II",	['Dark']="Noctohelix II"}
nukes.storm = {['Earth']="Sandstorm II",['Water']="Rainstorm II",	['Air']="Windstorm II",	['Fire']="Firestorm II", ['Ice']="Hailstorm II",['Thunder']="Thunderstorm II",['Light']="Aurorastorm II",	['Dark']="Voidstorm II"}
--nukes.helix = {['Earth']="Geohelix",	['Water']="Hydrohelix",	['Air']="Anemohelix",	['Fire']="Pyrohelix", ['Ice']="Cryohelix", ['Thunder']="Ionohelix",		['Light']="Luminohelix", ['Dark']="Noctohelix"}
--nukes.storm = {['Earth']="Sandstorm",	['Water']="Rainstorm",	['Air']="Windstorm",	['Fire']="Firestorm", ['Ice']="Hailstorm", ['Thunder']="Thunderstorm",	['Light']="Aurorastorm", ['Dark']="Voidstorm"}

--elements =  {'Ice', 'Air', 'Dark', 'Light', 'Earth', 'Thunder', 'Water', 'Fire'}
--tier1sc =   {'Induration', 'Detonation', 'Compression', 'Transfixion', 'Scission', 'Impaction', 'Reverberation', 'Liquefaction'}
--tier2sc =   {'Distortion', 'Fragmentation', 'Gravitation', 'Fusion', 'Gravitation', 'Fragmentation', 'Distortion', 'Fusion'}
NukeIndex = 1
EleIndex = 1
SCIndexT1 = 1
SCIndexT2 = 1
SCTier = 2
NukeArray = {'Ice','Water','Air','Thunder','Earth','Fire'}
EleArray = {'Ice','Water','Air','Thunder','Earth','Fire'}
SCArrayT1 = {'Induration','Reverberation','Detonation','Impaction','Scission','Liquefaction'}
SCArrayT2 = {'Distortion','Distortion','Fragmentation','Fragmentation','Gravitation','Fusion'}

MeleeMode = false
cidleset = 'Load Temp'
MBMode = false
DynaMode = false
SCMode = false
MBLock = false

IdleIndex = 1
IdleArray = {'Auto','DT','MEva'}

windower.send_command('bind pageup gs c ele up')
windower.send_command('bind pagedown gs c ele down')

function file_unload() -- Unbinds your keybinds on unload.
    windower.send_command('unbind pageup')
    windower.send_command('unbind pagedown')
end

function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 1')
	send_command('wait 5;input /lockstyleset 13')
	
	---------------
	-- Idle Sets --
	---------------

    sets.Idle = {
		main="Mpaca's Staff",sub="Mensch Strap +1",ammo="Homiliary",
		head="Befouled Crown",body="Agwu's Robe",hands="Chironic Gloves",legs="Assiduity Pants +1",feet="Nyame Sollerets",
		ear1="Etiolation Earring",ear2="Infused Earring",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2="Gelatinous Ring +1",
		neck="Sanctity Necklace",waist="Fucho-no-Obi",back={name="Lugh's Cape",augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%'}}
	}

	-- Used when IdleMode is "DT"
	sets.Idle.DT = set_combine(sets.Idle,{
		ammo="Staunch Tathlum +1",
		main="Malignance Pole",sub="Kaja Grip",
		ear2="Ethereal Earring",ring1="Dark Ring",ring2="Defending Ring",
		neck="Loricate Torque +1"
	})

	-- Used when IdleMode is "MEva"
	sets.Idle.MEva = set_combine(sets.Idle,{
	})
	
    sets.Idle.Resting = set_combine(sets.Idle,{
	})

	sets.Idle.Sublimation = {
		waist="Embla Sash"
		--head="Academic's Mortarboard +3",body="Pedagogy Gown +3",ear1="Savant's Earring",waist="Embla Sash"
	}

	sets.Idle.MVMT = {feet="Herald's Gaiters"}

	-------------
	-- TP Sets --
	-------------
	
	sets.Melee = {
		main="Malignance Pole",sub="Mensch Strap +1",ammo="Homiliary",
        head="Nyame Helm",body="Jhakri Robe +2",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Etiolation Earring",ear2="Ethereal Earring",ring1="Defending Ring",ring2="Patricius Ring",
		neck="Sanctity Necklace",waist="Eschan Stone",back="Solemnity Cape"
	}

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
		main="Oranyan",sub="Vivid Strap",ammo="Incantor Stone",
		head="Nahtirah Hat",body="Agwu's Robe",hands="Gendewitha Gages +1",legs="Agwu's Slops",feet="Agwu's Pigaches",
		ear1="Malignance Earring",ear2="Etiolation Earring",ring1="Weatherspoon Ring",ring2="Kishar Ring",
		neck="Voltsurge Torque",waist="Embla Sash",back="Fi Follet Cape +1"
	}

	-- Fast cast for cure spells
	sets.Precast.Cure = set_combine(sets.Precast,{
		body="Heka's Kalasiris",ear2="Mendicant's Earring"
	})

	sets.Precast.Grimoire = {head="Pedagogy Mortarboard +2",feet="Academic's Loafers +1"}
	sets.Precast.Dispelga = set_combine(sets.Precast,{main="Daybreak",sub="Ammurapi Shield"})

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
		main="Chatoyant Staff",sub="Enki Strap",ammo="Pemphredo Tathlum",
		head="Gendewitha Caubeen +1",body="Gendewitha Bliaut +1",hands="Pedagogy Bracers +3",legs="Academic's Pants +3",feet="Pedagogy Loafers +3",
		ear1="Malignance Earring",ear2="Mendicant's Earring",ring1="Stikini Ring +1",ring2="Sirona's Ring",
		neck="Colossus's Torque",waist="Korin Obi",back="Twilight Cape"
	}

	-- Enhancing set with 500 skill
	sets.Midcast.Enhancing = {
		main="Pedagogy Staff",sub="Enki Strap",ammo="Savant's Treatise",
		head="Telchine Cap",body="Telchine Chasuble",hands="Telchine Gloves",legs="Telchine Braconi",feet="Telchine Pigaches",
		ear1="Andoaa Earring",ear2="Mimir Earring",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2={name="Stikini Ring +1",bag="wardrobe 1"},
		neck="Colossus's Torque",waist="Embla Sash",back="Fi Follet Cape +1"
	}

	sets.Midcast.Regen = set_combine(sets.Midcast.Enhancing,{head="Arbatel Bonnet +1",body="Telchine Chasuble",back="Bookworm's Cape"})
	sets.Midcast.Storm = set_combine(sets.Midcast.Enhancing,{feet="Pedagogy Loafers +1"})

	sets.Midcast.MAcc = {
		main="Daybreak",sub="Ammurapi Shield",ammo="Pemphredo Tathlum",
		head="Academic's Mortarboard +1",body="Academic's Gown +1",hands="Pedagogy Bracers +1",legs="Academic's Pants +1",feet="Academic's Loafers +1",
		ear1="Malignance Earring",ear2="Regal Earring",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2={name="Stikini Ring +1",bag="wardrobe 1"},
		neck="Argute Stole +1",waist="Luminary Sash",back={name="Lugh's Cape",augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10'}}
	}

	sets.Midcast.MAB = {
		main="Bunzi's Rod",sub="Ammurapi Shield",ammo="Ghastly Tathlum",
		head="Pedagogy Mortarboard +2",body="Amalric Doublet +1",hands="Amalric Gages +1",legs="Amalric Slops +1",feet="Amalric Nails +1",
		ear1="Malignance Earring",ear2="Regal Earring",ring1="Freke Ring",ring2="Shiva Ring +1",
		neck="Argute Stole +1",waist="Sacro Cord",back={name="Lugh's Cape",augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10'}}
	}

	sets.Midcast.Helix = set_combine(sets.Midcast.MAB,{
		sub="Culminus",ammo="Ghastly Tathlum",
		head="Agwu's Cap"
	})
	sets.Midcast.DarkHelix = set_combine(sets.Midcast.Helix,{head="Pixie Hairpin +1",ring2="Archon Ring"})
	sets.Midcast.EarthHelix = set_combine(sets.Midcast.Helix,{neck="Quanpur Necklace"})
	sets.Midcast.LightHelix = set_combine(sets.Midcast.Helix,{main="Daybreak",ring1="Weatherspoon Ring"})

	sets.Midcast.MB = set_combine(sets.Midcast.MAB,{ring2="Mujin Band",legs="Agwu's Slops",feet="Agwu's Pigaches"})
	sets.Midcast.MBHelix = set_combine(sets.Midcast.Helix,{body="Agwu's Robe",legs="Agwu's Slops",ring2="Mujin Band"})
	sets.Midcast.MBDarkHelix = set_combine(sets.Midcast.MBHelix,{head="Pixie Hairpin +1",ring1="Archon Ring"})
	sets.Midcast.MBEarthHelix = set_combine(sets.Midcast.MBHelix,{neck="Quanpur Necklace"})
	sets.Midcast.MBLightHelix = set_combine(sets.Midcast.MBHelix,{main="Daybreak",ring1="Weatherspoon Ring"})
	
	sets.Midcast.Dark = set_combine(sets.Midcast.MAcc,{
		main="Rubicundity",sub="Ammurapi Shield",ammo="Ghastly Tathlum +1",
		body="Academic's Gown +1",hands="Academic's Bracers +1",legs="Pedagogy Pants +1",feet="Agwu's Pigaches",
		ring1="Archon Ring",ring2="Evanescence Ring",
		neck="Erra Pendant",waist="Fucho-no-Obi",back="Bookworm's Cape"
	})

	sets.Midcast.Absorb = set_combine(sets.Midcast.MAcc,{
		body="Academic's Gown +3",hands="Academic's Bracers +3",legs="Pedagogy Pants +3",
		ring1="Archon Ring",ring2="Evanescence Ring",
		neck="Erra Pendant",waist="Fucho-no-Obi",back="Bookworm's Cape"
	})
	
	sets.Midcast.naSpell = {}

	sets.Midcast["Cursna"] = {}
	sets.Midcast["Stoneskin"] = set_combine(sets.Midcast.Enhancing,{})
    sets.Midcast["Protectra V"] = set_combine(sets.Midcast.Enhancing,{ring2="Sheltered Ring",feet="Piety Duckbills +1"})
    sets.Midcast["Shellra V"] = set_combine(sets.Midcast.Enhancing,{ring2="Sheltered Ring",legs="Piety Pantaloons"})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {}
	sets.WS["Realmrazer"] = {}
	sets.WS["Judgment"] = {}
	sets.WS["Black Halo"] = {}
	sets.WS["Hexa Strike"] = {}
	sets.WS["Flash Nova"] = {}
	sets.WS["Omniscience"] = {
		ammo="Pemphredo Tathlum",
		head="Pedagogy Mortarboard +3",body="Amalric Doublet +1",hands="Amalric Gages +1",legs="Amalric Slops +1",feet="Pedagogy Loafers +3",
		ear1="Malignance Earring",ear2="Regal Earring",ring1="Freke Ring",ring2="Shiva Ring +1",
		neck="Argute Stole +1",waist="Refoccilation Stone",back={name="Lugh's Cape",augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%'}}
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
	--element = (EleArray[EleIndex]:split('/'))
	element = (EleArray[EleIndex])

	local str = 'IdleMode: \\cs(150,150,255)'..IdleArray[IdleIndex]..'\\cr'
	str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
	str = str..'\nMBMode: \\cs(150,150,255)'..tostring(MBMode)..'\\cr'
	str = str..'\nMeleeMode: \\cs(150,150,255)'..tostring(MeleeMode)..'\\cr'
	str = str..'\nDynaMode: \\cs(150,150,255)'..tostring(DynaMode)..'\\cr'
	str = str..'\nMBLock: \\cs(150,150,255)'..tostring(MBLock)..'\\cr'
	str = str..'\nSCTier: \\cs(150,150,255)'..tostring(SCTier)..'\\cr'
	str = str..'\nElement: '..Colors[element]..EleArray[EleIndex]..'\\cr'
	if SCTier == 1 then
		str = str..'\nSkillchain: '..Colors[element]..SCArrayT1[SCIndexT1]..'\\cr'
	else
		str = str..'\nSkillchain: '..Colors[element]..SCArrayT2[SCIndexT2]..'\\cr'
	end

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
		elseif spell.name == 'Dispelga' then
            equip(sets.Precast.Dispelga)
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

	if buffactive['addendum: black'] or buffactive['dark arts'] then
		if spell.type == 'BlackMagic' then
			equip(sets.Precast.Grimoire)
		end
	elseif buffactive['addendum: white'] or buffactive['light arts'] then
		if spell.type == 'WhiteMagic' then
			equip(sets.Precast.Grimoire)
		end
	end
end
 
function midcast(spell,action)
	if spell.name:contains('Cure') or spell.name:contains('Cura') then
		equip(sets.Midcast.Cure)
		if buffactive['Rapture'] then
			equip({head="Arbatel Bonnet +1"})
		end
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.Midcast.MAcc)
		if buffactive['Klimaform'] and spell.element == world.weather_element then
            equip({feet="Arbatel Loafers +1"})
		end
	elseif spell.skill == "Enhancing Magic" then
		if spell.name:contains('storm') then
			equip(sets.Midcast.Storm)
		elseif spell.name:contains('Regen') then
			equip(sets.Midcast.Regen)
        elseif spell.name:match('Protect') or spell.name:match('Shell') then
			equip(sets.Midcast.Enhancing)
            equip({ring1="Sheltered Ring"})
		else
			equip(sets.Midcast.Enhancing)
		end

		if buffactive['Perpetuance'] then
			equip({hands="Arbatel Bracers +1"})
		end
    elseif spell.type == 'BlackMagic' then
		if spell.skill == "Elemental Magic" then
			if MBMode then
				if spell.name:contains('Noctohelix') then
					equip(sets.Midcast.MBDarkHelix)
				elseif spell.name:contains('Geohelix') then
					equip(sets.Midcast.MBEarthHelix)
				elseif spell.name:contains('Luminohelix') then
					equip(sets.Midcast.MBLightHelix)
				elseif spell.name:contains('helix') then
					equip(sets.Midcast.MBHelix)
				else
					equip(sets.Midcast.MB)
				end
			else
				if spell.name:contains('Noctohelix') then
					equip(sets.Midcast.DarkHelix)
				elseif spell.name:contains('Geohelix') then
					equip(sets.Midcast.EarthHelix)
				elseif spell.name:contains('Luminohelix') then
					equip(sets.Midcast.LightHelix)
				elseif spell.name:contains('helix') then
					equip(sets.Midcast.Helix)
				else
					equip(sets.Midcast.MAB)
				end
			end
		elseif spell.skill == "Dark Magic" then
			if spell.name == 'Kaustra' then
				if MBMode then
					equip(sets.Midcast.MBDarkHelix)
				else
					equip(sets.Midcast.DarkHelix)
				end
			elseif spell.name == 'Stun' then
				equip(sets.Midcast.MAcc)
			elseif spell.name:contains('Absorb') then
				equip(sets.Midcast.Absorb)
			else
				equip(sets.Midcast.Dark)
			end
		end

		if buffactive['Klimaform'] and spell.element == world.weather_element then
            equip({feet="Arbatel Loafers +1"})
		end

		if buffactive['Immanence'] then
            equip({hands="Arbatel Bracers +1"})
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

    if MBLock then
    else
		enable('body','head')
	end

	if player.status == 'Engaged' then
        equip(sets.Melee)
		cidleset = 'Melee'
	else
		if IdleArray[IdleIndex] == 'Auto' then
			if buffactive['Sublimation: Activated'] then
				equip(set_combine(sets.Idle,(sets.Idle.Sublimation)))
				cidleset = 'Sublimation'
				if player.mpp < 50 then
					equip({waist="Fucho-no-Obi"})
					cidleset = 'Sub, Obi'
				end	
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
			if buffactive['Sublimation: Activated'] then
                equip(set_combine(sets.Idle.DT,(sets.Idle.Sublimation)))
				cidleset = 'Sub, DT'
			else
				equip(sets.Idle.DT)
				cidleset = 'Refresh, DT'
			end
		elseif IdleArray[IdleIndex] == 'MEva' then
			if buffactive['Sublimation: Activated'] then
                equip(set_combine(sets.Idle.MEva,(sets.Idle.Sublimation)))
				cidleset = 'Sub, MEva'
			else
				equip(sets.Idle.MEva)
				cidleset = 'Refresh, MEva'
			end
		end
	end

	--if buffactive['addendum: black'] or buffactive['dark arts'] then
		--send_command('input /macro book 2;wait .1;input /macro set 6')
	--elseif buffactive['addendum: white'] or buffactive['light arts'] then
		--send_command('input /macro book 2;wait .1;input /macro set 5')
	--end
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
	elseif commandArgs[1]:lower() == 'pic' then
		zeni_pic()
	elseif commandArgs[1]:lower() == 'strat' then
        handle_strategems(commandArgs[2])
    elseif commandArgs[1]:lower() == 'ele' then
		if commandArgs[2]:lower() == 'down' then
			EleIndex = (EleIndex % #EleArray) - 1
			SCIndexT1 = (SCIndexT1 % #SCArrayT1) - 1
			SCIndexT2 = (SCIndexT2 % #SCArrayT2) - 1
			NukeIndex = (NukeIndex % #NukeArray) - 1
		else
			EleIndex = (EleIndex % #EleArray) + 1
			SCIndexT1 = (SCIndexT1 % #SCArrayT1) + 1
			SCIndexT2 = (SCIndexT2 % #SCArrayT2) + 1
			NukeIndex = (NukeIndex % #NukeArray) + 1
		end
    elseif commandArgs[1]:lower() == 'nuke' then
		local tier = commandArgs[2]:lower()
		local element = NukeArray[NukeIndex]
		send_command('@input /ma "'..nukes[tier][element]..'" <t>')
    elseif commandArgs[1]:lower() == 'sc' then
		if commandArgs[2]:lower() == 'tier' then
			if SCTier == 1 then
				SCTier = 2
			else
				SCTier = 1
			end
			updatedisplay()
			return
		end

		if commandArgs[2]:lower() == 'auto' then
			if SCTier == 1 then
				autosc = SCArrayT1[SCIndexT1]
			else
				autosc = SCArrayT2[SCIndexT2]
			end
		end

        if commandArgs[2]:lower() == 'scission' or autosc:lower() == 'scission' then
            send_command('input /p Opening SC: Scission  MB: Stone; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Fire" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Scission; input /ma "Geohelix" <t>')
        elseif commandArgs[2]:lower() == 'reverberation' or autosc:lower() == 'reverberation' then
            send_command('input /p Opening SC: Reverberation  MB: Water; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Stone" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Reverberation; input /ma "Hydrohelix" <t>')
        elseif commandArgs[2]:lower() == 'detonation' or autosc:lower() == 'detonation' then
            send_command('input /p Opening SC: Detonation  MB: Air; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Thunder" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Detonation; input /ma "Anemohelix" <t>')
        elseif commandArgs[2]:lower() == 'liquefaction' or autosc:lower() == 'liquefaction' then
            send_command('input /p Opening SC: Liquefaction  MB: Fire; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Thunder" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Liquefaction; input /ma "Pyrohelix" <t>')
        elseif commandArgs[2]:lower() == 'induration' or autosc:lower() == 'induration' then
            send_command('input /p Opening SC: Induration  MB: Ice; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Water" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Induration; input /ma "Cryohelix" <t>')
        elseif commandArgs[2]:lower() == 'impaction' or autosc:lower() == 'impaction' then
            send_command('input /p Opening SC: Impaction  MB: Thunder; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Blizzard" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Impaction; input /ma "Ionohelix" <t>')
        elseif commandArgs[2]:lower() == 'compression' or autosc:lower() == 'compression' then
            send_command('input /p Opening SC: Compression  MB: Dark; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Blizzard" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Compression; input /ma "Noctohelix" <t>')
        elseif commandArgs[2]:lower() == 'transfixion' or autosc:lower() == 'transfixion' then
            send_command('input /p Opening SC: Transfixion  MB: Light; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Noctohelix" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Transfixion; input /ma "Luminohelix" <t>')
        elseif commandArgs[2]:lower() == 'distortion' or autosc:lower() == 'distortion' then
            send_command('input /p Opening SC: Distortion  MB: Water/Ice; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Luminohelix" <t>; wait 6.5; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Distortion; input /ma "Geohelix" <t>')
        elseif commandArgs[2]:lower() == 'fragmentation' or autosc:lower() == 'fragmentation' then
            send_command('input /p Opening SC: Fragmentation  MB: Thunder/Wind; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Blizzard" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Fragmentation; input /ma "Hydrohelix" <t>')
        elseif commandArgs[2]:lower() == 'fusion' or autosc:lower() == 'fusion' then
            send_command('input /p Opening SC: Fusion  MB: Light/Fire; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Fire" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Fusion; input /ma "Ionohelix" <t>')
        elseif commandArgs[2]:lower() == 'gravitation' or autosc:lower() == 'gravitation' then
            send_command('input /p Opening SC: Gravitation  MB: Dark/Stone; wait .1; input /ja "Immanence" <me>; wait 1.5; input /ma "Aero" <t>; wait 4.0; input /ja "Immanence" <me>; wait 1.5; input /p Closing SC: Gravitation; input /ma "Noctohelix" <t>')
        end
    elseif commandArgs[1]:lower() == 'cp' then
    elseif commandArgs[1]:lower() == 'dyna' then
        if DynaMode then
            DynaMode = false
            enable('neck')
            windower.add_to_chat(8,'----- Dynamis Mode Disabled -----')
        else
            DynaMode = true
			equip({neck="Argute Stole +1"})
            disable('neck')
            windower.add_to_chat(8,'----- Dynamis Mode Enabled -----')
        end
    elseif commandArgs[1]:lower() == '6s' then
        if SCMode then
            SCMode = false
            enable('main','sub')
            windower.add_to_chat(8,'----- 6 Step Mode Disabled -----')
        else
            SCMode = true
			equip({main="Nmd. Moogle Rod",sub=""})
            disable('main','sub')
            windower.add_to_chat(8,'----- 6 Step Mode Enabled, Main Locked -----')
            windower.add_to_chat(8,'----- /console exec live/sch6step.txt -----')
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

function get_current_strategem_count()
    -- returns recast in seconds.
    local allRecasts = windower.ffxi.get_ability_recasts()
    local stratsRecast = allRecasts[231]

    local maxStrategems = math.floor(player.main_job_level + 10) / 20
    -- assuming level 90+ and if not 550JP replace 5*33 by 5*45 below
    local fullRechargeTime = 5*33

    local currentCharges = math.floor(maxStrategems - maxStrategems * stratsRecast / fullRechargeTime)

    return currentCharges
end