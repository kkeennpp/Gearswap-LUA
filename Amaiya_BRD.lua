function get_sets()

    send_command('input /macro book 2;wait .1;input /macro set 3') -- Change Default Macro Book Here --
	send_command('wait 5;input /lockstyleset 17')
	
	---------------
	-- Idle Sets --
	---------------

	sets = {}

	sets.Idle = {
		main="Carnwenhan",sub="Taming Sari",range="Gjallarhorn",
        head="Bunzi's Hat",body="Bunzi's Robe",hands="Bunzi's Gloves",legs="Bunzi's Pants",feet="Bunzi's Sabots",
		ear1="Etiolation Earring",ear2="Infused Earring",ring1="Purity Ring",ring2="Sheltered Ring",
		neck="Warder's Charm +1",waist="Carrier's Sash",back={name="Intarabus's Cape",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%'}}
	}

	sets.Idle.mage = set_combine(sets.Idle,{
		main="Daybreak",sub="Ammurapi Shield",range="Gjallarhorn",
		head="Volte Beret",body="Inyanga Jubbah +2",hands="Inyanga Dastanas +2",legs="Inyanga Shalwar +2",feet="Inyanga Crackows +2",
		ear2="Odnowa Earring +1",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2={name="Stikini Ring +1",bag="wardrobe 1"},
	})

	sets.Idle.resting = set_combine(sets.Idle,{
		main="Chatoyant Staff"
	})

	sets.Idle.MVMT = {feet="Fili Cothurnes +1"}

	-------------
	-- TP Sets --
	-------------

	sets.TP = {
		main="Carnwenhan",sub="Taming Sari",range={name="Linos",augments={'Accuracy+15','"Store TP"+2','DEX+8'}},
		head="Ayanmo Zucchetto +2",body="Volte Harness",hands="Bunzi's Gloves",legs="Volte Tights",feet="Nyame Sollerets",
		ear1="Dignitary's Earring",ear2="Cessance Earring",ring1={name="Chirich Ring +1",bag="wardrobe 6"},ring2={name="Chirich Ring +1",bag="wardrobe 1"},
		neck="Bard's Charm +1",waist="Kentarch Belt +1",back={name="Intarabus's Cape",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%'}}
	}

	sets.TP.Dual = set_combine(sets.TP,{waist="Reiki Yotai",ear1="Suppanomimi"})

	sets.TP.Hybrid = set_combine(sets.TP,{
        head="Bunzi's Hat",body="Ayanmo Corazza +2",feet="Bunzi's Sabots",
        ring1="Moonlight Ring",
	})

	sets.TP.Hybrid.Dual = set_combine(sets.TP.hybrid,{waist="Reiki Yotai",ear1="Eabani Earring"})

	-------------
	-- Precast --
	-------------
     
	sets.precast = {
        main="Carnwenhan",sub="Kali",
		head="Bunzi's Hat",body="Inyanga Jubbah +2",hands="Gendewitha Gages +1",legs="Ayanmo Cosciales +2",feet="Ayanmo Gambieras +2",
		ear1="Enchanter's Earring +1",ear2="Loquacious Earring",ring1="Kishar Ring",ring2="Weatherspoon Ring",
		neck="Voltsurge Torque",waist="Embla Sash",back={name="Intarabus's Cape",augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Damage taken-5%'}}
	}
	
	sets.precast.songs = set_combine(sets.precast,{
		range="Marsyas",
		head="Fili Calot",legs="Gendewitha Spats +1",feet="Bihu Slippers +3"
	})

	sets.precast.enhancing = set_combine(sets.precast,{
	})

	sets.precast.stoneskin = set_combine(sets.precast.enhancing,{
	})

	sets.precast.cure = set_combine(sets.precast,{
		body="Heka's Kalasiris",
		back="Pahtli Cape"
	})

	------------------------
	-- Ability Precasting --
	------------------------

	sets.JA = {}
	sets.JA['Nightingale'] = {feet="Bihu Slippers +3"}
	sets.JA['Troubadour'] = {body="Bihu Justaucorps +3"}
	sets.JA['Soul Voice'] = {legs="Bihu Cannions +2"}

	-------------
	-- Midcast --
	-------------

	sets.midcast = {}

	sets.midcast.songs = {
		main="Carnwenhan",range="Gjallarhorn",
		head="Fili Calot",body="Fili Hongreline +2",hands="Fili Manchettes",legs="Inyanga Shalwar +2",feet="Brioso Slippers +3",
		ear1="Etiolation Earring",ear2="Odnowa Earring +1",ring1="Defending Ring",ring2="Gelatinous Ring +1",
		neck="Moonbow Whistle +1",waist="Flume Belt +1",back={name="Intarabus's Cape",augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Damage taken-5%'}}
	}

	sets.midcast.songs.enm = set_combine(sets.midcast.songs,{
		main="Carnwenhan",range="Gjallarhorn",
        head="Nyame Helm",body="Emet Harness +1",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Cryptic Earring",ear2="Odnowa Earring +1",ring1="Supershear Ring",ring2="Eihwaz Ring",
		neck="Warder's Charm +1"
	})
	
	sets.midcast.songs.macc = set_combine(sets.midcast.songs,{
		main="Carnwenhan",sub="Gleti Knife",
		head="Brioso Roundlet +2",body="Brioso Justaucorps +2",hands="Inyanga Dastanas +2",
		ear1="Regal Earring",ear2="Dignitary's Earring",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2={name="Stikini Ring +1",bag="wardrobe 1"},
		waist="Luminary Sash"
	})

	sets.midcast.songs.ballad = set_combine(sets.midcast.songs,{})
	--sets.midcast.songs.ballad = set_combine(sets.midcast.songs,{legs="Fili Rhingrave +1"})
	sets.midcast.songs.scherzo = set_combine(sets.midcast.songs,{neck="Warder's Charm +1",feet="Fili Cothurnes +1"})
	sets.midcast.songs.paeon = set_combine(sets.midcast.songs,{head="Brioso Roundlet +2"})
	sets.midcast.songs.minne = set_combine(sets.midcast.songs,{legs="Mousai Seraweels +1"})
	sets.midcast.songs.etude = set_combine(sets.midcast.songs,{head="Mousai Turban +1"})
	sets.midcast.songs.carol = set_combine(sets.midcast.songs,{hands="Mousai Gages +1"})
	sets.midcast.songs.honor = set_combine(sets.midcast.songs,{range="Marsyas"})
	sets.midcast.songs.lullaby = set_combine(sets.midcast.songs.macc,{hands="Brioso Cuffs +2"})
	sets.midcast.songs.hlullaby = set_combine(sets.midcast.songs.macc,{range="Daurdabla"})

	sets.midcast.cure = {
		main="Daybreak",sub="Ammurapi Shield",range="Pemphredo Tathlum",
		head="Bunzi's Hat",body="Bunzi's Robe",hands="Inyanga Dastanas +2",legs="Ayanmo Cosciales +2",feet="Bunzi's Sabots",
		ear1="Mendicant's Earring",ear2="Regal Earring",ring1="Sirona's Ring",ring2="Stikini Ring +1",
		neck="Colossus's Torque",waist="Sailfi Belt +1",back="Fi Follet Cape"
	}

	sets.midcast.enhancing = {
		main="Carnwenhan",sub="Ammurapi Shield",
		head="Telchine Cap",body="Telchine Chasuble",hands="Telchine Gloves",legs="Telchine Braconi",feet="Telchine Pigaches",
		neck="Colossus's Torque",waist="Embla Sash"
	}

	sets.midcast.stoneskin = set_combine(sets.midcast.enhancing,{
	})

	----------------------
	-- WeaponSkill Sets --
	----------------------
	
	sets.ws = {
		range={name="Linos",augments={'Accuracy+15','"Dbl.Atk."+3','STR+6 DEX+6'}},
		head="Nyame Helm",body="Bihu Justaucorps +3",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Ishvara Earring",ear2="Moonshade Earring",ring1="Metamorph Ring +1",ring2="Apate Ring",
		neck="Bard's Charm +1",waist="Sailfi Belt +1",back={name="Intarabus's Cape",augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
	}

	sets.ws["Rudra's Storm"] = set_combine(sets.ws,{
		ear1="Dominance Earring +1",ring1="Ilabrat Ring",
        waist="Fotia Belt",back={name="Intarabus's Cape",augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%'}}
	})

	sets.ws["Mordant Rime"] = set_combine(sets.ws,{
		body="Bihu Justaucorps +3",
		ear2="Regal Earring",ring2="Ilabrat Ring",
        waist="Fotia Belt",back={name="Intarabus's Cape",augments={'CHR+20','Accuracy+20 Attack+20','CHR+10','Weapon skill damage +10%'}}
	})

	sets.ws["Aeolian Edge"] = set_combine(sets.ws,{
        body="Nyame Mail",
		ear1="Friomisi Earring",ear2="Regal Earring",ring1="Ilabrat Ring",ring2="Shiva Ring +1",
        neck="Sanctity Necklace",waist="Eschan Stone"
	})

	sets.ws["Shining Strike"] = set_combine(sets.ws["Aeolian Edge"],{ring1="Metamorph Ring +1"})

	---------------
	-- Aftercast --
	---------------

	sets.aftercast = {}
end

--------------------------------------------------------------------------------------------------------------
-- HUD STUFF
--------------------------------------------------------------------------------------------------------------

AccIndex = 1
AccArray = {"LowACC","Hybrid"}
MeleeMode = false
cidleset = 'Load Temp'
terp = false
DWMode = false
CPMode = false
DynaMode = false
local res = require('resources')

if player.sub_job == 'WHM' then
	IdleIndex = 2
elseif player.sub_job == 'BLM' then
	IdleIndex = 2
elseif player.sub_job == 'NIN' then
	IdleIndex = 1
    DWMode = true
    windower.add_to_chat(8,'----- DualWield Mode Enabled -----')
elseif player.sub_job == 'DNC' then
	IdleIndex = 1
    DWMode = true
    windower.add_to_chat(8,'----- DualWield Mode Enabled -----')
else
	IdleIndex = 1
end

IdleArray = {'DT','Refresh'}

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
        pos={x=2725,y=1288},
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
    local str = 'AccMode: \\cs(150,150,255)'..AccArray[AccIndex]..'\\cr'
    str = str..'\nIdleMode: \\cs(150,150,255)'..IdleArray[IdleIndex]..'\\cr'
    str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
    str = str..'\nMultiSong: \\cs(150,150,255)'..tostring(terp)..'\\cr'
    str = str..'\nMeleeMode: \\cs(150,150,255)'..tostring(MeleeMode)..'\\cr'
    str = str..'\nDWMode: \\cs(150,150,255)'..tostring(DWMode)..'\\cr'
    str = str..'\nDynaMode: \\cs(150,150,255)'..tostring(DynaMode)..'\\cr'

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

function sub_job_change(new,old)
    --local player = windower.ffxi.get_player()

	if player.sub_job == 'WHM' then
		IdleIndex = 2
    elseif player.sub_job == 'BLM' then
	    IdleIndex = 2
	elseif player.sub_job == 'NIN' then
		IdleIndex = 1
        DWMode = true
        windower.add_to_chat(8,'----- DualWield Mode Enabled -----')
	elseif player.sub_job == 'DNC' then
		IdleIndex = 1
        DWMode = true
        windower.add_to_chat(8,'----- DualWield Mode Enabled -----')
	end

	updatedisplay()
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
    if (spell.type:endswith('Magic') or spell.type == 'Ninjutsu' or spell.type == 'BardSong') and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
            cancel_spell()
            send_command('input /item "Echo Drops" <me>')
	elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.name == 'Stoneskin' then
            windower.ffxi.cancel_buff(37)--[[Cancels stoneskin, not delayed incase you get a Quick Cast]]
            equip(sets.precast.stoneskin)
        elseif spell.name:match('Cure') or spell.name:match('Cura') then
            equip(sets.precast.cure)
        elseif spell.skill == 'Enhancing Magic' then
            equip(sets.precast.enhancing)
            if spell.name == 'Sneak' then
                windower.ffxi.cancel_buff(71)--[[Cancels Sneak]]
            end
        else
            equip(sets.precast)
        end
    elseif spell.type == 'BardSong' then
        equip(sets.precast.songs)
    elseif spell.type == "WeaponSkill" then
		equipSet = sets.ws
        if equipSet[spell.english] then
            equipSet = equipSet[spell.english]
			add_to_chat(122,spell.english .. ' Set')
        end
        equip(equipSet)
	elseif sets.JA[spell.english] then
		equipSet = sets.JA[spell.english]
		add_to_chat(122,spell.english .. ' Set')
		equip(equipSet)
	else
        equip(sets.precast)
    end
end
 
function midcast(spell,action)
    if spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.name == 'Stoneskin' then
            equip(sets.midcast.stoneskin)
        elseif spell.name:match('Cure') or spell.name:match('Cura') then
            equip(sets.midcast.cure)
        elseif spell.skill == 'Enhancing Magic' then
            equip(sets.midcast.enhancing)
            if spell.name:match('Protect') or spell.name:match('Shell') then
                equip({rring="Sheltered Ring"})
            end
        else
            equip(sets.midcast.haste)
        end
    elseif spell.type == 'BardSong' then
        if spell.name:contains('Ballad') then
            equip(sets.midcast.songs.ballad)
			add_to_chat(122,spell.english .. ' Set')
        elseif spell.name:contains('Honor') then
            equip(sets.midcast.songs.honor)
			add_to_chat(122,spell.english .. ' Set')
        elseif spell.name:contains('Mazurka') then
            equip(sets.midcast.songs.honor)
			add_to_chat(122,spell.english .. ' Set')
        elseif spell.name:contains('Scherzo') then
            equip(sets.midcast.songs.scherzo)
			add_to_chat(122,spell.english .. ' Set')
        elseif spell.name:contains('Paeon') then
            equip(sets.midcast.songs.paeon)
			add_to_chat(122,spell.english .. ' Set')
        elseif spell.name:contains('Minne') then
            equip(sets.midcast.songs.minne)
			add_to_chat(122,spell.english .. ' Set')
        elseif spell.name:contains('Etude') then
            equip(sets.midcast.songs.etude)
			add_to_chat(122,spell.english .. ' Set')
        elseif spell.name:contains('Carol') then
            equip(sets.midcast.songs.carol)
			add_to_chat(122,spell.english .. ' Set')
        elseif spell.name:contains('Lullaby') then
            if spell.name:contains('Foe') then
                equip(sets.midcast.songs.lullaby)
			    add_to_chat(122,spell.english .. ' Set')
            else
                equip(sets.midcast.songs.hlullaby)
			    add_to_chat(122,spell.english .. ' Set')
            end
        elseif spell.name:contains('Requiem') then
            equip(sets.midcast.songs.macc)
			add_to_chat(122,'Requiem Magic Acc Set')
        elseif spell.name:contains('Nocturne') then
            equip(sets.midcast.songs.macc)
			add_to_chat(122,'Nocturne Magic Acc Set')
        elseif spell.name:contains('Elegy') then
            equip(sets.midcast.songs.macc)
			add_to_chat(122,'Elegy Magic Acc Set')
        elseif spell.name:contains('Threnody') then
            equip(sets.midcast.songs.macc)
			add_to_chat(122,'Threnody Magic Acc Set')
        elseif spell.name:contains('Finale') then
            equip(sets.midcast.songs.macc)
			add_to_chat(122,'Finale Magic Acc Set')
        else
            equip(sets.midcast.songs)
		end
    elseif spell.type == "WeaponSkill" then
    end
end

function aftercast(spell,action)
    if midaction() then
        return
    end

	if player.status == 'Engaged' then
		equipSet = sets.TP
		if AccArray[AccIndex] == 'Hybrid' then
			equipSet = sets.TP.Hybrid
			cidleset = 'Melee Hybrid Set'
			if DWMode then
				equipSet = sets.TP.Hybrid.Dual
				cidleset = 'DW Melee Hybrid'
            end
        else
			if DWMode then
				equipSet = sets.TP.Dual
				cidleset = 'DW Melee'
            end
		    cidleset = 'Melee Set'
		end
		equip(equipSet)
    else
		if IdleArray[IdleIndex] == 'DT' then
			equip(sets.Idle)
			cidleset = 'DT Idle Set'
		elseif IdleArray[IdleIndex] == 'Refresh' then
			equip(sets.Idle.mage)
			cidleset = 'Refresh Idle Set'
			if player.mpp < 50 then
				equip({waist="Fucho-no-Obi"})
				cidleset = 'Refresh Obi Set'
			end	
		elseif IdleArray[IdleIndex] == 'Town' then
			equip(sets.Idle.mage)
			cidleset = 'Town Idle Set'
        end
    end
	updatedisplay()
end
 
function status_change(new,old)
    if new == 'Resting' then
        equip(sets.Idle.resting)
    else
        aftercast()
    end
end

function self_command(command)
	if command == 'acc' then -- Accuracy Level Toggle
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
	elseif command == 'idle' then
		IdleIndex = (IdleIndex % #IdleArray) + 1
	elseif command == 'sw' then
		windower.send_command('input /equip main \"Naegling\"; wait 1; input /equip sub \"Fusetto +2\"')
		--equip({main="Naegling",sub="Taming Sari"})
	elseif command == 'ca' then
		windower.send_command('input /equip main \"Carnwenhan\"; wait 1; input /equip sub \"Taming Sari\"')
		--equip({main="Carnwenhan",sub="Taming Sari"})
    elseif command == 'terp' then
        if terp then
            terp = false
            enable('ranged','ammo')
            windower.add_to_chat(8,'----- 4 Song Mode Disabled -----')
        else
            terp = true
			equip({ranged="Daurdabla"})
            disable('ranged','ammo')
            windower.add_to_chat(8,'----- 4 Song Mode Enabled -----')
        end
    elseif command == 'melee' then
        if MeleeMode then
            MeleeMode = false
            enable('main','sub')
            windower.add_to_chat(8,'----- Weapons Unlocked, WILL lose TP -----')
        else
            MeleeMode = true
            disable('main','sub')
            windower.add_to_chat(8,'----- Weapons Locked, WILL NOT lose TP -----')
        end
    elseif command == 'dw' then
        if DWMode then
            DWMode = false
            windower.add_to_chat(8,'----- DualWield Mode Disabled -----')
        else
            DWMode = true
            windower.add_to_chat(8,'----- DualWield Mode Enabled -----')
        end
    elseif command == 'cp' then
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
    elseif command == 'dummy' then
        terp = true
		equip({ranged="Daurdabla"})
        disable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Enabled -----')
        send_command('input /so "Army\'s Paeon" <me>; wait 6; input /so "Army\'s Paeon II" <me>; wait 6; input /so "Army\'s Paeon III" <me>; wait 6; input /so "Army\'s Paeon IV" <me>')
    elseif command == 'dummycc' then
        terp = true
		equip({ranged="Daurdabla"})
        disable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Enabled -----')
        send_command('input /so "Army\'s Paeon" <me>; wait 6; input /so "Army\'s Paeon II" <me>; wait 6; input /so "Army\'s Paeon III" <me>; wait 6; input /so "Army\'s Paeon IV" <me>; wait 6; input /ja "Clarion Call" <me>; wait 1.5; input /so "Army\'s Paeon V" <me>')
    elseif command == 'songs' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Disabled -----')
        send_command('input /so "Valor Minuet V" <me>; wait 6; input /so "Blade Madrigal" <me>; wait 6; input /so "Victory March" <me>; wait 6; input /so "Honor March" <me>')
    elseif command == 'songs2' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Disabled -----')
        send_command('input /so "Sword Madrigal" <me>; wait 6; input /so "Blade Madrigal" <me>; wait 6; input /so "Victory March" <me>; wait 6; input /so "Honor March" <me>')
    elseif command == 'songs3' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Disabled -----')
        send_command('input /so "Blade Madrigal" <me>; wait 6; input /so "Valor Minuet V" <me>; wait 6; input /so "Valor Minuet IV" <me>; wait 6; input /so "Honor March" <me>')
    elseif command == 'songs4' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Disabled -----')
        send_command('input /so "Blade Madrigal" <me>; wait 6; input /so "Victory March" <me>; wait 6; input /so "Honor March" <me>; wait 6; input /so "Mage\'s Ballad III" <me>')
    elseif command == 'cait' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Disabled -----')
        send_command('input /so "Valor Minuet V" <me>; wait 6; input /so "Light Carol II" <me>; wait 6; input /so "Sentinel\'s Scherzo" <me>; wait 6; input /so "Honor March" <me>')
    elseif command == 'songscc' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Disabled -----')
        send_command('input /so "Valor Minuet IV" <me>; wait 6; input /so "Valor Minuet V" <me>; wait 6; input /so "Blade Madrigal" <me>; wait 6; input /so "Victory March" <me>; wait 6; input /so "Honor March" <me>')
    elseif command == 'ntsongs' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Disabled -----')
        send_command('input /ja "Nightingale" <me>; wait 1.5; input /ja "Troubadour" <me>; wait 1.5; input /so "Valor Minuet V" <me>; wait 4; input /so "Blade Madrigal" <me>; wait 4; input /so "Victory March" <me>; wait 4; input /ja "Marcato" <me>; wait 1.5; input /so "Honor March" <me>')
    elseif command == 'ntsongs2' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Disabled -----')
        send_command('input /ja "Nightingale" <me>; wait 1.5; input /ja "Troubadour" <me>; wait 1.5; input /so "Sword Madrigal" <me>; wait 4; input /so "Blade Madrigal" <me>; wait 4; input /so "Victory March" <me>; wait 4; input /ja "Marcato" <me>; wait 1.5; input /so "Honor March" <me>')
    elseif command == 'ntsongs3' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Disabled -----')
        send_command('input /ja "Nightingale" <me>; wait 1.5; input /ja "Troubadour" <me>; wait 1.5; input /so "Blade Madrigal" <me>; wait 4; input /so "Valor Minuet V" <me>; wait 4; input /so "Valor Minuet IV" <me>; wait 4; input /ja "Marcato" <me>; wait 1.5; input /so "Honor March" <me>')
    elseif command == 'ntsongs4' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Disabled -----')
        send_command('input /ja "Nightingale" <me>; wait 1.5; input /ja "Troubadour" <me>; wait 1.5; input /so "Blade Madrigal" <me>; wait 4; input /so "Victory March" <me>; wait 4; input /ja "Marcato" <me>; wait 1.5; input /so "Honor March" <me>; wait 4; input /so "Mage\'s Ballad III" <me>')
    elseif command == 'ntcait' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Disabled -----')
        send_command('input /ja "Nightingale" <me>; wait 1.5; input /ja "Troubadour" <me>; wait 1.5; input /so "Blade Madrigal" <me>; wait 4; input /so "Light Carol II" <me>; wait 4; input /so "Sentinel\'s Scherzo" <me>; wait 4; input /ja "Marcato" <me>; wait 1.5; input /so "Honor March" <me>')
    elseif command == 'ntsongscc' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Disabled -----')
        --send_command('input /ja "Nightingale" <me>; wait 1.5; input /ja "Troubadour" <me>; wait 1.5; input /so "Valor Minuet V" <me>; wait 4; input /so "Mage\'s Ballad III" <me>; wait 4; input /so "Blade Madrigal" <me>; wait 4; input /so "Victory March" <me>; wait 4; input /ja "Marcato" <me>; wait 1.5; input /so "Honor March" <me>')
        send_command('input /ja "Nightingale" <me>; wait 1.5; input /ja "Troubadour" <me>; wait 1.5; input /so "Valor Minuet IV" <me>; wait 4; input /so "Valor Minuet V" <me>; wait 4; input /so "Blade Madrigal" <me>; wait 4; input /so "Victory March" <me>; wait 4; input /ja "Marcato" <me>; wait 1.5; input /so "Honor March" <me>')
    elseif command == 'update' then
		aftercast()
    end
	updatedisplay()
end