function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 2') -- Change Default Macro Book Here
	send_command('wait 5;input /lockstyleset 9')
	
	---------------
	-- Idle Sets --
	---------------

	sets.JA = {}

	sets.Idle = {
		main="Ruler",sub="Terror Shield",ammo="Charitoni Sling",
		head="Valhalla Helm",body="Valhalla Brstplate",hands="Koenig Handschuhs",legs="Koenig Diechlings",feet="Askar Gambieras",
		ear1="Arete del Sol",ear2="Eta Earring",ring1="Shadow Ring",ring2="Jelly Ring",
		neck="Parade Gorget",waist="Trance Belt",back="Shadow Mantle",
	}

	sets.Idle.Regen = set_combine(sets.Idle,{
	})

	sets.Idle.Block = set_combine(sets.Idle,{
		main="Sinfender",sub="Terror Shield",
		head="Koenig Schaller",body="Koenig Cuirass",hands="Koenig Handschuhs",legs="Koenig Diechlings",feet="Gallant Leggings +1",
		ear1="Paramount Earring",ear2="Buckler Earring",ring1="Bomb Queen Ring",ring2="Jelly Ring",
		neck="Shield Torque",back="Boxer's Mantle",
	})

	sets.Idle.MEva = set_combine(sets.Idle,{
		head="Valhalla Helm",body="Nocturnus Mail",hands="Iron Ram Dastanas",
		ear1="Bloodbead Earring",ear2="Cassie Earring",ring1="Shadow Ring",ring2="Minerva's Ring",
		neck="Ritter Gorget",back="Lamia Mantle +1",
	})

	sets.Idle.MVMT = {legs="Crimson Cuisses"}

	-------------
	-- TP Sets --
	-------------

	sets.TP = {}

	sets.TP.LowACC = {
		ammo="Goblin Cracker",
		head="Walahra Turban",body="Nocturnus Mail",hands="Dusk Gloves +1",legs="Homam Cosciales",feet="Homam Gambieras",
		ear1="Spinel Earring",ear2="Brutal Earring",ring1="Toreador's Ring",ring2="Mars's Ring",
		neck="Ancient Torque",waist="Ninurta's Sash",back="Cuchulain's Mantle",
	}

	sets.TP.LowACC.Dual = set_combine(sets.TP.LowACC,{ear1="Suppanomimi"})

	sets.TP.PDT = {
		main="Sinfender",sub="Terror Shield",ammo="Charitoni Sling",
		head="Koenig Schaller",body="Koenig Cuirass",hands="Koenig Handschuhs",legs="Koenig Diechlings",feet="Gallant Leggings +1",
		ear1="Paramount Earring",ear2="Eta Earring",ring1="Bomb Queen Ring",ring2="Jelly Ring",
		neck="Shield Torque",waist="Trance Belt",back="Boxer's Mantle",
	}

	sets.TP.MDT = {
		main="Sinfender",sub="Terror Shield",ammo="Charitoni Sling",
		head="Koenig Schaller",body="Nocturnus Mail",hands="Iron Ram Dastanas",legs="Koenig Diechlings",feet="Gallant Leggings +1",
		ear1="Paramount Earring",ear2="Cassie Earring",ring1="Shadow Ring",ring2="Minerva's Ring",
		neck="Shield Torque",waist="Trance Belt",back="Lamia Mantle +1",
	}

	sets.TP.DT = set_combine(sets.Idle,{
	})

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
		ammo="Charitoni Sling",
		head="Koenig Schaller",body="Koenig Cuirass",hands="Koenig Handschuhs",legs="Homam Cosciales",feet="Askar Gambieras",
		ear1="Paramount Earring",ear2="Loquacious Earring",ring1="Bomb Queen Ring",ring2="Jelly Ring",
		neck="Ritter Gorget",waist="Trance Belt",back="Shadow Mantle",
	}

	sets.Precast.Cure = set_combine(sets.Precast,{
	})

	-------------
	-- Midcast --
	-------------

    sets.Midcast = {}

	sets.Midcast.enm = {
		main="Macuahuitl +1",sub="Terror Shield",ammo="Charitoni Sling",
		head="Bahamut's Mask",body="Hydra Haubert",hands="Hydra Moufles",legs="Hydra Brayettes",feet="Hydra Sollerets",
		ear1="Paramount Earring",ear2="Hades Earring +1",ring1="Bomb Queen Ring",ring2="Hercules' Ring",
		neck="Ritter Gorget",waist="Trance Belt",back="Valor Cape",
	}

	sets.Midcast.phx = {
	}

	sets.Midcast.Flash = set_combine(sets.Midcast.enm,{
		head="Walahra Turban",ear2="Loquacious Earring",hands="Homam Manopolas",waist="Ninurta's Sash",
	})

	sets.Midcast.Reprisal = set_combine(sets.Precast,{
		head="Walahra Turban",body="Koenig Cuirass",hands="Dusk Gloves +1",legs="Gallant Breeches +1",feet="Homam Gambieras",
		ring1="Blitz Ring",
		neck="Colossus's Torque",waist="Ninurta's Sash",
	})

	sets.Midcast.Cure = set_combine(sets.Precast,{
		main="Macuahuitl +1",sub="Terror Shield",ammo="Charitoni Sling",
		head="Valor Coronet",legs="Koenig Diechlings",
		ear1="Hospitaler Earring",ring1="Bomb Queen Ring",ring2="Hercules' Ring",
		neck="Colossus's Torque",waist="Trance Belt",back="Altruistic Cape",
	})

	sets.Midcast.Enhancing = set_combine(sets.Precast,{
		legs="Gallant Breeches +1",
		ear1="Hospitaler Earring",
		neck="Colossus's Torque",back="Merciful Cape",
	})

	sets.Midcast.MAB = {
	}

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
	sets.JA['Provoke'] = set_combine(sets.Midcast.enm,{})
	sets.JA['Shield Bash'] = set_combine(sets.Midcast.enm,{hands="Valor Gauntlets",ring1="Fenian Ring"})
	sets.JA['Sentinel'] = set_combine(sets.Midcast.enm,{feet="Caballarius Leggings +1"})
	sets.JA['Rampart'] = set_combine(sets.Midcast.enm,{head="Valor Coronet"})
	sets.JA['Invincible'] = set_combine(sets.Midcast.enm,{})
	sets.JA['Intervene'] = set_combine(sets.Midcast.enm,{})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
	}

	sets.WS["Savage Blade"] = set_combine(sets.WS,{
		ammo="Charitoni Sling",
		head="Nocturnus Helm",body="Shadow Brstplate",hands="Hecatomb Mittens",legs="Hecatomb Subligar",feet="Hecatomb Leggings",
		ear1="Triumph Earring",ear2="Fowling Earring",ring1="Strigoi Ring",ring2="Mars's Ring",
		neck="Fotia Gorget",waist="Fierce Belt",back="Cerberus Mantle +1",
	})

	sets.WS["Atonement"] = set_combine(sets.WS,{
		ammo="Charitoni Sling",
		head="Bahamut's Mask",body="Hydra Haubert",hands="Hydra Moufles",legs="Hydra Brayettes",feet="Hydra Sollerets",
		ear1="Paramount Earring",ear2="Eta Earring",ring1="Bomb Queen Ring",ring2="Hercules' Ring",
		neck="Ritter Gorget",waist="Trance Belt",back="Valor Cape",
	})

	sets.WS["Spirits Within"] = set_combine(sets.WS,{
		ammo="Charitoni Sling",
		head="Valhalla Helm",body="Valhalla Brstplate",hands="Koenig Handschuhs",legs="Koenig Diechlings",feet="Dusk Ledelsens +1",
		ear1="Bloodbead Earring",ear2="Cassie Earring",ring1="Bomb Queen Ring",ring2="Bloodbead Ring",
		neck="Ritter Gorget",waist="Trance Belt",back="Valor Cape",
	})

	sets.WS["Seraph Strike"] = set_combine(sets.WS["Sanguine Blade"],{head="Nyame Helm",ring1="Metamorph Ring +1",ring2="Weatherspoon Ring",})

	---------------
	-- Aftercast --
	---------------

    sets.aftercast = {}

end

--------------------------------------------------------------------------------------------------------------
-- HUD STUFF
--------------------------------------------------------------------------------------------------------------

IdleIndex = 1
AccIndex = 1
AccArray = {"PDT","MDT","LowACC"}
IdleArray = {'Auto','Block','MEva'}
cidleset = 'Load Temp'
DWMode = false
MeleeMode = false
sirdMode = false
CPMode = false
DynaMode = false
local res = require('resources')

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
	local str = 'IdleMode: \\cs(150,150,255)'..IdleArray[IdleIndex]..'\\cr'
	str = str..'\nAccMode: \\cs(150,150,255)'..AccArray[AccIndex]..'\\cr'
	str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
	str = str..'\nDWMode: \\cs(150,150,255)'..tostring(DWMode)..'\\cr'
	str = str..'\nMeleeMode: \\cs(150,150,255)'..tostring(MeleeMode)..'\\cr'

    local info = {}
    info.modestates = str

    window:update(info)
end

setup_hud()

--------------------------------------------------------------------------------------------------------------
--End Hud Stuff
--------------------------------------------------------------------------------------------------------------
 
 function sub_job_change(new,old)
	if player.sub_job == 'BLU' then
	end

	updatedisplay()
end

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
	elseif spell.type:contains('Magic') or spell.type =='Ninjutsu' then
        if spell.name:contains('Cure') or spell.name:contains('Cura') then
            equip(sets.Precast.Cure)
		else
			equip(sets.Precast)
		end
	end
    updatedisplay()
end

function midcast(spell,action)
	if spell.name:contains('Cure') or spell.name:contains('Cura') then
		equip(sets.Midcast.Cure)
    elseif spell.name:match('Flash') then
		equip(sets.Midcast.Flash)
    elseif spell.name:match('Phalanx') then
		equip(sets.Midcast.phx)
    elseif spell.name:match('Reprisal') then
		equip(sets.Midcast.Reprisal)
	elseif spell.skill == 'Blue Magic' then
		equip(sets.Midcast.Flash)
	elseif spell.skill == "Enhancing Magic" then
		equip(sets.Midcast.Enhancing)
    elseif spell.type == 'BlackMagic' then
		if spell.skill == "Elemental Magic" then
			equip(sets.Midcast.MAB)
		end
	end
    updatedisplay()
end

function aftercast(spell,action)
	if midaction() then
        return
    end

	if player.status == 'Engaged' then
		equipSet = sets.TP
		if AccArray[AccIndex] == 'PDT' then
			equipSet = equipSet.PDT
			cidleset = AccArray[AccIndex] .. ' Set'
		elseif AccArray[AccIndex] == 'MDT' then
			equipSet = equipSet.MDT
			cidleset = AccArray[AccIndex] .. ' Set'
		else
			equipSet = equipSet.LowACC
			cidleset = AccArray[AccIndex] .. ' Set'
			if DWMode then
				equipSet = equipSet.Dual
				cidleset = AccArray[AccIndex] .. ' DW Set'
			end
		end
		equip(equipSet)
	else
		if IdleArray[IdleIndex] == 'Auto' then
			if player.hpp > 85 then
				equip(sets.Idle.Regen)
				cidleset = 'Regen Idle'
			else
				equip(sets.Idle)
				cidleset = 'DT Idle'
			end
		elseif IdleArray[IdleIndex] == 'Block' then
			equip(sets.Idle.Block)
			cidleset = 'Shield Block Idle'
		elseif IdleArray[IdleIndex] == 'MEva' then
			equip(sets.Idle.MEva)
			cidleset = 'MEva Idle'
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
	if command == 'acc' then -- Accuracy Level Toggle
		AccIndex = (AccIndex % #AccArray) + 1
		windower.add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
	elseif command == 'idle' then
		IdleIndex = (IdleIndex % #IdleArray) + 1
		windower.add_to_chat(158,'Idle Mode: ' .. IdleArray[IdleIndex])
		aftercast()
    elseif command == 'melee' then
        if MeleeMode then
            MeleeMode = false
            enable('main','sub')
            windower.add_to_chat(158,'----- Weapons Unlocked, WILL lose TP -----')
        else
            MeleeMode = true
            disable('main','sub')
            windower.add_to_chat(158,'----- Weapons Locked, WILL NOT lose TP -----')
        end
    elseif command == 'dw' then
        if DWMode then
            DWMode = false
            windower.add_to_chat(158,'----- DualWield Mode Disabled -----')
        else
            DWMode = true
            windower.add_to_chat(158,'----- DualWield Mode Enabled -----')
        end
	elseif command == 'gs' then
		equip({main="Caladbolg",sub="Utu Grip"})
	elseif command == 'sw' then
		equip({main="Sakpata's Sword",sub="Priwen"})
	elseif command == 'pdt' then
		equip(sets.Idle)
	elseif command == 'mdt' then
		equip(sets.Idle.MEva)
    elseif command == 'update' then
		aftercast()
	end
    updatedisplay()
end