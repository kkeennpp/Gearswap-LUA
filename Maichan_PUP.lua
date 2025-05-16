function get_sets()
 
	send_command('input /macro book 2;wait .1;input /macro set 9')
	send_command('wait 5;input /lockstyleset 11')

	auto_ranged_ws=S{'Healing Ruby','Raise II','Aerial Armor','Reraise II','Whispering Wind','Glittering Ruby','Earthen Ward','Spring Water','Healing Ruby II'}

	auto_melee_ws=S{'Healing Ruby','Raise II','Aerial Armor','Reraise II','Whispering Wind','Glittering Ruby','Earthen Ward','Spring Water','Healing Ruby II'}
	
	---------------
	-- Idle Sets --
	---------------

	sets.JA = {}

	sets.Idle = {
        range="Animator +1",ammo="Automat. Oil +2",
        head="Pantin Taj +1",body="Avalon Breastplate",hands="Pantin Dastanas +1",legs="Usukane Hizayoroi",feet="Pantin Babouches +1",
        ear1="Ruby Earring",ear2="Bloodbead Earring",ring1="Shadow Ring",ring2={name="Dark Ring",augments={'Magic dmg. taken -3%','Breath dmg. taken -4%','Phys. dmg. taken -5%'}},
        neck="Orochi Nodowa",waist="Ninurta's Sash",back="Shadow Mantle",
	}

	sets.Idle.Regen = set_combine(sets.Idle,{
	})

	sets.Idle.AutoPhy = set_combine(sets.Idle,{
		head="Anwig Salade",body="Pantin Tobe +1",hands="Pantin Dastanas +1",legs="Genta-no-hakama",
		ear1="Ruby Earring",
		neck="Nitid Choker",back="Pantin Cape",
	})

	sets.Idle.AutoMAB = set_combine(sets.Idle,{
		legs="Pantin Churidars",feet="Pantin Babouches +1",
	})

	sets.Idle.MVMT = {feet="Hermes' Sandals"}

	-------------
	-- TP Sets --
	-------------

	sets.TP = {}

	sets.TP.LowACC = {
        range="Animator +1",ammo="Automat. Oil +2",
        head="Usukane Somen",body="Usukane Haramaki",hands="Usukane Gote",legs="Usukane Hizayoroi",feet="Usukane Sune-Ate",
		ear1="Spinel Earring",ear2="Brutal Earring",ring1="Toreador's Ring",ring2="Mars's Ring",
		neck="Tiercel Necklace",waist="Ninurta's Sash",back="Pantin Cape",
	}

	sets.TP.Auto = set_combine(sets.TP.LowACC,{
		head="Walahra Turban",body="Pantin Tobe +1",hands="Pantin Dastanas +1",
		neck="Faith Torque",
	})

	sets.TP.AutoTank = set_combine(sets.TP.LowACC,{
		head="Anwig Salade",body="Pantin Tobe +1",hands="Pantin Dastanas +1",
		neck="Faith Torque",
	})

	sets.TP.HighAcc = set_combine(sets.TP.LowACC,{
		neck="Ancient Torque",
	})

	sets.TP.DT = set_combine(sets.Idle,{
	})

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
	}

	sets.Precast.Pet = set_combine(sets.Precast,{
	})

	-------------
	-- Midcast --
	-------------

    sets.Midcast = {}

	sets.Midcast.AutoMAB = {
	}

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
	sets.JA['Repair'] = {ammo="Automat. Oil +2",feet="Puppetry Babouches +1",ear1="Guignol Earring"}
	sets.JA['Aggressor'] = {body="Agoge Lorica +3",head="Pummeler's Mask +3"}
	sets.Precast.Maneuver = {hands="Puppetry Dastanas +1",neck="Buffoon's collar'"}

	sets.Precast.Waltz = {
	}

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
        range="Animator +1",ammo="Automat. Oil +2",
		head="Gnadbhod's Helm",body="Usukane Haramaki",hands="Enkidu's Mittens",legs="Usukane Hizayoroi",feet="Setanta's Ledelsens",
		ear1="Triumph Earring",ear2="Brutal Earring",ring1="Strigoi Ring",ring2="Mars's Ring",
		neck="Fotia Gorget",waist="Potent belt",back="Pantin Cape",
	}

	sets.WS["Howling Fist"] = set_combine(sets.WS,{
	})

	sets.WS["Raging Fists"] = set_combine(sets.WS,{
	})

	sets.WS["Tornado Kick"] = set_combine(sets.WS,{
		neck="Faith Torque",
	})

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
AccArray = {"LowACC","HighACC","Mixed","Tank"}
IdleArray = {'Auto','AutoPhy','AutoMAB'}
cidleset = 'Load Temp'
MeleeMode = false
local res = require('resources')

function setup_hud()
    job_property = {}
    job_info = {}
    job_info.box={
        pos={x=2725,y=1315},
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
		
		if player.equipment.main == 'Acantha Shavers' then
			equip({ear1="Supremacy Earring"})
		end
	elseif spell.type:contains('Magic') or spell.type =='Ninjutsu' then
		equip(sets.Precast)
	elseif spell.name:contains('Waltz') then
		equip(sets.Precast.Waltz)
	elseif spell.name:contains('Maneuver') then
		equip(sets.Precast.Maneuver)
	end
    updatedisplay()
end

function midcast(spell,action)
	if spell.name:contains('Cure') or spell.name:contains('Cura') then
		equip(sets.Midcast.Cure)
    elseif spell.name:match('Flash') then
		equip(sets.Midcast.Flash)
	end
    updatedisplay()
end

function aftercast(spell,action)
	if midaction() then
        return
    end

	if player.status == 'Engaged' then
		equipSet = sets.TP
		if AccArray[AccIndex] == 'HighACC' then
			equipSet = sets.TP.HighAcc
			cidleset = 'Melee HighACC'
		elseif AccArray[AccIndex] == 'Mixed' then
			equipSet = sets.TP.Auto
			cidleset = 'Auto Haste'
		elseif AccArray[AccIndex] == 'Tank' then
			equipSet = sets.TP.AutoTank
			cidleset = 'Auto Tank'
		else
			equipSet = sets.TP.LowACC
			cidleset = 'Melee LowACC'
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
		elseif IdleArray[IdleIndex] == 'AutoPhy' then
			equip(sets.Idle.AutoPhy)
			cidleset = 'Auto Physical Idle'
		elseif IdleArray[IdleIndex] == 'AutoMAB' then
			equip(sets.Idle.AutoMAB)
			cidleset = 'Auto Magic Idle'
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
		aftercast()
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
	elseif command == 'weap' then
		equip({main="Pygme Sainti",range="Animator +1",ammo="Automat. Oil +2"})
	elseif command == 'lacc' then -- Low Accuracy Level
		AccIndex = 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
    elseif command == 'update' then
		aftercast()
	end
    updatedisplay()
end