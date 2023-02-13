function get_sets()
 
	send_command('input /macro book 7;wait .1;input /macro set 1') -- Change Default Macro Book Here --
    -- My formatting is very easy to follow. All sets that pertain to my character doing things are under 'me'.
    -- All sets that are equipped to faciliate my avatar's behaviour or abilities are under 'avatar', eg, Perpetuation, Blood Pacts, etc
	 
	bp_physical=S{'Punch','Rock Throw','Barracuda Dive','Claw','Axe Kick','Shock Strike','Camisado','Regal Scratch','Poison Nails',
		'Moonlit Charge','Crescent Fang','Rock Buster','Tail Whip','Double Punch','Megalith Throw','Double Slap','Eclipse Bite',
		'Mountain Buster','Spinning Dive','Predator Claws','Rush','Chaotic Strike','Crag Throw','Volt Strike'}

	bp_hybrid=S{'Burning Strike','Flaming Crush'}

	bp_magical=S{'Inferno','Earthen Fury','Tidal Wave','Aerial Blast','Diamond Dust','Judgment Bolt','Searing Light','Howling Moon',
		'Ruinous Omen','Fire II','Stone II','Water II','Aero II','Blizzard II','Thunder II','Thunderspark','Somnolence','Meteorite',
		'Fire IV','Stone IV','Water IV','Aero IV','Blizzard IV','Thunder IV','Nether Blast','Meteor Strike','Geocrush','Grand Fall',
		'Wind Blade','Heavenly Strike','Thunderstorm','Level ? Holy','Holy Mist','Lunar Bay','Night Terror','Conflag Strike'}

	bp_debuff=S{'Lunar Cry','Mewing Lullaby','Nightmare','Lunar Roar','Slowga','Ultimate Terror','Sleepga','Eerie Eye','Tidal Roar','Diamond Storm','Shock Squall','Pavor Nocturnus'}

	bp_buff=S{'Shining Ruby','Frost Armor','Rolling Thunder','Crimson Howl','Lightning Armor','Ecliptic Growl','Hastega','Noctoshield',
		'Ecliptic Howl','Dream Shroud','Earthen Armor','Fleet Wind','Inferno Howl','Soothing Ruby','Heavenward Howl','Soothing Current','Hastega II','Crystal Blessing'}

	bp_other=S{'Healing Ruby','Raise II','Aerial Armor','Reraise II','Whispering Wind','Glittering Ruby','Earthen Ward','Spring Water','Healing Ruby II'}

	AvatarList=S{'Shiva','Ramuh','Garuda','Leviathan','Diabolos','Titan','Fenrir','Ifrit','Carbuncle','Fire Spirit','Air Spirit','Ice Spirit','Thunder Spirit',
		'Light Spirit','Dark Spirit','Earth Spirit','Water Spirit','Cait Sith','Alexander','Odin','Atomos'}

	spirit_element={Fire='Fire Spirit',Earth='Earth Spirit',Water='Water Spirit',Wind='Air Spirit',Ice='Ice Spirit',Lightning='Thunder Spirit',Light='Light Spirit',Dark='Dark Spirit'}

	spirit_conflict={Fire='Ice',Earth='Lightning',Water='Fire',Wind='Earth',Ice='Wind',Lightning='Water',Light='Dark',Dark='Light'}

    sets.me = {}
    sets.avatar = {}

    sets.me.idle = {
        main="Bahamut's Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Marduk's Tiara",body="Marduk's Jubbah",hands="Marduk's Dastanas",legs="Stearc Subligar",feet="Herald's Gaiters",
        ear1="Loquacious Earring",ear2="Astral Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Morgana's Choker",waist="Hierarch Belt",back="Astute Cape"
    }

    sets.me.resting = {
        main="Chatoyant Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Mirror Tiara",body="Yigit Gomlek",hands="Marduk's Dastanas",legs="Stearc Subligar",feet="Avocat Pigaches",
        ear1="Loquacious Earring",ear2="Astral Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Beak Necklace +1",waist="Hierarch Belt",back="Astute Cape"
    }

    --------------------------
    -- Perpetuation Related --
    --------------------------

    sets.avatar.perp = {
        main="Bahamut's Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Marduk's Tiara",body="Royal Redingote",hands="Nashira Gages",legs="Stearc Subligar",feet="Evoker's Pigaches +1",
        ear1="Loquacious Earring",ear2="Summoning Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Summoning Torque",waist="Hierarch Belt",back="Astute Cape"
    }
	
    sets.avatar.perp.carby = set_combine(sets.avatar.perp,{
        body="Marduk's Jubbah",hands="Carbuncle Mitts",feet="Marduk's Crackows"
    })
	
    sets.avatar.perp.garuda = set_combine(sets.avatar.perp,{
        head="Karura hachigane"
    })
	
    sets.avatar.perp.cait = set_combine(sets.avatar.perp,{
        head="Cait Sith Cap +1"
    })

    -------------------------------------
    -- Summoning Skill and Blood Pacts --
    -------------------------------------

    sets.avatar.skill = {
        main="Kirin's Pole",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Marduk's Tiara",body="Marduk's Jubbah",hands="Summoner's Bracers +1",legs="Marduk's Shalwar",feet="Marduk's Crackows",
        ear1="Loquacious Earring",ear2="Summoning Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Summoning Torque",waist="Hierarch Belt",back="Astute Cape"
    }
     
    ----------------------------
    -- Individual Blood Pacts --
    ----------------------------

    sets.avatar.atk = set_combine(sets.avatar.skill,{
        main="Fay Crozier",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Marduk's Tiara",body="Summoner's Doublet",hands="Summoner's Bracers +1",legs="Evoker's Spats",feet="Herald's Gaiters",
        ear1="Loquacious Earring",ear2="Summoning Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Sacrifice Torque",waist="Hierarch Belt",back="Astute Cape"
    })

    sets.avatar.mab = set_combine(sets.avatar.skill,{
        main="Teiwaz",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Marduk's Tiara",body="Royal Redingote",hands="Summoner's Bracers +1",legs="Marduk's Shalwar",feet="Evoker's Pigaches +1",
        ear1="Loquacious Earring",ear2="Summoning Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Summoning Torque",waist="Hierarch Belt",back="Astute Cape"
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
        main="Bahamut's Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Marduk's Tiara",body="Marduk's Jubbah",hands="Marduk's Dastanas",legs="Stearc Subligar",feet="Herald's Gaiters",
        ear1="Loquacious Earring",ear2="Astral Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Morgana's Choker",waist="Hierarch Belt",back="Astute Cape"
    }

    sets.precast.summoning = set_combine(sets.precast.casting,{
        main="Bahamut's Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Marduk's Tiara",body="Marduk's Jubbah",hands="Marduk's Dastanas",legs="Stearc Subligar",feet="Herald's Gaiters",
        ear1="Loquacious Earring",ear2="Astral Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Morgana's Choker",waist="Hierarch Belt",back="Astute Cape"
    })

    sets.precast.cure = set_combine(sets.precast.casting,{
        main="Bahamut's Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Marduk's Tiara",body="Marduk's Jubbah",hands="Marduk's Dastanas",legs="Stearc Subligar",feet="Herald's Gaiters",
        ear1="Loquacious Earring",ear2="Astral Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Morgana's Choker",waist="Hierarch Belt",back="Astute Cape"
    })

    ------------------------
    -- Ability Precasting --
    ------------------------

    sets.precast.bp = {
        main="Bahamut's Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Summoner's Horn +1",body="Yinyang Robe",hands="Summoner's Bracers +1",legs="Summoner's Spats",feet="Summoner's Pigaches +1",
        ear1="Loquacious Earring",ear2="Astral Earring",ring1="Vivian Ring",ring2="Evoker's Ring",
        neck="Morgana's Choker",waist="Hierarch Belt",back="Astute Cape"
    }

    -------------
    -- Midcast --
    -------------

    sets.midcast.casting = {
        main="Bahamut's Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
        head="Marduk's Tiara",body="Marduk's Jubbah",hands="Marduk's Dastanas",legs="Stearc Subligar",feet="Herald's Gaiters",
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

function precast(spell)
    if midaction() or pet_midaction() then
		return
    end

    if (spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard') and not (buffactive['Astral Conduit'] or buffactive['Apogee']) then
        equip(sets.precast.bp)
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
        equip(sets.avatar.skill)
		add_to_chat(122,"Elemental Siphon Set")
    elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.name:match('Cure') or spell.name:match('Cura') then
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
			add_to_chat(122,"Cure Potency Set")
        else
            equip(sets.midcast.casting)
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
end

function pet_midcast(spell)
    if (spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard') then
        if bp_physical:contains(spell.name) then
			if spell.name:contains('Predator Claws') then
				equipSet = set_combine(sets.avatar.atk,{head="Karura hachigane"})
				add_to_chat(122,"Garuda Physical Damage Set")
			else
				equipSet = sets.avatar.atk
				add_to_chat(122,"Physical Damage Set")
			end
        elseif bp_hybrid:contains(spell.name) then
            equipSet = sets.avatar.hybrid
			add_to_chat(122,"Hybrid Damage Set")
        elseif bp_magical:contains(spell.name) then
            equipSet = sets.avatar.mab
			add_to_chat(122,"Magic Damage Set")
        elseif bp_debuff:contains(spell.name) then
            equipSet = sets.avatar.skill
			add_to_chat(122,"Debuff Set")
        elseif bp_buff:contains(spell.name) then
            equipSet = sets.avatar.skill
			add_to_chat(122,"Buff Set")
        elseif bp_other:contains(spell.name) then
            equipSet = sets.avatar.skill
			add_to_chat(122,"SMN Skill Set")
        elseif spell.name == 'Perfect Defense' then
            equipSet = sets.avatar.skill
			add_to_chat(122,"SMN Skill Set")
        else
            equipSet = sets.avatar.skill
			add_to_chat(122,"SMN Skill Set")
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
			add_to_chat(122,"Garuda Perpetuation Set")
		elseif pet.name == 'Cait Sith' then
			equip(sets.avatar.perp.cait)
			add_to_chat(122,"Cait Perpetuation Set")
		elseif pet.name == 'Carbuncle' then
			equip(sets.avatar.perp.carby)
			add_to_chat(122,"Carbuncle Perpetuation Set")
		else
			equip(sets.avatar.perp)
			add_to_chat(122,"Perpetuation Set")
		end

		if player.hpp < 75 then
			equip({ring1="Conjurer's Ring"})
		end
    elseif pet.name == 'Alexander' then
        equip(sets.avatar.skill)
    else
        equip(sets.me.idle)
		add_to_chat(122,"Idle Set")
    end
end

function status_change(new,old)
	if new == 'Resting' then
        equip(sets.me.resting)
		add_to_chat(122,"Resting MP Set")
    else
        idle(pet)
    end
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
    end
end