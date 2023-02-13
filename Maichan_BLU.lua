function get_sets()
	AccIndex = 1
	AccArray = {"LowACC","HighACC"}
	send_command('input /macro book 4;wait .1;input /macro set 5') -- Change Default Macro Book Here

	PhysicalSpells = S {
        'Asuran Claws','Bilgestorm','Bludgeon','Body Slam','Feather Storm','Mandibular Bite','Queasyshroom',
        'Power Attack','Ram Charge','Saurian Slide','Screwdriver','Sickle Slash','Smite of Rage',
        'Spinal Cleave','Spiral Spin','Sweeping Gouge','Terror Touch','Battle Dance','Bloodrake',
        'Death Scissors','Dimensional Death','Empty Thrash','Quadrastrike','Uppercut','Tourbillion',
        'Thrashing Assault','Vertical Cleave','Whirl of Rage','Amorphic Spikes','Barbed Crescent',
        'Claw Cyclone','Disseverment','Foot Kick','Frenetic Rip','Goblin Rush','Hysteric Barrage',
        'Paralyzing Triad','Seedspray','Sinker Drill','Vanity Dive','Cannonball','Delta Thrust',
        'Glutinous Dart','Grand Slam','Quad. Continuum','Sprout Smack','Benthic Typhoon','Helldive',
        'Hydro Shot','Jet Stream','Pinecone Bomb','Wild Oats','Heavy Strike'
    }

	MagicalSpells = S {
        'Acrid Stream','Anvil Lightning','Crashing Thunder','Charged Whisker','Droning Whirlwind',
        'Firespit','Foul Waters','Gates of Hades','Leafstorm','Molting Plumage','Magic Barrier','Nectarous Deluge',
        'Polar Roar','Regurgitation','Rending Deluge','Scouring Spate','Searing Tempest','Silent Storm',
        'Spectral Floe','Subduction','Sudden Lunge','Tem. Upheaval','Thermal Pulse','Thunderbolt','Uproot',
        'Water Bomb','Atra. Libations','Blood Saber','Dark Orb','Death Ray','Eyes On Me','Blazing Bound',
        'Evryone. Grudge','Palling Salvo','Tenebral Crush','Blinding Fulgor','Diffusion Ray','Ice Break',
        'Magic Hammer','Rail Cannon','Retinal Glare','Embalming Earth','Entomb','Sandspin','Vapor Spray',
    }

	BlueMagic_Breath = S {
        'Bad Breath','Flying Hip Press','Final Sting','Frost Breath','Heat Breath','Magnetite Cloud',
        'Poison Breath','Radiant Breath','Self Destruct','Thunder Breath','Vapor Spray','Wind Breath'
    }

	BlueMagic_Healing = S {
        'Healing Breeze','Magic Fruit','Plenilune Embrace','Pollen','Restoral','Wild Carrot'
    }
	
	---------------
	-- Idle Sets --
	---------------

	sets.JA = {}

	sets.Idle = {
		body="Ixion Cloak",hands="Morrigan's Cuffs",legs="Crimson Cuisses",feet="Homam Gambieras",
		ear1="Ethereal Earring",ear2="Brutal Earring",ring1="Defending Ring",ring2="Dark Ring",
		neck="Orochi Nodowa",waist="Ninurta's Sash",back="Cuchulain's Mantle"
	}

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {}

	-------------
	-- TP Sets --
	-------------

	sets.TP = {
		head="Walahra Turban",body="Mirage Jubbah +1",hands="Dusk Gloves +1",legs="Homam Cosciales",feet="Homam Gambieras",
		ear1="Suppanomimi",ear2="Brutal Earring",ring1="Mars's Ring",ring2="Toreador's Ring",
		neck="Fortitude Torque",waist="Ninurta's Sash",back="Aesir Mantle"
	}

	sets.TP.LowACC = set_combine(sets.TP,{})
	sets.TP.HighACC = set_combine(sets.TP,{})
	sets.TP.DT = set_combine(sets.TP,{})

	-------------
	-- Midcast --
	-------------

    sets.Midcast = {}

	sets.Midcast.MAB = {
		head="Morrigan's Coronal",body="Morrigan's Robe",hands="Morrigan's Cuffs",legs="Morrigan's Slops",feet="Yigit Crackows",
		ear1="Moldavite Earring",ear2="Novio Earring",ring1="Diamond Ring",ring2="Toreador's Ring",
		neck="Uggalepih Pendant",waist="Salire Belt",back="Hecate's Cape"
	}

	sets.Midcast.PHY = {
		head="Gnadbhod's Helm",body="Morrigan's Robe",hands="Alkyoneus's Bracelets",legs="Mirage Shalwar",feet="Setanta's Ledelsens",
		ear1="Triumph Earring +1",ear2="Brutal Earring",ring1="Strigoi Ring",ring2="Rajas Ring",
		neck="Ire Torque +1",waist="Warwolf Belt",back="Cerberus Mantle +1"
	}

	sets.Midcast.HB = {
		head="Saurian Helm",body="Magus Jubbah",hands="Alkyoneus's Bracelets",legs="Homam Cosciales",feet="Llwyd's Clogs",
		ear1="Bloodbead Earring",ear2="Cassie Earring",ring1="Bomb Queen Ring",ring2="Toreador's Ring",
		neck="Ritter Gorget",waist="Jungle Sash",back="Gigant Mantle"
	}

	sets.Midcast.MND = {
		head="Morrigan's Coronal",body="Magus Jubbah",hands="Alkyoneus's Bracelets",legs="Homam Cosciales",feet="Llwyd's Clogs",
		ear1="Bloodbead Earring",ear2="Cassie Earring",ring1="Bomb Queen Ring",ring2="Toreador's Ring",
		neck="Ritter Gorget",waist="Jungle Sash",back="Gigant Mantle"
	}

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		head="Gnadbhod's Helm",body="Morrigan's Robe",hands="Alkyoneus's Bracelets",legs="Mirage Shalwar",feet="Setanta's Ledelsens",
		ear1="Triumph Earring +1",ear2="Brutal Earring",ring1="Strigoi Ring",ring2="Rajas Ring",
		neck="Ire Torque +1",waist="Warwolf Belt",back="Cerberus Mantle +1"
	}

	sets.WS["Expiacion"] = set_combine(sets.WS,{
	})

	sets.WS["Savage Blade"] = set_combine(sets.WS,{
	})

	sets.WS["Sanguine Blade"] = set_combine(sets.WS,{
		hands="Morrigan's Cuffs",legs="Morrigan's Slops",feet="Yigit Crackows",
		ear1="Suppanomimi",ear2="Novio Earring",ring1="Diamond Ring",ring2="Toreador's Ring",
		neck="Fortitude Torque",waist="Salire Belt",back="Hecate's Cape"
	})

	---------------
	-- Aftercast --
	---------------

    sets.aftercast = {}
end
         
function pretarget(spell,action)
	if (player.status == 'Engaged' and (spell.type == "WeaponSkill" and spell.target.distance > 5)) then -- Cancel WS If You Are Out Of Range
		cancel_spell()
		add_to_chat(123, spell.name..' Canceled: [Out of Range]')
		return
	end
end

function job_buff_change(buff,gain)
    if buff:lower() == 'terror' or buff:lower() == 'petrification' or buff:lower() == 'sleep' or buff:lower() == 'stun' then
        if gain then
            equip(sets.TP.DT)
			if buff:lower() == 'sleep' then
				if gain and player.hp > 120 and player.status == "Engaged" then -- Equip Berserker's Torque / frenzy When You Are Asleep
					equip({neck="Berserker's Torque"})
					add_to_chat(123,'Berserkers Torque equiped')
				end
			end
        elseif not gain then 
            aftercast(spell,action)
        end
    elseif buff == "doom" then
		add_to_chat(123,'You are DOOMED, beg for your life mortal!')
	end
end
         
function precast(spell,action)
	if sets.JA[spell.name] then
		equipSet = sets.JA[spell.name]
		add_to_chat(122,spell.name .. ' Set')
		equip(equipSet)
	elseif spell.type == "WeaponSkill" then
		equipSet = sets.WS
		if equipSet[spell.name] then
			equipSet = equipSet[spell.name]
			add_to_chat(122,spell.name .. ' Set')
		end
		equip(equipSet)
		if world.time >= 17*60 or world.time < 7*60 then -- Dusk to Dawn time
			-- equip({ear2="Lugra Earring"})
		end
	elseif spell.skill == 'Blue Magic' then
        equip(sets.Precast)
	end
end

function midcast(spell,action)
	if spell.skill == 'Blue Magic' then
		if PhysicalSpells:contains(spell.english) then
			equip(sets.Midcast.PHY)
		elseif MagicalSpells:contains(spell.english) then
			equip(sets.Midcast.MAB)
		elseif BlueMagic_Healing:contains(spell.english) then
			equip(sets.Midcast.MND)
		elseif BlueMagic_Breath:contains(spell.english) then
			equip(sets.Midcast.HB)
		else
			equip(sets.Midcast.PHY)
		end
	end
end

function aftercast(spell,action)
	if midaction() then
        return
    end

	if player.status == 'Engaged' then
		equipSet = sets.TP
		if AccArray[AccIndex] == 'HighACC' then
			equipSet = equipSet[AccArray[AccIndex]]
			add_to_chat(122,AccArray[AccIndex] .. ' Set')
		else
			equipSet = equipSet[AccArray[AccIndex]]
			add_to_chat(122,AccArray[AccIndex] .. ' Set')
		end
		equip(equipSet)
	else
		equip(sets.Idle)
		add_to_chat(122,'Idle Set')
	end
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
	elseif command == 'ga' then
		equip({main="Bravura",sub="Bloodrain Strap"})
	elseif command == 'gs' then
		equip({main="Ragnarok",sub="Bloodrain Strap"})
	end
end