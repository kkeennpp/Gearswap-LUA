-- function file_unload()
	-- send_command('unbind f9')
	-- send_command('unbind f10')
-- end

function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 3') -- Change Default Macro Book Here --
	send_command('wait 5;input /lockstyleset 1')
	
	---------------
	-- Idle Sets --
	---------------

    sets.Idle = {
		main="Queller Rod",sub="Genbu's Shield",ammo="Homiliary",
		head="Inyanga Tiara +2",body="Ebers Bliaut +2",hands="Ebers Mitts +2",legs="Inyanga Shalwar +2",feet="Inyanga Crackows +2",
		ear1="Hearty Earring",ear2="Ebers Earring +1",ring1="Inyanga Ring",ring2="Gelatinous Ring +1",
		neck="Loricate Torque +1",waist="Carrier's Sash",back={name="Alaunus's Cape",augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','Enmity-10','Phys. dmg. taken-10%'}}
	}	

	-- Used when IdleMode is "DT"
	sets.Idle.DT = set_combine(sets.Idle,{
		main="Mafic Cudgel",legs="Ebers Pantaloons +2"
	})

	-- Used when IdleMode is "MEva"
	sets.Idle.MEva = set_combine(sets.Idle,{
	})
	
    sets.Idle.Resting = set_combine(sets.Idle,{
	})

	sets.Idle.MVMT = {feet="Herald's Gaiters"}
	
	sets.TP = {
		main="Gada",sub="Ammurapi Shield",ammo="Homiliary",
		head="Ayanmo Zucchetto +2",body="Ayanmo Corazza +2",hands="Ebers Mitts +2",legs="Ebers Pantaloons +2",feet="Ebers Duckbills +2",
		ear1="Hearty Earring",ear2="Ebers Earring +1",ring1="K'ayres Ring",ring2="Gelatinous Ring +1",
		neck="Sanctity Necklace",waist="Embla Sash",back={name="Alaunus's Cape",augments={'"Fast Cast"+10'}}
	}

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
		main="Cath Palug Hammer",sub="Chanter's Shield",ammo="Incantor Stone",
		head={name="Vanya Hood",augments={'MP+50','"Fast Cast"+10','Haste+2%'}},body="Inyanga Jubbah +2",hands="Gendewitha Gages +1",legs="Ayanmo Cosciales +2",feet="Regal Pumps +1",
		ear1="Loquacious Earring",ear2="Etiolation Earring",ring1="Kishar Ring",ring2="Weatherspoon Ring",
		neck="Voltsurge Torque",waist="Embla Sash",back={name="Alaunus's Cape",augments={'"Fast Cast"+10'}}
	}

	-- Fast cast for cure spells
	sets.Precast.Cure = set_combine(sets.Precast,{
		main="Queller Rod",sub="Sors Shield",
		legs="Ebers Pantaloons +2",feet="Vanya Clogs",
		ear1="Mendicant's Earring"
	})

	-- Fast cast for ailment spells (Divine Benison works well here)
	sets.Precast.Ailment = set_combine(sets.Precast,{
		head="Ebers Cap +2",legs="Ebers Pantaloons +2"
	})

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
    sets.JA["Benediction"] = {body="Piety Bliaut +3"}
	sets.JA["Divine Caress"] = {hands="Ebers Mitts",back="Mending Cape"}

	-------------
	-- Midcast --
	-------------

    sets.Midcast = {}

	sets.Midcast.Cure = {
		main="Queller Rod",sub="Sors Shield",ammo="Psilomene",
		head={name="Vanya Hood",augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3'}},body="Ebers Bliaut +2",hands="Theophany Mitts +3",legs="Ebers Pantaloons +2",feet="Kaykaus Boots",
		ear1="Mendicant's Earring",ear2="Glorious Earring",ring1="Janniston Ring",ring2="Menelaus's Ring",
		neck="Cleric's Torque",waist="Korin Obi",back={name="Alaunus's Cape",augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','Enmity-10','Phys. dmg. taken-10%'}}
	}

	sets.Midcast.Curaga = set_combine(sets.Midcast.Cure,{
		head="Theophany Cap +2",body="Theophany Bliaut +3"
	})

	-- Enhancing set with 500 skill
	sets.Midcast.Enhancing = {
		main="Gada",sub="Ammurapi Shield",ammo="Incantor Stone",
		head="Befouled Crown",body="Telchine Chasuble",hands="Inyanga Dastanas +2",legs="Piety pantaloons +3",feet="Ebers Duckbills +2",
		ear1="Andoaa Earring",ear2="Etiolation Earring",ring1="Inyanga Ring",ring2="Gelatinous Ring +1",
		neck="Colossus's Torque",back="Mending Cape"
	}
	
	-- Max enhancing duration set, for when skill doesn't matter.
	sets.Midcast.EnhancingDuration = set_combine(sets.Midcast.Enhancing,{
		head="Telchine Cap",body="Telchine Chasuble",hands="Telchine Gloves",legs="Telchine Braconi",feet="Theophany duckbills +3",
		waist="Embla Sash"
	})

	-- Make sure this set has 500 skill as well.
	sets.Midcast.Barspell = set_combine(sets.Midcast.Enhancing,{
		main="Beneficus",
		head="Ebers Cap +2",body="Ebers Bliaut +2",hands="Ebers Mitts +2",legs="Piety Pantaloons +3"
	})

	sets.Midcast.Regen = set_combine(sets.Midcast.EnhancingDuration,{
		head="Inyanga Tiara +2",body="Piety Briault +3",hands="Ebers Mitts +2",legs="Theophany pantaloons +2",
	})

	sets.Midcast.MAcc = {
		main="Gada",sub="Ammurapi Shield",
		head="Ebers Cap +2",body="Theophany Bliaut +3",hands="Inyanga Dastanas +2",legs="Ebers Pantaloons +2",feet="Theophany duckbills +3",
		ear1="Gwati Earring",ear2="Regal Earring",ring1="Kishar Ring",ring2="Sangoma Ring",
		neck="Sanctity Necklace",waist="Luminary Sash",
	}

	sets.Midcast.Enfeebling = set_combine(sets.Midcast.MAcc,{
	})
	
	sets.Midcast.naSpell = {
		head="Ebers Cap +2",body="Ebers Bliaut +2",hands="Inyanga Dastanas +2",legs="Theophany pantaloons +2",feet="Vanya Clogs",
		ear2="Ebers Earring +1",ring1="Haoma's Ring",ring2="Menelaus's Ring",
		neck="Healing Torque",back={name="Alaunus's Cape",augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','Enmity-10','Phys. dmg. taken-10%'}}
	}

	sets.Midcast["Cursna"] = set_combine(sets.Midcast.naSpell,{})
	sets.Midcast["Erase"] = set_combine(sets.Midcast.naSpell,{neck="Cleric's Torque"})
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
		elseif spell.name:contains('Auspice') then
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
		equip(sets.TP)
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