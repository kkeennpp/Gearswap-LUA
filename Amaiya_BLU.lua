function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 5') -- Change Default Macro Book Here
	send_command('wait 5;input /lockstyleset 6')

	PhysicalSpells = S{
        'Amorphic Spikes','Asuran Claws','Battle Dance','Benthic Typhoon','Bilgestorm','Bloodrake','Bludgeon','Body Slam',
		'Cannonball','Claw Cyclone','Death Scissors','Delta Thrust','Dimensional Death','Disseverment','Empty Thrash','Feather Storm',
		'Foot Kick','Frenetic Rip','Glutinous Dart','Goblin Rush','Grand Slam','Heavy Strike','Helldive','Hydro Shot',
		'Hysteric Barrage','Jet Stream','Mandibular Bite','Paralyzing Triad','Power Attack','Quad. Continuum','Quadrastrike','Ram Charge',
		'Saurian Slide','Screwdriver','Sickle Slash','Sinker Drill','Smite of Rage','Spinal Cleave','Spiral Spin','Sprout Smack',
		'Sub-zero Smash','Sweeping Gouge','Tail Slap','Terror Touch','Thrashing Assault','Tourbillion','Uppercut','Vanity Dive',
		'Vertical Cleave','Whirl of Rage','Wild Oats',
    }

	MagicalSpells = S{
		'Acrid Stream','Amplification','Anvil Lightning','Atra. Libations','Auroral Drape','Blastbomb','Blazing Bound','Blinding Fulgor',
		'Blistering Roar','Bomb Toss','Cesspool','Charged Whisker','Cimicine Discharge','Cold Wave','Crashing Thunder','Cursed Sphere',
		'Dark Orb','Death Ray','Diffusion Ray','Droning Whirlwind','Embalming Earth','Entomb','Evryone. Grudge','Eyes On Me',
		'Foul Waters','Gates of Hades','Hecatomb Wave','Ice Break','Leafstorm','Light of Penance','Maelstrom','Mind Blast',
		'Molting Plumage','Mortal Ray','Mysterious Light','Nectarous Deluge','Palling Salvo','Plasma Charge','Polar Roar',
		'Rail Cannon','Regurgitation','Rending Deluge','Retinal Glare','Sandspray','Scouring Spate','Searing Tempest','Silent Storm',
		'Spectral Floe','Subduction','Tearing Gust','Tem. Upheaval','Tenebral Crush','Thermal Pulse','Thunderbolt','Uproot','Water Bomb',
    }

	BuffingSpells = S{
		'Animating Wail','Barrier Tusk','Battery Charge','Carcharian Verve','Cocoon','Diamondhide','Erratic Flutter','Fantod',
		'Feather Barrier','Harden Shell','Magic Barrier','Memento Mori','Metallic Body','Mighty Guard',"Nature's Meditation",'O. Counterstance',
		'Occultation','Pyric Bulwark','Reactor Cool','Refueling','Regeneration','Saline Coat','Triumphant Roar','Warm-Up',
		'Winds of Promy.','Zephyr Mantle',
    }

	MagicACCSpells = S{
		'1000 Needles','Absolute Terror','Actinic Burst','Awful Eye','Blank Gaze','Blitzstrahl','Blood Drain','Blood Saber',
		'Chaotic Eye','Corrosive Ooze','Cruel Joke','Demoralizing Roar','Digest','Dream Flower','Enervation','Feather Tickle',
		'Filamented Hold','Frightful Roar','Geist Wall','Infrasonics','Jettatura','Lowing','Magic Hammer','MP Drainkiss',
		'Osmosis','Reaving Wind','Sandspin','Sheep Song','Soporific','Sound Blast','Stinking Gas','Temporal Shift','Venom Shell',
		'Voracious Trunk','Yawn','Frypan','Head Butt','Sudden Lunge','Barbed Crescent','Pinecone Bomb','Queasyshroom',
		'Seedspray',
    }

	BlueMagic_Breath = S{
		'Bad Breath','Firespit','Flying Hip Press','Frost Breath','Heat Breath','Magnetite Cloud',
		'Poison Breath','Radiant Breath','Thunder Breath','Wind Breath','Vapor Spray'
    }

	BlueMagic_Healing = S{
        'Exuviation','Healing Breeze','Magic Fruit','Plenilune Embrace','Pollen','Restoral','White Wind','Wild Carrot'
    }
	
	---------------
	-- Idle Sets --
	---------------

	sets.JA = {}

	sets.Idle = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",body="Jhakri Robe +2",hands="Gleti's Gauntlets",legs="Nyame Flanchard",feet="Gleti's Boots",
		ear1="Infused Earring",ear2="Etiolation Earring",ring1="Defending Ring",ring2={name="Stikini Ring +1",bag="wardrobe 1"},
		neck="Warder's Charm +1",waist="Fucho-no-Obi",back={name="Rosmerta's Cape",augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Damage taken-5%'}}
	}

	sets.Idle.Regen = set_combine(sets.Idle,{
		head="Rawhide Mask",legs="Rawhide Trousers",
		ring1={name="Stikini Ring +1",bag="wardrobe 3"},
		neck="Sanctity Necklace"
	})

	sets.Idle.Eva = set_combine(sets.Idle,{
		ammo="Amar Cluster",
        head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear2="Eabani Earring",
		waist="Sveltesse gouriz +1",back={name="Rosmerta's Cape",augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','Evasion+15'}}
	})

	sets.Idle.MVMT = {legs="Carmine Cuisses +1"}

	-------------
	-- TP Sets --
	-------------

	sets.TP = {}

	sets.TP.LowACC = set_combine(sets.TP,{
		ammo="Ginsen",
		head="Dampening Tam",body="Adhemar Jacket +1",hands="Adhemar Wristbands +1",legs="Samnuha Tights",feet="Herculean Boots",
		ear1="Brutal Earring",ear2="Cessance Earring",ring1="Epona's Ring",ring2="Hetairoi Ring",
		neck="Mirage stole +1",waist="Reiki Yotai",back={name="Rosmerta's Cape",augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Damage taken-5%'}}
	})

	sets.TP.HighACC = set_combine(sets.TP.LowACC,{feet="Gleti's Boots",})

	sets.TP.Hybrid = set_combine(sets.TP.LowACC,{
		head="Nyame Helm",body="Ayanmo Corazza +2",hands="Malignance Gloves",legs="Nyame Flanchard",feet="Nyame Sollerets"
	})

	sets.TP.DT = set_combine(sets.TP.LowACC,{
		head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ring1="Defending Ring",
	})

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
		ammo="Sapience Orb",
		head="Carmine Mask +1",body="Luhlaza Jubbah +3",hands="Leyline Gloves",legs="Ayanmo Cosciales +2",feet="Carmine Greaves +1",
		ear1="Enchanter's Earring +1",ear2="Loquacious Earring",ring1="Weatherspoon Ring",ring2="Kishar Ring",
		neck="Voltsurge Torque",waist="Witful Belt",back={name="Rosmerta's Cape",augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Damage taken-5%'}}
	}

	sets.Precast.BLU = set_combine(sets.Precast,{})

	-------------
	-- Midcast --
	-------------

    sets.Midcast = {}

	sets.Midcast.PHY = set_combine(sets.TP,{
		head="Luhlaza Keffiyeh +2",body="Assimilator's Jubbah +3",hands="Nyame Gauntlets",legs="Luhlaza Shalwar +3",feet="Luhlaza Charuqs +3",
	})

	sets.Midcast.MAB = {
		ammo="Ghastly Tathlum +1",
		head="Jhakri Coronal +2",body="Amalric Doublet +1",hands="Amalric Gages +1",legs="Amalric Slops +1",feet="Amalric Nails +1",
		ear1="Regal Earring",ear2="Friomisi Earring",ring1="Metamorph Ring +1",ring2="Shiva Ring +1",
		neck="Sanctity Necklace",waist="Sacro Cord",back={name="Rosmerta's Cape",augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%'}}
	}

	sets.Midcast.MAB.Dark = set_combine(sets.Midcast.MAB,{head="Pixie Hairpin +1",ring1="Archon Ring"})

	sets.Midcast.MAB.SIRD = set_combine(sets.Midcast.MAB,{
		ammo="Staunch Tathlum +1",
		head="Helios Band",legs="Assimilator's Shalwar +2",
		waist="Emphatikos Rope"
	})

	sets.Midcast.Buff = {
		head="Luhlaza Keffiyeh +2",body="Assimilator's Jubbah +3",hands="Rawhide Gloves",legs="Ayanmo Cosciales +2",feet="Luhlaza Charuqs +3",
		ear1="Enchanter Earring +1",ear2="Loquacious Earring",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2={name="Stikini Ring +1",bag="wardrobe 1"},
		neck="Mirage Stole +1",waist="Witful Belt",back="Cornflower Cape"
	}

	sets.Midcast.Buff.SIRD = set_combine(sets.Midcast.Buff,{
		ammo="Staunch Tathlum +1",
		head="Helios Band",hands="Amalric Gages +1",legs="Assimilator's Shalwar +2",feet="Amalric Nails +1",
		waist="Emphatikos Rope",back={name="Rosmerta's Cape",augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%'}}
	})

	sets.Midcast.MACC = {
		ammo="Pemphredo Tathlum",
		head="Assimilator's Keffiyeh +2",body="Luhlaza Jubbah +3",hands="Malignance Gloves",legs="Assimilator's Shalwar +2",feet="Luhlaza Charuqs +3",
		ear1="Regal Earring",ear2="Dignitary's Earring",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2={name="Stikini Ring +1",bag="wardrobe 1"},
		neck="Mirage Stole +1",waist="Luminary Sash",back="Cornflower Cape"
	}

	sets.Midcast.MACC.SIRD = set_combine(sets.Midcast.MACC,{
		ammo="Staunch Tathlum +1",
		head="Helios Band",hands="Amalric Gages +1",legs="Assimilator's Shalwar +2",feet="Amalric Nails +1",
		waist="Emphatikos Rope",back={name="Rosmerta's Cape",augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%'}}
	})

	sets.Midcast.MACC.TH = set_combine(sets.Midcast.MACC,{
		head="Herculean Helm",legs="Volte Hose",feet="Volte Boots",waist="Chaac Belt",ammo="Perfect lucky egg",
		body={name="Herculean Vest",augments={'"Fast Cast"+2','Mag. Acc.+25','"Treasure Hunter"+1','Accuracy+19 Attack+19','Mag. Acc.+14 "Mag.Atk.Bns."+14'}}
	})

	sets.Midcast.HB = {
	}

	sets.Midcast.Heal = {
	}

	sets.Midcast.Enhancing = {
		head="Telchine Cap",body="Telchine Chasuble",hands="Telchine Gloves",legs="Telchine Braconi",feet="Telchine Pigaches",
	}

	sets.Midcast.phx = {
		head="Taeon Chapeau",body="Taeon Tabard",hands="Taeon Gloves",legs="Taeon Tights",feet="Taeon Boots",
		ear1="Andoaa Earring",ear2="Mimir Earring",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2={name="Stikini Ring +1",bag="wardrobe 1"},
		neck="Colossus's Torque",waist="Olympus Sash",back="Fi Follet Cape"
	}

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		ammo="Coiste Bodhar",
		head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Moonshade Earring",ear2="Cessance Earring",ring1="Apate Ring",ring2="Ilabrat Ring",
		neck="Fotia Gorget",waist="Sailfi Belt +1",back={name="Rosmerta's Cape",augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}
	}

	sets.WS["Expiacion"] = set_combine(sets.WS,{
	})

	sets.WS["Savage Blade"] = set_combine(sets.WS,{
		ring1="Metamorph Ring +1",
	})

	sets.WS["Chant du Cygne"] = set_combine(sets.WS,{
		head="Adhemar Bonnet +1",body="Gleti's Cuirass",hands="Gleti's Gauntlets",legs="Gleti's Breeches",feet="Adhemar Gamashes +1",
		ear1="Odr Earring",ear2="Dominance Earring +1",ring1="Epona's Ring",ring2="Hetairoi Ring",
		neck="Mirage stole +1",waist="Fotia Belt",back={name="Rosmerta's Cape",augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}}
	})

	sets.WS["Sanguine Blade"] = set_combine(sets.Midcast.MAB,{
		head="Pixie Hairpin +1",hands="Jhakri Cuffs +2",legs="Luhlaza Shalwar +3",ring1="Archon Ring",
	})

	sets.WS["Flash Nova"] = set_combine(sets.Midcast.MAB,{
		hands="Jhakri Cuffs +2",legs="Luhlaza Shalwar +3",ring1="Weatherspoon Ring",
	})

	sets.WS["Requiescat"] = set_combine(sets.WS,{
		head="Jhakri Coronal +2",body="Jhakri Robe +2",hands="Nyame Gauntlets",legs="Jhakri Slops +2",feet="Jhakri Pigaches +2",
		neck="Fotia Gorget",waist="Fotia Belt"
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
IdleIndex = 1
IdleArray = {'Auto','Evasion'}
cidleset = 'Load Temp'
MeleeMode = false
CPMode = false
LearnMode = false
SIRDMode = false
THMode = false
DynaMode = false
local res = require('resources')

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
	local str = 'IdleMode: \\cs(150,150,255)'..IdleArray[IdleIndex]..'\\cr'
	str = str..'\nAccMode: \\cs(150,150,255)'..AccArray[AccIndex]..'\\cr'
	str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
	str = str..'\nMeleeMode: \\cs(150,150,255)'..tostring(MeleeMode)..'\\cr'
	str = str..'\nLearnMode: \\cs(150,150,255)'..tostring(LearnMode)..'\\cr'
	str = str..'\nSIRDMode: \\cs(150,150,255)'..tostring(SIRDMode)..'\\cr'
	str = str..'\nTHMode: \\cs(150,150,255)'..tostring(THMode)..'\\cr'
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
	end
    updatedisplay()
end
         
function precast(spell,action)
	if sets.JA[spell.name] then
		equipSet = sets.JA[spell.name]
		add_to_chat(122,spell.name .. ' Set')
		equip(equipSet)
	elseif spell.type == "WeaponSkill" then
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
	elseif spell.skill == 'Blue Magic' then
        equip(sets.Precast.BLU)
	elseif spell.type:contains('Magic') or spell.type =='Ninjutsu' then
        equip(sets.Precast)
	end
    updatedisplay()
end

function midcast(spell,action)
	if spell.skill == 'Blue Magic' then
		if PhysicalSpells:contains(spell.english) then
			if THMode then
				equip(sets.Midcast.MACC.TH)
			else
				equip(sets.Midcast.PHY)
			end
		elseif MagicalSpells:contains(spell.english) then
			if SIRDMode then
				equip(sets.Midcast.MAB.SIRD)
			else
				equip(sets.Midcast.MAB)
				if buffactive['Burst Affinity'] then
					add_to_chat(122,'burst found')
					--equip({feet="Hashishin Basmak +1"})
				end
			end
		elseif BuffingSpells:contains(spell.english) then
			if SIRDMode then
				equip(sets.Midcast.Buff.SIRD)
			else
				equip(sets.Midcast.Buff)
			end
		elseif MagicACCSpells:contains(spell.english) then
			if SIRDMode then
				equip(sets.Midcast.MACC.SIRD)
			elseif THMode then
				equip(sets.Midcast.MACC.TH)
			else
				equip(sets.Midcast.MACC)
			end
		else
			equip(sets.Midcast.PHY)
		end
	elseif spell.skill == "Enhancing Magic" then
        if spell.name:match('Protect') or spell.name:match('Shell') then
			equip(sets.Midcast.Enhancing)
            equip({ring1="Sheltered Ring"})
		elseif spell.name:match('Phalanx') then
			equip(sets.Midcast.phx)
		else
			equip(sets.Midcast.Enhancing)
		end
	end

	if buffactive['Diffusion'] then
		equip({feet="Luhlaza Charuqs +3"})
	elseif buffactive['addendum: white'] or buffactive['light arts'] then
		if spell.type == 'WhiteMagic' then
			equip(sets.Precast.Grimoire)
		end
	end
	
    if spell.element == world.weather_element then
        equip({waist="Hachirin-no-Obi"})
    end
    updatedisplay()
end

function aftercast(spell,action)
	if midaction() then
        return
    end

	if player.status == 'Engaged' then
		equipSet = sets.TP
		if AccArray[AccIndex] == 'Hybrid' then
			equipSet = equipSet.Hybrid
			cidleset = AccArray[AccIndex] .. ' Set'
		elseif AccArray[AccIndex] == 'HighACC' then
			equipSet = equipSet.HighACC
			cidleset = AccArray[AccIndex] .. ' Set'
		elseif IdleArray[IdleIndex] == 'Evasion' then
			equipSet = sets.Idle.Eva
			cidleset = IdleArray[IdleIndex] .. ' Set'
		else
			equipSet = equipSet.LowACC
			cidleset = AccArray[AccIndex] .. ' Set'
		end
		equip(equipSet)
	else
		if IdleArray[IdleIndex] == 'Auto' then
			if player.hpp > 80 then
				equip(sets.Idle.Regen)
				cidleset = 'Regen Idle'
			else
				equip(sets.Idle)
				cidleset = 'DT Idle'
			end
		elseif IdleArray[IdleIndex] == 'Evasion' then
			equip(sets.Idle.Eva)
			cidleset = 'Evasion Idle'
		end
	end
    updatedisplay()
end
 
function status_change(new,old)
    if new == 'Resting' then
    else
        aftercast()
    end
    updatedisplay()
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command)
function self_command(command)
	if command:lower() == 'acc' then -- Accuracy Level Toggle
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
		aftercast()
	elseif command:lower() == 'idle' then
		IdleIndex = (IdleIndex % #IdleArray) + 1
		add_to_chat(158,'Idle Mode: ' .. IdleArray[IdleIndex])
		aftercast()
	elseif command:lower() == 'dt' then -- Hybrid Accuracy Level
		AccIndex = 3
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
		cidleset = 'Max DT'
	elseif command:lower() == 'lacc' then -- Low Accuracy Level
		AccIndex = 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
	elseif command:lower() == 'melee' then
		if MeleeMode then
			MeleeMode = false
			if not DynaMode then
				enable('main','sub','ranged')
			end
			windower.add_to_chat(8,'----- Weapons Unlocked, WILL LOSE TP -----')
		else
			MeleeMode = true
			disable('main','sub','ranged')
			windower.add_to_chat(8,'----- Weapons Locked, WILL NOT LOSE TP -----')
		end
    elseif command:lower() == 'cp' then
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
    elseif command:lower() == 'dyna' then
        if DynaMode then
            DynaMode = false
            enable('neck')
            windower.add_to_chat(8,'----- Dynamis Mode Disabled -----')
        else
            DynaMode = true
            disable('neck')
            windower.add_to_chat(8,'----- Dynamis Mode Enabled -----')
        end
    elseif command:lower() == 'learn' then
        if LearnMode then
            LearnMode = false
            enable('hands')
            windower.add_to_chat(8,'----- Learning Mode Disabled -----')
        else
            LearnMode = true
			equip({hands="Assimilator's Bazubands +1"})
            disable('hands')
            windower.add_to_chat(8,'----- Learning Mode Enabled -----')
        end
    elseif command:lower() == 'sird' then
        if SIRDMode then
            SIRDMode = false
            windower.add_to_chat(158,'----- SIRD Mode Disabled -----')
        else
            SIRDMode = true
            windower.add_to_chat(158,'----- SIRD Mode Enabled -----')
        end
    elseif command:lower() == 'th' then
        if THMode then
            THMode = false
            windower.add_to_chat(158,'----- TH Mode Disabled -----')
        else
            THMode = true
            windower.add_to_chat(158,'----- TH Mode Enabled -----')
        end
	elseif command:lower() == 'sw' then
		equip({main="Sakpata's Sword",sub="Bunzi's Rod",})
    elseif command:lower() == 'update' then
		aftercast()
	end
    updatedisplay()
end