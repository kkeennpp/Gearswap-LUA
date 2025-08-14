function get_sets()

    send_command('input /macro book 2;wait .1;input /macro set 3') -- Change Default Macro Book Here --
	send_command('wait 5;input /lockstyleset 3')
	
	---------------
	-- Idle Sets --
	---------------

	sets = {}

	sets.Idle = {
        main="Dweomer knife",sub="Genbu's Shield",range="Gjallarhorn",
		head="Darksteel Cap +1",body="Marduk's Jubbah",hands="Marduk's Dastanas",legs="Darksteel Subligar +1",feet="Darksteel Leggings +1",
		ear1="Novia Earring",ear2="Bloodbead Earring",ring1="Shadow Ring",ring2="Jelly Ring",
		neck="Orochi Nodowa",waist="Marching Belt",back="Cheviot Cape"
	}

	sets.Idle.mage = set_combine(sets.Idle,{
	})

	sets.Idle.resting = set_combine(sets.Idle,{
		main="Chatoyant Staff",sub="Thunder Grip",ammo="Hedgehog Bomb",
		head="Mirror Tiara",body="Yigit Gomlek",hands="Oracle Gloves",legs="Oracle's Braconi",feet="Avocat Pigaches",
		neck="Grandiose Chain",back="Astute Cape",
		ear1="Antivenom Earring"
	})

	sets.Idle.MVMT = {legs="Track Pants +1"}

	-------------
	-- TP Sets --
	-------------

	sets.TP = {
		main="Blau Dolch",sub="Genbu's Shield",ammo="Goblin Cracker",
		head="Walahra Turban",body="Goliard Saio",hands="Dusk Gloves +1",legs="Byakko's Haidate",feet="Prishe's Boots +1",
		neck="Ancient Torque",waist="Ninurta's Sash",back="Cuchulain's Mantle",
		ear1="Spinel Earring",ear2="Brutal Earring",ring1="Toreador's Ring",ring2="Mars's Ring"
	}

	sets.TP.Dual = set_combine(sets.TP,{sub="Hornetneedle",ear1="Suppanomimi"})

	sets.TP.HighACC = set_combine(sets.TP,{
		head="Optical Hat",body="Hydra Doublet",hands="Dusk Gloves +1",legs="Hydra Brais",feet="Hydra Gaiters"
	})

	sets.TP.HighACC.Dual = set_combine(sets.TP.HighACC,{sub="Hornetneedle",ear1="Suppanomimi"})

	sets.TP.Hybrid = set_combine(sets.TP,{
	})

	sets.TP.Hybrid.Dual = set_combine(sets.TP.hybrid,{ear1="Suppanomimi"})

	-------------
	-- Precast --
	-------------
     
	sets.precast = {
        main="Dweomer knife",sub="Genbu's Shield",range="Gjallarhorn",
		head="Marduk's Tiara",body="Marduk's Jubbah",hands="Marduk's Dastanas",legs="Zenith Slacks",feet="Rostrum Pumps",
		ear1="Novia Earring",ear2="Loquac. Earring",ring1="Shadow Ring",ring2="Jelly Ring",
		neck="Piper's Torque",waist="Marching Belt",back="Veela Cape"
	}
	
	sets.precast.songs = set_combine(sets.precast,{
        main="Dweomer knife",sub="Genbu's Shield",range="Gjallarhorn",
		body="Sheikh Manteel",legs="Zenith Slacks",
		ring2="Minstrel's Ring"
	})
	
	sets.precast.songs.yellow = set_combine(sets.precast,{
		head="Zenith Crown +1",body="Dalmatica",hands="Zenith Mitts +1",legs="Zenith Slacks",
		ear1="Astral Earring",ring1="Vivian Ring",ring2="Serket Ring",
		neck="Morgana's Choker",waist="Marching Belt",back="Ixion Cape"
	})

	sets.precast.enhancing = set_combine(sets.precast,{
	})

	sets.precast.stoneskin = set_combine(sets.precast.enhancing,{
	})

	sets.precast.cure = set_combine(sets.precast,{
	})

	------------------------
	-- Ability Precasting --
	------------------------

	sets.JA = {}

	-------------
	-- Midcast --
	-------------

	sets.midcast = {}

	sets.midcast.songs = {
		main="Chatoyant Staff",sub="Reign Grip",range="Gjallarhorn",
		head="Marduk's Tiara",body="Marduk's Jubbah",hands="Choral Cuffs +1",legs="Marduk's Shalwar",feet="Oracle's Pigaches",
		ear1="Novia Earring",ear2="Musical Earring",ring1="Balrahn's Ring",ring2="Veela Ring",
		neck="Piper's Torque",waist="Marching Belt",back="Astute Cape"
	}
	
	sets.midcast.songs.macc = set_combine(sets.midcast.songs,{
	})

	sets.midcast.songs.ballad = set_combine(sets.midcast.songs,{})
	--sets.midcast.songs.ballad = set_combine(sets.midcast.songs,{legs="Fili Rhingrave +1"})
	--sets.midcast.songs.paeon = set_combine(sets.midcast.songs,{head="Brioso Roundlet +2"})
	--sets.midcast.songs.minne = set_combine(sets.midcast.songs,{legs="Mousai Seraweels +1"})
	--sets.midcast.songs.etude = set_combine(sets.midcast.songs,{head="Mousai Turban +1"})
	--sets.midcast.songs.carol = set_combine(sets.midcast.songs,{hands="Mousai Gages +1"})
	--sets.midcast.songs.lullaby = set_combine(sets.midcast.songs.macc,{hands="Brioso Cuffs +2"})
	sets.midcast.songs.hlullaby = set_combine(sets.midcast.songs.macc,{range="Nursemaid's Harp"})

	sets.midcast.cure = {
	}

	sets.midcast.enhancing = {
	}

	sets.midcast.stoneskin = set_combine(sets.midcast.enhancing,{
	})

	----------------------
	-- WeaponSkill Sets --
	----------------------
	
	sets.WS = {
		ammo="Goblin Cracker",
		head="Gnadbhod's Helm",body="Hecatomb Harness",hands="Hecatomb Mittens",legs="Hecatomb Subligar",feet="Hct. Leggings",
		neck="Fotia Gorget",waist="Fierce Belt",back="Cerberus Mantle +1",
		ear1="Triumph Earring",ear2="Brutal Earring",ring1="Strigoi Ring",ring2="Mars's Ring"
	}

	sets.WS.HighACC = set_combine(sets.WS,{
	})

	sets.WS["Mordant Rime"] = set_combine(sets.WS,{
		ammo="Goblin Cracker",
		head="Goliard Chapeau",body="Marduk's Jubbah",hands="Chl. Cuffs +1",legs="Marduk's Shalwar",feet="Shadow Clogs",
		ear1="Melody Earring",ear2="Brutal Earring",ring1="Veela Ring",ring2="Mars's Ring",
		waist="Gleeman's Belt",back="Jester's Cape +1"
	})

	sets.WS["Mordant Rime"].HighACC = set_combine(sets.WS["Mordant Rime"],{
		ammo="Goblin Cracker",
		body="Avalon Breastplate",
		back="Bard's Cape"
	})

	sets.WS["Aeolian Edge"] = set_combine(sets.WS,{
        body="Nyame Mail",
		ear1="Friomisi Earring",ear2="Regal Earring",ring1="Ilabrat Ring",ring2="Shiva Ring +1",
        neck="Sanctity Necklace",waist="Eschan Stone"
	})

	sets.WS["Shining Strike"] = set_combine(sets.WS["Aeolian Edge"],{ring1="Metamorph Ring +1"})

	---------------
	-- Aftercast --
	---------------

	sets.aftercast = {}
end

--------------------------------------------------------------------------------------------------------------
-- HUD STUFF
--------------------------------------------------------------------------------------------------------------

AccIndex = 1
AccArray = {"LowACC","HighACC"}
MeleeMode = false
cidleset = 'Load Temp'
DWMode = false
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
    str = str..'\nMeleeMode: \\cs(150,150,255)'..tostring(MeleeMode)..'\\cr'
    str = str..'\nDWMode: \\cs(150,150,255)'..tostring(DWMode)..'\\cr'

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
					equip({neck="Berserkers Torque",back="Aries Mantle"})
					add_to_chat(123,'Berserkers Torque equiped')
				end
			end
        elseif not gain then
            aftercast()
        end
    elseif buff:lower() == 'doom' then
		add_to_chat(123,'You are DOOMED, beg for your life mortal!')
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
        elseif spell.name == 'Sneak' and spell.target.type == 'SELF' then
            windower.ffxi.cancel_buff(71)--[[Cancels Sneak]]
            equip(sets.precast.enhancing)
        elseif spell.name:match('Cure') or spell.name:match('Cura') then
            equip(sets.precast.cure)
        elseif spell.skill == 'Enhancing Magic' then
            equip(sets.precast.enhancing)
        else
            equip(sets.precast)
        end
    elseif spell.type == 'BardSong' then
        equip(sets.precast.songs)
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
        elseif equipSet[spell.name] then
            equipSet = equipSet[spell.name]
			add_to_chat(122,spell.name .. ' Set')
        end
        equip(equipSet)
	elseif sets.JA[spell.name] then
		equipSet = sets.JA[spell.name]
		add_to_chat(122,spell.name .. ' Set')
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
        else
            equip(sets.midcast.haste)
        end
    elseif spell.type == 'BardSong' then
        if spell.name:contains('Ballad') then
            equip(sets.midcast.songs.ballad)
			add_to_chat(122,spell.name .. ' Set')
        elseif spell.name:contains('Paeon') then
            equip(sets.midcast.songs.paeon)
			add_to_chat(122,spell.name .. ' Set')
        elseif spell.name:contains('Minne') then
            equip(sets.midcast.songs.minne)
			add_to_chat(122,spell.name .. ' Set')
        elseif spell.name:contains('Etude') then
            equip(sets.midcast.songs.etude)
			add_to_chat(122,spell.name .. ' Set')
        elseif spell.name:contains('Carol') then
            equip(sets.midcast.songs.carol)
			add_to_chat(122,spell.name .. ' Set')
        elseif spell.name:contains('Lullaby') then
            if spell.name:contains('Foe') then
                equip(sets.midcast.songs.lullaby)
			    add_to_chat(122,spell.name .. ' Set')
            else
                equip(sets.midcast.songs.hlullaby)
			    add_to_chat(122,spell.name .. ' Set')
            end
        elseif spell.name:contains('Requiem') then
            equip(sets.midcast.songs.macc)
			add_to_chat(122,'Requiem Magic Acc Set')
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
		elseif AccArray[AccIndex] == 'HighACC' then
			equipSet = equipSet[AccArray[AccIndex]]
			cidleset = 'High Acc'
			if DWMode then
				equipSet = sets.TP.HighACC.Dual
				cidleset = 'DW HighACC'
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
		aftercast()
	elseif command == 'idle' then
		IdleIndex = (IdleIndex % #IdleArray) + 1
	elseif command == 'sw' then
		windower.send_command('input /equip main \"Naegling\"; wait 1; input /equip sub \"Fusetto +2\"')
		--equip({main="Naegling",sub="Taming Sari"})
	elseif command == 'ca' then
		windower.send_command('input /equip main \"Carnwenhan\"; wait 1; input /equip sub \"Taming Sari\"')
		--equip({main="Carnwenhan",sub="Taming Sari"})
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
    elseif command == 'yellow' then
		equip(sets.precast.songs.yellow)
    elseif command == 'update' then
		aftercast()
    end
	updatedisplay()
end