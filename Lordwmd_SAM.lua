AccIndex = 1

AccArray = {"LowACC","HighACC","Hybrid"}

cidleset = 'Load Temp'
local res = require('resources')

-- HUD Setups
hud_x_pos = 1000	--important to update these if you have a smaller screen
hud_y_pos = 90		--important to update these if you have a smaller screen
hud_draggable = true
hud_font_size = 10
hud_transparency = 200 -- a value of 0 (invisible) to 255 (no transparency at all)

-- Additional local binds
	windower.send_command('bind ^` input /ja "Hasso" <me>')
	windower.send_command('bind !` input /ja "Seigan" <me>')
	
function file_unload() -- Unbinds your keybinds on unload.
    windower.send_command('unbind ^`')
    windower.send_command('unbind !`')
end

function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 10') -- Change Default Macro Book Here
	send_command('wait 5;input /lockstyleset 6')


	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
	sets.JA['Meditate'] = {head="Myochin Kabuto",hands="Saotome Kote"}
	sets.JA['Provoke'] = {
		head="Arh. Jinpachi +1",neck="Harmonia's Torque",left_ear="Hades Earring +1",right_ear="Hades Earring +1",
		body="Yasha Samue +1",hands="Yasha Tekko +1",left_ring="Mermaid Ring",
		back="Cerb. Mantle +1",waist="Warwolf Belt",legs="Yasha Hakama +1",feet="Ysh. Sune-Ate +1"
	}

	sets.Idle = {
		head="Nocturnus Helm",
		body={ name="Kirin's Osode", augments={'"Regen"+2','Evasion+5','Accuracy+5',}},
		hands="Seiryu's Kote",
		legs="Track Pants +1",
		neck="Orochi Nodowa",
		waist="Lycopodium Sash",
		left_ear="Merman's Earring",
		right_ear="Merman's Earring",
		left_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -6%','Breath dmg. taken -6%',}},
		right_ring="Defending Ring",
		back="Shadow Mantle"
	}

	sets.Idle.Regen = set_combine(sets.Idle,{
	})
	
    sets.Idle.Resting = set_combine(sets.Idle,{
		ammo="Bibiki Seashell", head="Arh. Jinpachi +1", neck="Orochi Nodowa +1",  lear="Merman's Earring", rear="Merman's Earring", 
		body="Arhat's Gi +1", hands="Dst. Mittens +1", ring1="Merman's Ring", ring2="Merman's Ring",
		back="Lamia Mantle +1", waist="Resolute Belt", legs="Coral Cuisses +1", feet="Coral Greaves +1"
	})

	sets.Idle.Weak = set_combine(sets.Idle,{
		ammo="Bibiki Seashell", head="Arh. Jinpachi +1", neck="Orochi Nodowa +1",  lear="Merman's Earring", rear="Merman's Earring", 
		body="Arhat's Gi +1", hands="Dst. Mittens +1", ring1="Merman's Ring", ring2="Merman's Ring",
		back="Lamia Mantle +1", waist="Resolute Belt", legs="Coral Cuisses +1", feet="Coral Greaves +1"
	})

	sets.Idle.DT = set_combine(sets.Idle,{})

	-------------
	-- TP Sets --
	-------------

	sets.TP = {
		ammo="Kabura Arrow",
		head="Walahra Turban",
		body="Usukane Haramaki",
		hands="Dusk Gloves +1",
		legs={ name="Byakko's Haidate", augments={'"Store TP"+5','MND+3',}},
		feet="Usukane Sune-Ate",
		neck="Ancient Torque",
		waist="Ninurta's Sash",
		left_ear="Fowling Earring",
		right_ear="Brutal Earring",
		left_ring="Mars's Ring",
		right_ring="Rajas Ring",
		back="Cerb. Mantle +1"
	}

	sets.TP.HighACC = set_combine(sets.TP,{
	})

	sets.TP.Hybrid = set_combine(sets.TP,{
	})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		head={ name="Shr.Znr.Kabuto +1", augments={'Weapon skill damage +3%','"Conserve TP"+6','Attack+4',}},
		body="Usukane Haramaki",
		hands="Hachiman Kote +1",
		legs="Hachiryu Haidate",
		feet="Usukane Sune-Ate",
		neck="Justice Torque",
		waist={ name="Warwolf Belt", augments={'MP+17',}},
		left_ear={ name="Attila's Earring", augments={'STR+1','AGI+2',}},
		right_ear="Brutal Earring",
		left_ring={ name="Flame Ring", augments={'HP+15',}},
		right_ring="Rajas Ring",
		back="Cerb. Mantle +1"
	}

	sets.WS['Tachi: Kasha'] = set_combine(sets.WS,{
	})
	sets.WS['Tachi: Rana'] = set_combine(sets.WS,{
	})

	sets.WS['Namas Arrow'] = set_combine(sets.WS,{
		ammo="Kabura Arrow",
		head={ name="Shr.Znr.Kabuto +1", augments={'Weapon skill damage +3%','"Conserve TP"+6','Attack+4',}},
		body={ name="Kirin's Osode", augments={'"Regen"+2','Evasion+5','Accuracy+5',}},
		hands="Seiryu's Kote",
		legs="Hachiryu Haidate",
		feet="Hachiryu Sune-Ate",
		neck="Fotia Gorget",
		waist="Buccaneer's Belt",
		left_ear="Altdorf's Earring",
		right_ear="Wilhelm's Earring",
		left_ring="Bellona's Ring",
		right_ring="Rajas Ring",
		back="Amemet Mantle +1"
	})

	---------------
	-- Aftercast --
	---------------

    sets.aftercast = {}
end

--------------------------------------------------------------------------------------------------------------
-- HUD STUFF
--------------------------------------------------------------------------------------------------------------

function setup_hud()
    job_property = {}
    job_info = {}
    job_info.box={
        pos={x=hud_x_pos,y=hud_y_pos},
        text={font='Segoe UI Symbol', size=hud_font_size, Fonts={'sans-serif'},},
        bg={alpha=hud_transparency,red=0,green=0,blue=0},
        flags={draggable=hud_draggable},
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
	str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'

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
					equip({neck="Berserkers Torque"})
					add_to_chat(123,'Berserkers Torque equiped')
				end
			end
        elseif not gain then
            aftercast()
        end
    elseif buff:lower() == 'doom' then
		add_to_chat(123,'You are DOOMED, beg for your life mortal!')
    elseif buff:lower() == 'weakness' then
        if gain then
            equip(sets.Idle.Weak)
			add_to_chat(123,'Weakness Gear Equiped')
        elseif not gain then
            aftercast()
        end
	end
    updatedisplay()
end
         
function precast(spell,action)
	if sets.JA[spell.name] then
		equipSet = sets.JA[spell.name]
		add_to_chat(122,spell.name .. ' Set')
		equip(equipSet)
	elseif spell.type == 'WeaponSkill' then
		equipSet = sets.WS
		if AccArray[AccIndex] == 'HighACC' then
			if sets.WS[spell.name].HighACC then
				equipSet = equipSet[spell.name].HighACC
				add_to_chat(122,spell.name .. ' HighACC Set')
			elseif equipSet[spell.name] then
				equipSet = equipSet[spell.name]
				add_to_chat(122,spell.name .. ' Set')
			end
		else
			if equipSet[spell.name] then
				equipSet = equipSet[spell.name]
				add_to_chat(122,spell.name .. ' Set')
			end
		end
		equip(equipSet)

	elseif spell.type =='Ninjutsu' then
	elseif spell.type:contains('Magic') then
	end
end

function midcast(spell,action)
end

function aftercast(spell,action)
	if midaction() then
        return
    end

	if player.status == 'Engaged' then
		equipSet = sets.TP
		if AccArray[AccIndex] == 'Hybrid' then
			if player.equipment.main == 'Bravura' and buffactive['Aftermath'] then
				equipSet = sets.TP.Hybrid.Bravura
				cidleset = 'Bravura Hybrid'
			elseif player.equipment.main == 'Conqueror' then
				equipSet = sets.TP.Hybrid.Conqueror
				cidleset = 'Conqueror Hybrid'
			else
				equipSet = sets.TP.Hybrid
				cidleset = 'Hybrid'
			end
		elseif AccArray[AccIndex] == 'HighACC' then
			equipSet = equipSet[AccArray[AccIndex]]
			cidleset = 'High Acc'
		else
			if player.equipment.main == 'Ragnarok' then
				equipSet = sets.TP.Ragnarok
				cidleset = 'Ragnarok LowACC'
			elseif player.equipment.main == 'Bravura' then
				equipSet = sets.TP.Bravura
				cidleset = 'Bravura LowACC'
			elseif player.equipment.main == 'Conqueror' then
				equipSet = sets.TP.Conqueror
				cidleset = 'Conqueror LowACC'
			elseif player.equipment.main == 'Quint Spear' then
				equipSet = sets.TP.Conqueror
				cidleset = 'STP LowACC'
			elseif player.equipment.main == 'Kinship Axe' then
				equipSet = sets.TP.Conqueror
				cidleset = 'STP LowACC'
			else
				equipSet = sets.TP
				cidleset = 'LowACC'
			end
		end
		equip(equipSet)
	else
		if player.hpp > 80 then
			equip(sets.Idle.Regen)
			cidleset = 'Regen Idle'
		else
			equip(sets.Idle)
			cidleset = 'DT Idle'
		end
	end
    updatedisplay()
end
 
function status_change(new,old)
    if new == 'Engaged' then
        aftercast()
    elseif new == 'Resting' then
        equip(sets.Idle.Resting)
		cidleset = 'Resting'
		updatedisplay()
    else
        aftercast()
    end
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command)
function self_command(command)
	if command == 'acc' then -- Accuracy Level Toggle
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
	elseif command == 'dt' then -- Hybrid Accuracy Level
		AccIndex = 3
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
		cidleset = 'Max DT'
	elseif command == 'lacc' then -- Low Accuracy Level
		AccIndex = 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
	elseif command == 'pl' then
		equip({main="Shining One",sub="Utu Grip"})
    elseif command == 'update' then
		aftercast()
	end
    updatedisplay()
end