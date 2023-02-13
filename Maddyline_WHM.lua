-- function file_unload()
	-- send_command('unbind f9')
	-- send_command('unbind f10')
-- end

function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 3') -- Change Default Macro Book Here --
	send_command('wait 5;input /lockstyleset 4')
	
	---------------
	-- Idle Sets --
	---------------

    sets.Idle = {
		main="Daybreak",sub="Genbu's Shield",ammo="Homiliary",
		head="Inyanga Tiara +2",body="Gendewitha Bliaut +1",hands="Chironic Gloves",legs="Inyanga Shalwar +2",feet="Inyanga Crackows +2",
		ear1="Odnowa Earring +1",ear2="Etiolation Earring",ring1="Inyanga Ring",ring2={name="Stikini Ring +1",bag="wardrobe 3"},
		neck="Warder's Charm +1",waist="Fucho-no-Obi",back="Alaunus's Cape"
	}	

	-- Used when IdleMode is "DT"
	sets.Idle.DT = set_combine(sets.Idle,{
		main="Malignance Pole",sub="Mensch Strap +1",ammo="Homiliary",
		head="Gendewitha Caubeen +1",body="Gendewitha Bliaut +1",
		ring1="Dark Ring",ring2="Gelatinous Ring +1",
		neck="Loricate Torque +1"
	})

	-- Used when IdleMode is "MEva"
	sets.Idle.MEva = set_combine(sets.Idle,{
		hands="Inyanga Dastanas +2"
	})
	
    sets.Idle.Resting = set_combine(sets.Idle,{
        main="Chatoyant Staff",
        head="Inyanga Tiara +2",
		neck="Eidolon Pendant +1"
	})

	sets.Idle.MVMT = {feet="Herald's Gaiters"}

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
		main="Cath Palug Hammer",sub="Chanter's Shield",ammo="Incantor Stone",
		head="Nahtirah Hat",body="Inyanga Jubbah +2",hands="Gendewitha Gages +1",legs="Lengo Pants",feet="Kaykaus Boots",
		ear1="Loquacious Earring",ear2="Malignance Earring",ring1="Kishar Ring",ring2="Weatherspoon Ring",
		neck="Voltsurge Torque",waist="Embla Sash",back="Swith Cape"
	}

	-- Fast cast for cure spells
	sets.Precast.Cure = set_combine(sets.Precast,{
		legs="Ebers Pantaloons +1",feet="Hygieia Clogs",
		ear2="Nourish. Earring +1",
		neck="Voltsurge Torque",back="Pahtli Cape"
	})

	-- Fast cast for ailment spells (Divine Benison works well here)
	sets.Precast.Ailment = set_combine(sets.Precast,{
		head="Ebers Cap",legs="Ebers Pantaloons +1"
	})

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
    sets.JA["Benediction"] = {body="Piety Bliaut"}
	sets.JA["Divine Caress"] = {hands="Ebers Mitts",back="Mending Cape"}

	-------------
	-- Midcast --
	-------------

    sets.Midcast = {}

	sets.Midcast.Cure = {
		main="Chatoyant Staff",sub="Enki Strap",ammo="Hydrocera",
		head="Gendewitha Caubeen +1",body="Ebers Bliaut +1",hands="Theophany Mitts +2",legs="Ebers Pantaloons +1",feet="Kaykaus Boots",
		ear1="Glorious Earring",ear2="Nourish. Earring +1",ring1="Sirona's Ring",ring2="Ephedra Ring",
		neck="Colossus's Torque",waist="Korin Obi",back="Alaunus's Cape"
	}

	sets.Midcast.Curaga = set_combine(sets.Midcast.Cure,{
		ammo="Clarus Stone",body="Theophany Bliaut +2",neck="Nuna Gorget +1"
	})

	-- Enhancing set with 500 skill
	sets.Midcast.Enhancing = {
		main="Beneficus",sub="Ammurapi Shield",ammo="Incantor Stone",
		head="Befouled Crown",body="Telchine Chasuble",hands="Dynasty Mitts",legs="Piety pantaloons",feet="Kaykaus Boots",
		neck="Colossus's Torque",waist="Olympus Sash",back="Mending Cape"
	}
	
	-- Max enhancing duration set, for when skill doesn't matter.
	sets.Midcast.EnhancingDuration = set_combine(sets.Midcast.Enhancing,{
		head="Telchine Cap",body="Telchine Chasuble",hands="Telchine Gloves",legs="Telchine Braconi",feet="Telchine Pigaches",
		waist="Embla Sash"
	})

	-- Make sure this set has 500 skill as well.
	sets.Midcast.Barspell = set_combine(sets.Midcast.Enhancing,{
		main="Beneficus",
		head="Ebers Cap",body="Ebers Bliaut +1",hands="Ebers Mitts",legs="Piety Pantaloons",feet="Ebers Duckbills"
	})

	sets.Midcast.Regen = set_combine(sets.Midcast.EnhancingDuration,{
		head="Inyanga Tiara +2",body="Piety Bliaut",hands="Orison Mitts",legs="Theophany pantaloons",
	})

	sets.Midcast.MAcc = {
		main="Grioavolr",sub="Enki Strap",ammo="Hydrocera",
		head="Inyanga Tiara +2",body="Theophany Bliaut +2",hands="Inyanga Dastanas +2",legs="Inyanga shalwar +1",feet="Piety Duckbills +1",
		ear1="Gwati Earring",ear2="Nourish. Earring +1",ring1="Inyanga Ring",ring2="Sangoma Ring",
		neck="Sanctity Necklace"
	}

	sets.Midcast.Enfeebling = set_combine(sets.Midcast.MAcc,{
	})
	
	sets.Midcast.naSpell = set_combine(sets.Precast,{
		head="Ebers Cap",body="Ebers Bliaut +1",hands="Inyanga Dastanas +2",legs="Theophany pantaloons",feet="Vanya Clogs",
		ring1="Sirona's Ring",ring2="Ephedra Ring",
		neck="Cleric's Torque"
	})

	sets.Midcast["Cursna"] = set_combine(sets.Midcast.naSpell,{})
	sets.Midcast["Erase"] = set_combine(sets.Midcast.naSpell,{})
	sets.Midcast["Stoneskin"] = set_combine(sets.Midcast.EnhancingDuration,{})
    sets.Midcast["Protectra V"] = set_combine(sets.Midcast.EnhancingDuration,{ring2="Sheltered Ring"})
    sets.Midcast["Shellra V"] = set_combine(sets.Midcast.EnhancingDuration,{ring2="Sheltered Ring"})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {}
	sets.WS["Realmrazer"] = {}
	sets.WS["Judgment"] = {}
	sets.WS["Black Halo"] = {}
	sets.WS["Hexa Strike"] = {}
	sets.WS["Flash Nova"] = {}

	---------------
	-- Aftercast --
	---------------

    sets.aftercast = {}
end

--------------------------------------------------------------------------------------------------------------
-- HUD STUFF
--------------------------------------------------------------------------------------------------------------

IdleIndex = 1
IdleArray = {"Auto","Base","DT","MEva"}
-- send_command('bind f9 gs c ToggleMEva')
-- send_command('bind f10 gs c MeleeMode')

NaSpells = S{"Blindna","Erase","Paralyna","Poisona","Silena","Stona","Viruna","Cursna"}
BoostSpells = S{"Boost-STR","Boost-DEX","Boost-VIT","Boost-AGI","Boost-INT","Boost-MND","Boost-CHR"}

cidleset = 'Load Temp'
CPMode = false
DynaMode = false

function setup_hud()
    job_property = {}
    job_info = {}
    job_info.box={
        pos={x=2725,y=1342},
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
	local str = 'IdleMode: \\cs(150,150,255)'..IdleArray[IdleIndex]..'\\cr'
	str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
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

function precast(spell,action)
	if (spell.type:endswith('Magic') or spell.type == "Ninjutsu") and buffactive['Silence'] then
        cancel_spell()
        send_command('input /item "Remedy" <me>')
        add_to_chat(123, '****** ['..spell.name..' CANCELED - Using Echo Drops] ******')
	end

	if spell.type:contains('Magic') then
        if spell.name == 'Stoneskin' then
            windower.ffxi.cancel_buff(37)--[[Cancels stoneskin, not delayed incase you get a Quick Cast]]
            equip(sets.Precast)
        elseif spell.name == 'Sneak' then
            windower.ffxi.cancel_buff(71)--[[Cancels Sneak]]
            equip(sets.Precast)
        elseif spell.name:contains('Cure') or spell.name:contains('Cura') then
            equip(sets.Precast.Cure)
		elseif NaSpells:contains(spell.name) then
			equip(sets.Precast.Ailment)
		else
            equip(sets.Precast)
        end
    elseif spell.type == "WeaponSkill" then
		equipSet = sets.ws
        if equipSet[spell.name] then
            equipSet = equipSet[spell.name]
			add_to_chat(122,spell.name .. ' Set')
        end
        equip(equipSet)
	elseif sets.JA[spell.name] then
		equipSet = sets.JA[spell.name]
		add_to_chat(122,spell.name .. ' Set')
		equip(equipSet)
	--else
        --equip(sets.Precast)
	end
end

function midcast(spell,action)
	if spell.name:contains('Cure') then
		equip(sets.Midcast.Cure)
	elseif spell.name:contains('Cura') then
		equip(sets.Midcast.Curaga)
	elseif sets.Midcast[spell.name] then
		equip(sets.Midcast[spell.name])
	elseif NaSpells:contains(spell.name) then
		equip(sets.Midcast.naSpell)
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.Midcast.Enfeebling)
	elseif spell.skill == "Enhancing Magic" then
		if spell.name:contains('Regen') then
			equip(sets.Midcast.Regen)
		elseif spell.name:contains('Bar') then
			equip(sets.Midcast.Barspell)
		elseif BoostSpells:contains(spell.name) then
			equip(sets.Midcast.Enhancing)
		else
			equip(sets.Midcast.EnhancingDuration)
		end
	elseif spell.skill == "Divine Magic" then
		if spell.name == "Repose" then
			equip(sets.Midcast.MAcc)
		else
			equip(sets.Midcast.MAcc)
		end
    end
end

function aftercast(spell,action)
    if midaction() then
        return
    end

	if player.status == 'Engaged' then
		equip(sets.Precast)
	else
		if IdleArray[IdleIndex] == 'Auto' then
			if player.mpp < 50 then
				equip(set_combine(sets.Idle,{waist="Fucho-no-Obi"}))
				cidleset = 'Obi Idle Set'
			elseif player.mpp > 75 then
				equip(sets.Idle.MEva)
				cidleset = 'MEva Idle Set'
			elseif player.hpp < 75 then
				equip(sets.Idle.DT)
				cidleset = 'DT Idle Set'
			else
				equip(sets.Idle)
				cidleset = 'Base Idle Set'
			end
		elseif IdleArray[IdleIndex] == 'DT' then
			equip(sets.Idle.DT)
			cidleset = IdleArray[IdleIndex] .. ' Idle Set'
		elseif IdleArray[IdleIndex] == 'MEva' then
			equip(sets.Idle.MEva)
			cidleset = IdleArray[IdleIndex] .. ' Idle Set'
		else
			if player.mpp < 50 then
				equip(set_combine(sets.idle,{waist="Fucho-no-Obi"}))
				cidleset = IdleArray[IdleIndex] .. ' Idle Set'
			else
				equip(sets.Idle)
				cidleset = IdleArray[IdleIndex] .. ' Idle Set'
			end
		end
	end
    updatedisplay()
end
 
function status_change(new,old)
    if new == 'Resting' then
        equip(sets.Idle.Resting)
		cidleset = 'Resting Set'
    else
        aftercast()
	end
end

function self_command(command)
	-- is_valid = (command == "Idle") -- "//gc c Idle" will call idle() without triggering the console help line
    if command == 'idl' then
        IdleIndex = (IdleIndex % #IdleArray) + 1
        add_to_chat(158,'Idle Set: ' .. IdleArray[IdleIndex])
    elseif command == 'cp' then
        if CPMode then
            CPMode = false
            enable('back')
            windower.add_to_chat(8,'----- CP Mode Disabled -----')
        else
            CPMode = true
			equip({back="Aptitude Mantle"})
            disable('back')
            windower.add_to_chat(8,'----- CP Mode Enabled, Cape Locked -----')
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