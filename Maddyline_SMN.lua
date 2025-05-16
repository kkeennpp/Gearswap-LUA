function get_sets()
 
	send_command('input /macro book 7;wait .1;input /macro set 1') -- Change Default Macro Book Here --
	send_command('wait 5;input /lockstyleset 10')
	 
	bp_physical=S{'Punch','Rock Throw','Barracuda Dive','Claw','Axe Kick','Shock Strike','Camisado','Regal Scratch','Poison Nails',
		'Moonlit Charge','Crescent Fang','Rock Buster','Tail Whip','Double Punch','Megalith Throw','Double Slap','Eclipse Bite',
		'Mountain Buster','Spinning Dive','Predator Claws','Rush','Chaotic Strike','Crag Throw','Volt Strike','Welt','Roundhouse','Hysteric Assault'}

	bp_hybrid=S{'Burning Strike','Flaming Crush'}

	bp_magical=S{'Inferno','Earthen Fury','Tidal Wave','Aerial Blast','Diamond Dust','Judgment Bolt','Searing Light','Howling Moon',
		'Ruinous Omen','Fire II','Stone II','Water II','Aero II','Blizzard II','Thunder II','Thunderspark','Somnolence','Meteorite',
		'Fire IV','Stone IV','Water IV','Aero IV','Blizzard IV','Thunder IV','Nether Blast','Meteor Strike','Geocrush','Grand Fall',
		'Wind Blade','Heavenly Strike','Thunderstorm','Level ? Holy','Holy Mist','Lunar Bay','Night Terror','Conflag Strike','Sonic Buffet',
        'Tornado II','Clarsach Call'}

	bp_debuff=S{'Lunar Cry','Mewing Lullaby','Nightmare','Lunar Roar','Slowga','Ultimate Terror','Sleepga','Eerie Eye','Tidal Roar','Diamond Storm','Shock Squall','Pavor Nocturnus',
        'Bitter Elegy','Lunatic Voice'}

	bp_buff=S{'Shining Ruby','Frost Armor','Rolling Thunder','Crimson Howl','Lightning Armor','Ecliptic Growl','Hastega','Noctoshield',
		'Ecliptic Howl','Dream Shroud','Earthen Armor','Fleet Wind','Inferno Howl','Soothing Ruby','Heavenward Howl','Soothing Current','Hastega II','Crystal Blessing','Katabatic Blades',
        'Chinook','Wind’s Blessing'}

	bp_other=S{'Healing Ruby','Raise II','Aerial Armor','Reraise II','Whispering Wind','Glittering Ruby','Earthen Ward','Spring Water','Healing Ruby II'}

	AvatarList=S{'Shiva','Ramuh','Garuda','Leviathan','Diabolos','Titan','Fenrir','Ifrit','Carbuncle','Fire Spirit','Air Spirit','Ice Spirit','Thunder Spirit',
		'Light Spirit','Dark Spirit','Earth Spirit','Water Spirit','Cait Sith','Siren','Alexander','Odin','Atomos'}

	spirit_element={Fire='Fire Spirit',Earth='Earth Spirit',Water='Water Spirit',Wind='Air Spirit',Ice='Ice Spirit',Lightning='Thunder Spirit',Light='Light Spirit',Dark='Dark Spirit'}

    sets.me = {}
    sets.Idle = {}
    sets.avatar = {}

    sets.me.idle = {
        main="Daybreak",sub="Genbu's Shield",ammo="Sancus Sachet +1",
        head="Beckoner's Horn +2",body="Shomonjijoe +1",hands="Inyanga Dastanas +2",legs="Inyanga Shalwar +2",feet="Baayami Sabots",
        ear1="Infused earring",ear2="Cath Palug Earring",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2="Inyanga Ring",
        neck="Sanctity Necklace",waist="Fucho-no-obi",back="Conveyance Cape"
    }

    sets.me.idle.dt = {
        main="Malignance Pole",sub="Mensch Strap +1",ammo="Sancus Sachet +1",
        head="Beckoner's Horn +2",body="Inyanga Jubbah +2",hands="Inyanga Dastanas +2",legs="Inyanga Shalwar +2",feet="Inyanga Crackows +2",
        ear1="Etiolation Earring",ear2="Cath Palug Earring",ring1="Cath Palug Ring",ring2="Inyanga Ring",
        neck="Loricate Torque +1",waist="Fucho-no-obi",back="Solemnity Cape"
    }

    sets.me.resting = set_combine(sets.me.idle,{
        main="Chatoyant Staff",sub="Enki Strap",
		body="Chelona Blazer",
		neck="Eidolon Pendant +1"
    })

	sets.Idle.MVMT = {feet="Herald's Gaiters"}

    --------------------------
    -- Perpetuation Related --
    --------------------------

    sets.avatar.perp = {
        main="Gridarvor",sub="Elan Strap +1",ammo="Sancus Sachet +1",
        head="Beckoner's Horn +2",body="Glyphic Doublet +3",hands="Glyphic Bracers +3",legs="Assiduity Pants +1",feet="Baayami Sabots",
        ear1="Enmerkar Earring",ear2="Cath Palug Earring",ring1="Cath Palug Ring",ring2="Varar Ring +1",
        neck="Caller's Pendant",waist="Klouskap Sash",back={name="Campestres's Cape",augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Haste+10',}}
    }
	
    sets.avatar.perp.haste = set_combine(sets.avatar.perp,{
        main="Gridarvor",sub="Elan Strap +1",ammo="Sancus Sachet +1",
        head="Beckoner's Horn +2",body="Glyphic Doublet +3",hands="Glyphic Bracers +3",legs="Assiduity Pants +1",feet="Baayami Sabots",
        ear1="Enmerkar Earring",ear2="Cath Palug Earring",ring1="Cath Palug Ring",ring2="Varar Ring +1",
        neck="Shulmanu Collar",waist="Klouskap Sash",back={name="Campestres's Cape",augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Haste+10',}}
    })
	
    sets.avatar.perp.carby = set_combine(sets.avatar.perp,{hands="Asteria Mitts +1"})
    sets.avatar.perp.cait = set_combine(sets.avatar.perp,{hands="Lamassu Mitts +1"})

    -------------------------------------
    -- Summoning Skill and Blood Pacts --
    -------------------------------------

    sets.avatar.skill = {
        main="Espiritus",sub="Vox Grip",ammo="Sancus Sachet +1",
        head="Beckoner's Horn +2",body="Baayami Robe",hands="Baayami Cuffs",legs="Baayami Slops",feet="Baayami Sabots",
        ear1="Andoaa Earring",ear2="Cath Palug Earring",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2="Evoker's Ring",
        neck="Caller's Pendant",waist="Lucidity Sash",back="Conveyance Cape"
    }
     
    ----------------------------
    -- Individual Blood Pacts --
    ----------------------------

    sets.avatar.atk = set_combine(sets.avatar.skill,{
        main="Gridarvor",sub="Elan Strap +1",ammo="Sancus Sachet +1",
        head="Helios Band",body="Glyphic Doublet +3",hands="Convoker's bracers +3",legs="Apogee Slacks +1",feet="Helios boots",
        ear1="Lugalbanda Earring",ear2="Kyrene's Earring",ring1="Cath Palug Ring",ring2={name="Varar Ring +1",bag="wardrobe 1"},
        neck="Summoner's Collar +1",waist="Incarnation Sash",back={name="Campestres's Cape",augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Haste+10',}}
    })
    sets.avatar.atk.acc = set_combine(sets.avatar.atk,{
        head="Apogee Crown +1",body="Convoker's Doublet +3",feet="Convoker's Pigaches +3"
    })

    sets.avatar.mab = set_combine(sets.avatar.skill,{
        main="Grioavolr",sub="Elan Strap +1",ammo="Sancus Sachet +1",
        head="Cath Palug crown",body="Convoker's Doublet +3",hands={name="Merlinic Dastanas",augments={'Blood Pact Dmg.+8','Pet: STR+8','Pet: "Mag.Atk.Bns."+12',}},legs="Apogee Slacks +1",feet="Apogee Pumps +1",
        ear1="Lugalbanda Earring",ear2="Gelos Earring",ring1={name="Varar Ring +1",bag="wardrobe 3"},ring2={name="Varar Ring +1",bag="wardrobe 1"},
        neck="Summoner's Collar +1",waist="Regal Belt",back={name="Campestres's Cape",augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10',}}
    })
    sets.avatar.mab.acc = set_combine(sets.avatar.mab,{
        body="Convoker's Doublet +3",hands="Apogee Mitts +1",feet="Convoker's Pigaches +3",
        ear2="Kyrene's Earring",
        back={name="Campestres's Cape",augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Haste+10',}}
    })

    sets.avatar.hybrid = set_combine(sets.avatar.skill,{
        main="Grioavolr",sub="Elan Strap +1",ammo="Sancus Sachet +1",
        head="Cath Palug crown",body="Convoker's Doublet +3",hands={name="Merlinic Dastanas",augments={'Blood Pact Dmg.+8','Pet: STR+8','Pet: "Mag.Atk.Bns."+12',}},legs="Apogee Slacks +1",feet="Apogee Pumps +1",
        ear1="Lugalbanda Earring",ear2="Gelos Earring",ring1={name="Varar Ring +1",bag="wardrobe 3"},ring2={name="Varar Ring +1",bag="wardrobe 1"},
        neck="Summoner's Collar +1",waist="Regal Belt",back={name="Campestres's Cape",augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Magic Damage+10',}}
    })
    sets.avatar.hybrid.acc = set_combine(sets.avatar.hybrid,{
        hands="Convoker's bracers +3",feet="Convoker's Pigaches +3",
        ear2="Kyrene's Earring"
    })

    sets.avatar.siphon = set_combine(sets.avatar.skill,{
        ammo="Esper Stone +1",
		head="Telchine Cap",body="Telchine Chasuble",hands="Telchine Gloves",legs="Telchine Braconi",feet="Beckoner's Pigaches +1",
		back="Conveyance Cape"
    })

    ------------------
    -- Casting Sets --
    ------------------

    sets.precast = {}
    sets.midcast = {}
    sets.aftercast = {}

    -------------
    -- Precast --
    -------------

    sets.precast.casting = {
		main="Oranyan",sub="Vivid Strap",
		head="Nahtirah Hat",body="Inyanga Jubbah +2",legs="Lengo Pants",
		ear1="Loquacious Earring",ear2="Malignance Earring",ring1="Kishar Ring",ring2="Prolix Ring",
		neck="Voltsurge Torque",waist="Embla Sash",back="Fi Follet Cape +1"
    }

    sets.precast.summoning = set_combine(sets.precast.casting,{
        body="Baayami Robe",
    })

    sets.precast.cure = set_combine(sets.precast.casting,{
		feet=="Vanya Clogs",
		back="Pahtli Cape"
    })

    ------------------------
    -- Ability Precasting --
    ------------------------

    sets.precast.bp = set_combine(sets.avatar.skill,{})

    -------------
    -- Midcast --
    -------------

    sets.midcast.macc = {
    }
	
	sets.midcast.enhancing = {
		main="Daybreak",sub="Ammurapi Shield",
		head="Telchine Cap",body="Telchine Chasuble",hands="Telchine Gloves",legs="Telchine Braconi",
		neck="Colossus's Torque",waist="Embla Sash",back="Fi Follet Cape +1"
	}

    sets.midcast.cure = {
        main="Daybreak",sub="Sors Shield",ammo="Sancus Sachet +1",
		head="Inyanga Tiara +2",y="Inyanga Jubbah +2",hands="Inyanga Dastanas +2",legs="Lengo Pants",feet=="Vanya Clogs",
		ear1="Beatific Earring",ear2="Mendicant's Earring",ring1="Sirona's Ring",ring2="Lebeche Ring",
		back="Tempered Cape +1"
    }

	---------------
	-- Aftercast --
	---------------

    sets.aftercast = {}
end

--------------------------------------------------------------------------------------------------------------
-- HUD STUFF
--------------------------------------------------------------------------------------------------------------

cidleset = 'Load Temp'
autobp = false
HighAcc = false
CPMode = false
DynaMode = false
FarmMode = false

function setup_hud()
    job_property = {}
    job_info = {}
    job_info.box={
        pos={x=2725,y=1306},
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
	local str = 'CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
	str = str..'\nAutoBP: \\cs(150,150,255)'..tostring(autobp)..'\\cr'
	str = str..'\nHighAcc: \\cs(150,150,255)'..tostring(HighAcc)..'\\cr'
	str = str..'\nDynaMode: \\cs(150,150,255)'..tostring(DynaMode)..'\\cr'
	str = str..'\nFarmMode: \\cs(150,150,255)'..tostring(FarmMode)..'\\cr'
	str = str..'\nCPMode: \\cs(150,150,255)'..tostring(CPMode)..'\\cr'

    local info = {}
    info.modestates = str

    window:update(info)
end

setup_hud()

--------------------------------------------------------------------------------------------------------------
--End Hud Stuff
--------------------------------------------------------------------------------------------------------------

function precast(spell)
    if midaction() or pet_midaction() then
		return
    end

    if (spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard') and not (buffactive['Astral Conduit'] or buffactive['Apogee']) then
        equip(sets.precast.bp)
    elseif (spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard') and (buffactive['Astral Conduit'] or buffactive['Apogee']) then
        if bp_physical:contains(spell.name) then
            if HighAcc then
			    equip(sets.avatar.atk.acc)
            else
			    equip(sets.avatar.atk)
            end
        elseif bp_hybrid:contains(spell.name) then
            equip(sets.avatar.hybrid)
        elseif bp_magical:contains(spell.name) then
            equip(sets.avatar.mab)
            if pet.tp < 1400 then
                equip({legs="Enticer's pants"})
            end
        end
    elseif spell.name == 'Atomos' then
        equip(sets.avatar.skill)
		add_to_chat(122,"SMN Skill Set")
    elseif spell.name == 'Alexander' then
        equip(sets.avatar.skill)
		add_to_chat(122,"SMN Skill Set")
    elseif spell.name == 'Odin' then
        equip(sets.avatar.skill)
		add_to_chat(122,"SMN Skill Set")
    elseif spell.type == 'SummonerPact' then
        equip(sets.precast.summoning)
    elseif spell.name == 'Elemental Siphon' then
        equip(sets.avatar.siphon)
		add_to_chat(122,"Elemental Siphon Set")
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
		if spell.name == 'Stoneskin' then
            windower.ffxi.cancel_buff(37)--[[Cancels stoneskin, not delayed incase you get a Quick Cast]]
            equip(sets.precast.casting)
        elseif spell.name == 'Sneak' and spell.target.type == 'SELF' then
            windower.ffxi.cancel_buff(71)--[[Cancels Sneak]]
            equip(sets.precast.casting)
        elseif spell.name:match('Cure') or spell.name:match('Cura') then
            equip(sets.precast.cure)
        else
            equip(sets.precast.casting)
        end
    end

	if FarmMode then
		if spell.type == 'BloodPactRage' and player.mpp < 22 then
			cancel_spell()
			add_to_chat(123, spell.name..' Canceled: Insufficient MP')
			idle(pet)
		end
	end
end

function midcast(spell)
    if spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.name:match('Cure') or spell.name:match('Cura') then
            equip(sets.midcast.cure)
			add_to_chat(122,"Cure Potency Set")
	    elseif spell.skill == "Enhancing Magic" then
			equip(sets.midcast.enhancing)
			add_to_chat(122,"Enhancing Magic Set")
	    elseif spell.skill == "Summoning Magic" then
			equip(sets.midcast.summoning)
			add_to_chat(122,"Summoning Magic Set")
        else
            equip(sets.midcast.macc)
			add_to_chat(122,"Magic ACC Set")
        end
    end
end

function aftercast(spell)
    if midaction() or pet_midaction() then
		return
    end

    if spell and (not spell.type or not string.find(spell.type,'BloodPact') and not AvatarList:contains(spell.name) or spell.interrupted) then
        idle(pet)
    end
    updatedisplay()
end

function pet_midcast(spell)
    if (spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard') then
        if bp_physical:contains(spell.name) then
            if HighAcc then
			    equip(sets.avatar.atk.acc)
            else
			    equip(sets.avatar.atk)
            end
			add_to_chat(122,"Physical Damage Set")
			add_to_chat(122,'<<<< ' .. spell.name .. ' >>>>')
        elseif bp_hybrid:contains(spell.name) then
            if HighAcc then
                equip(sets.avatar.hybrid.acc)
            else
                equip(sets.avatar.hybrid)
            end
			add_to_chat(122,"Hybrid Damage Set")
			add_to_chat(122,'<<<< ' .. spell.name .. ' >>>>')
        elseif bp_magical:contains(spell.name) then
            equip(sets.avatar.mab)
            if pet.tp < 1400 then
                equip({legs="Enticer's pants"})
            end
			add_to_chat(122,"Magic Damage Set")
			add_to_chat(122,'<<<< ' .. spell.name .. ' >>>>')
        elseif bp_debuff:contains(spell.name) then
            equip(sets.avatar.skill)
			add_to_chat(122,"Debuff Set")
			add_to_chat(122,'<<<< ' .. spell.name .. ' >>>>')
        elseif bp_buff:contains(spell.name) then
            equip(sets.avatar.skill)
			add_to_chat(122,"Buff Set")
			add_to_chat(122,'<<<< ' .. spell.name .. ' >>>>')
        elseif bp_other:contains(spell.name) then
            equip(sets.avatar.skill)
			add_to_chat(122,"SMN Skill Set")
			add_to_chat(122,'<<<< ' .. spell.name .. ' >>>>')
        elseif spell.name == 'Perfect Defense' then
            equip(sets.avatar.skill)
			add_to_chat(122,"SMN Skill Set")
			add_to_chat(122,'<<<< ' .. spell.name .. ' >>>>')
        else
            equip(sets.avatar.skill)
			add_to_chat(122,"SMN Skill Set")
			add_to_chat(122,'<<<< ' .. spell.name .. ' >>>>')
        end
	equip(equipSet)
    end
end

function pet_aftercast(spell)
    if (buffactive['Apogee'] or buffactive['Astral Conduit']) and autobp then
        if player.mpp < 12 then
            send_command('input /ja convert <me>')
        else
            send_command('input /pet "%s" <t>':format(spell.name))
        end
        return
    end
	idle(pet)
end

function idle(pet)
    if pet.isvalid then
		if pet.name == 'Cait Sith' then
			equip(sets.avatar.perp.cait)
			cidleset = 'Cait Perp Set'
		elseif pet.name == 'Carbuncle' then
			equip(sets.avatar.perp.carby)
			cidleset = 'Carby Perp Set'
		elseif pet.name == 'Alexander' then
			equip(sets.avatar.skill)
			cidleset = 'SMN Skill Set'
		else
			equip(sets.avatar.perp)
			cidleset = 'Perpetuation Set'
		end
	elseif not pet.isvalid then
		if FarmMode then
			--send_command('input /ma "Ifrit" <me>;')
			--send_command('input /ma "Diabolos" <me>;')
			--send_command('input /ma "Garuda" <me>;')
			send_command('input /ma "Carbuncle" <me>;')
		end

		if player.mpp < 50 then
			equip(set_combine(sets.me.idle,{waist="Fucho-no-Obi"}))
			cidleset = 'Obi Idle Set'
		elseif player.hpp < 70 then
			equip(sets.me.idle.dt)
			cidleset = 'DT Idle Set'
		else
			equip(sets.me.idle)
			cidleset = 'Base Idle Set'
		end
    end
    updatedisplay()
end

function status_change(new,old)
	if new == 'Resting' then
        equip(sets.me.resting)
		cidleset = 'Resting MP Set'
    else
        idle(pet)
    end
    updatedisplay()
end

function pet_change(pet,gain)
    idle(pet)
end

function self_command(command)
    if command == 'auto' then
        -- //gs c auto will toggle auto blood pacts on and off. Auto blood pact will make your GS repeat BPs under Apogee or Conduit
        -- And by repeat I mean repeat. If Conduit is up, it will SPAM the BP until Conduit is down
        if autobp then
            autobp = false
            windower.add_to_chat(8,'----- Auto BP mode Disabled -----')
        else
            autobp = true
            windower.add_to_chat(8,'----- Auto BP mode Enabled -----')
        end
    elseif command == 'acc' then
        if HighAcc then
            HighAcc = false
            windower.add_to_chat(8,'----- High Acc Mode Disabled -----')
        else
            HighAcc = true
            windower.add_to_chat(8,'----- High Acc Mode Enabled -----')
        end
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
    elseif command == 'farm' then
        if FarmMode then
            FarmMode = false
            windower.add_to_chat(8,'----- Avatar AutoSummon Mode Disabled -----')
        else
            FarmMode = true
            windower.add_to_chat(8,'----- Avatar AutoSummon Mode Enabled -----')
        end
    elseif command == 'prp' then
        idle(pet)
    elseif command == 'update' then
		idle(pet)
    end
    updatedisplay()
end