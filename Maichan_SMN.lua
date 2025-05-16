function get_sets()
 
	send_command('input /macro book 7;wait .1;input /macro set 1')
	send_command('wait 5;input /lockstyleset 5')
	 
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
        main="Bahamut's Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Wivre Hairpin",body="Marduk's Jubbah",hands="Marduk's Dastanas",legs="Marduk's Shalwar",feet="Marduk's Crackows",
        --head="Wivre Hairpin",body="Marduk's Jubbah",hands="Marduk's Dastanas",legs="Stearc Subligar",feet="Marduk's Crackows",
        ear1="Loquacious Earring",ear2="Astral Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Morgana's Choker",waist="Hierarch Belt",back="Astute Cape"
    }

    sets.me.resting = {
        main="Chatoyant Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Mirror Tiara",body="Yigit Gomlek",hands="Oracle's Gloves",legs="Yigit Seraweels",feet="Avocat Pigaches",
        ear1="Loquacious Earring",ear2="Astral Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Beak Necklace +1",waist="Hierarch Belt",back="Astute Cape"
    }

	sets.Idle.MVMT = {feet="Herald's Gaiters"}

    --------------------------
    -- Perpetuation Related --
    --------------------------

    sets.avatar.perp = {
        main="Bahamut's Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Wivre Hairpin",body="Penance Robe",hands="Nashira Gages",legs="Evoker's Spats +1",feet="Evoker's Pigaches +1",
        --head="Wivre Hairpin",body="Penance Robe",hands="Nashira Gages",legs="Stearc Subligar",feet="Evoker's Pigaches +1",
        ear1="Loquacious Earring",ear2="Summoning Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Summoning Torque",waist="Hierarch Belt",back="Astute Cape"
    }
	
    sets.avatar.perp.carby = set_combine(sets.avatar.perp,{
        body="Yinyang Robe",hands="Carbuncle Mitts",feet="Marduk's Crackows"
    })
	
    sets.avatar.perp.spirit = set_combine(sets.avatar.perp,{
        body="Yinyang Robe",hands="Marduk's Dastanas",legs="Marduk's Shalwar",feet="Marduk's Crackows",
        waist="Summoning Belt",
    })
	
    sets.avatar.perp.garuda = set_combine(sets.avatar.perp,{
        head="Karura Hachigane"
    })
	
    sets.avatar.perp.cait = set_combine(sets.avatar.perp,{
        head="Cait Sith Cap +1"
    })

    -------------------------------------
    -- Summoning Skill and Blood Pacts --
    -------------------------------------

    sets.avatar.skill = {
        main="Bahamut's Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Marduk's Tiara",body="Marduk's Jubbah",hands="Summoner's Bracers +1",legs="Marduk's Shalwar",feet="Marduk's Crackows",
        ear1="Loquacious Earring",ear2="Summoning Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Summoning Torque",waist="Summoning Belt",back="Astute Cape"
    }
     
    ----------------------------
    -- Individual Blood Pacts --
    ----------------------------

    sets.avatar.atk = set_combine(sets.avatar.skill,{
        main={name="Fay Crozier",augments={'Pet: Accuracy+4 Pet: Rng. Acc.+4','Pet: Attack+5 Pet: Rng.Atk.+5','"Avatar perpetuation cost" -3'}},sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Marduk's Tiara",body="Royal Redingote",hands="Summoner's Bracers +1",legs="Evoker's Spats +1",feet="Summoner's Pigaches +1",
        ear1="Ruby Earring",ear2="Summoning Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Sacrifice Torque",waist="Hierarch Belt",back="Astute Cape"
    })
    sets.avatar.atk.acc = set_combine(sets.avatar.atk,{
    })

    sets.avatar.mab = set_combine(sets.avatar.atk,{
        --main="Teiwaz",sub="Thunder Grip",ammo="Hedgehog Bomb",
        legs="Marduk's Shalwar",feet="Marduk's Crackows",
        neck="Summoning Torque",
    })
    sets.avatar.mab.acc = set_combine(sets.avatar.mab,{
    })

    sets.avatar.hybrid = set_combine(sets.avatar.atk,{
    })
    sets.avatar.hybrid.acc = set_combine(sets.avatar.hybrid,{
    })

    sets.avatar.siphon = set_combine(sets.avatar.skill,{
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
        main="Erudite's Staff +1",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Wivre Hairpin",body="Marduk's Jubbah",hands="Marduk's Dastanas",legs="Marduk's Shalwar",feet="Rostrum Pumps",
        ear1="Loquacious Earring",ear2="Astral Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Morgana's Choker",waist="Hierarch Belt",back="Veela Cape"
    }

    sets.precast.summoning = set_combine(sets.precast.casting,{
    })

    sets.precast.cure = set_combine(sets.precast.casting,{
    })

    ------------------------
    -- Ability Precasting --
    ------------------------

    sets.precast.bp = {
        main={name="Fay Crozier",augments={'Pet: Attack+5 Pet: Rng.Atk.+5','"Blood Pact" ability delay -4','"Avatar perpetuation cost" -3'}},sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Summoner's Horn +1",body="Yinyang Robe",hands="Summoner's Bracers +1",legs="Summoner's Spats +1",feet="Summoner's Pigaches +1",
        ear1="Loquacious Earring",ear2="Astral Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Morgana's Choker",waist="Hierarch Belt",back="Astute Cape"
    }

    -------------
    -- Midcast --
    -------------

    sets.midcast.casting = {
        main="Bahamut's Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Marduk's Tiara",body="Marduk's Jubbah",hands="Marduk's Dastanas",legs="Marduk's Shalwar",feet="Marduk's Crackows",
        ear1="Loquacious Earring",ear2="Astral Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Morgana's Choker",waist="Hierarch Belt",back="Astute Cape"
    }

    sets.midcast.cure = set_combine(sets.midcast.casting,{
        main="Chatoyant Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Marduk's Tiara",body="Marduk's Jubbah",hands="Marduk's Dastanas",legs="Marduk's Shalwar",feet="Marduk's Crackows",
        ear1="Loquacious Earring",ear2="Astral Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Morgana's Choker",waist="Hierarch Belt",back="Astute Cape"
    })

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
        if pet.element == world.weather_element then
			equip({main="Chatoyant Staff"})
        end
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
end

function midcast(spell)
    if spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.name:match('Cure') or spell.name:match('Cura') then
            equip(sets.midcast.cure)
        else
            equip(sets.midcast.casting)
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

            if pet.name == 'Garuda' then
			    equip({head="Karura Hachigane"})
			    add_to_chat(122,"Garuda Physical Damage Set")
            elseif pet.name == 'Leviathan' then
			    equip({hands="Evoker's Gages"})
			    add_to_chat(122,"Leviathan Physical Damage Set")
            else
			    add_to_chat(122,"Physical Damage Set")
            end
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
        send_command('input /pet "%s" <t>':format(spell.name))
        return
    end
	idle(pet)
end

function idle(pet)
    if pet.isvalid then
		if pet.name == 'Garuda' then
			equip(sets.avatar.perp.garuda)
			cidleset = 'Garuda Perp Set'
		elseif pet.name == 'Cait Sith' then
			equip(sets.avatar.perp.cait)
			cidleset = 'Cait Perp Set'
		elseif pet.name == 'Carbuncle' then
			equip(sets.avatar.perp.carby)
			cidleset = 'Carby Perp Set'
		elseif pet.name:contains('Spirit') then
			equip(sets.avatar.perp.spirit)
			cidleset = 'Spirit Perp Set'
		elseif pet.name == 'Alexander' then
			equip(sets.avatar.skill)
			cidleset = 'SMN Skill Set'
		else
			equip(sets.avatar.perp)
			cidleset = 'Perpetuation Set'
		end

		if player.hpp < 75 then
			equip({ring1="Conjurer's Ring"})
		end

        if (pet.element == world.day_element) and not (pet.name == 'Carbuncle') then
			equip({body="Summoner's Doublet +1"})
        elseif pet.element == world.weather_element then
			equip({head="Summoner's Horn +1"})
        end
    else
        equip(sets.me.idle)
	    cidleset = 'Base Idle Set'
    end
    updatedisplay()
end

function status_change(new,old)
	if new == 'Resting' then
        equip(sets.me.resting)
    else
        idle(pet)
    end
    updatedisplay()
end

function pet_change(pet,gain)
    idle(pet)
end

function self_command(command)
	commandArgs = (command:split(' '))
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
    elseif command == 'prp' then
        idle(pet)
    elseif command == 'update' then
		idle(pet)
    end
    updatedisplay()
end