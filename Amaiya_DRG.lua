function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 3') -- Change Default Macro Book Here

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
	sets.JA["Jump"] = set_combine(sets.Jump,{})
	sets.JA["High Jump"] = set_combine(sets.Jump,{})
	sets.JA["Spirit Jump"] = set_combine(sets.Jump,{})
	sets.JA["Soul Jump"] = set_combine(sets.Jump,{})
	sets.JA["Spirit Link"] = {hands="Peltast's Vambraces"}
	sets.JA["Angon"] = {ammo="Angon"}

	sets.Idle = {
		ammo="Staunch Tathlum +1",
		head="Gleti's Mask",body="Hjarrandi Breastplate",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Gleti's Boots",
		ear1="Odnowa Earring +1",ear2="Etiolation Earring",ring1="Defending Ring",ring2="Gelatinous Ring +1",
		neck="Loricate Torque +1",waist="Flume Belt +1",back={name="Brigantia's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	sets.Idle.Regen = set_combine(sets.Idle,{
		body="Sacro Breastplate",
		ear1="Infused earring",ring1="Sheltered Ring",ring2="Paguroidea Ring",
		neck="Sanctity Necklace"
	})

	sets.Idle.MVMT = {legs="Carmine Cuisses +1"}

	-------------
	-- TP Sets --
	-------------

	sets.TP = {
		ammo="Coiste Bodhar",
		head="Flamma Zucchetto +2",body="Hjarrandi Breastplate",hands="Flamma Manopolas +2",legs="Pteroslaver brais +3",feet="Flamma Gambieras +2",
		ear1="Cessance Earring",ear2="Sherida Earring",ring1="Niqmaddu Ring",ring2="Petrov Ring",
		neck="Anu Torque",waist="Ioskeha Belt +1",back={name="Brigantia's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	sets.TP.HighACC = set_combine(sets.TP,{
		neck="Dragoon's Collar +1"
	})

	sets.TP.Hybrid = set_combine(sets.TP,{
		head="Hjarrandi Helm",body="Hjarrandi Breastplate",hands="Sulevia's Gauntlets +2",legs="Gleti's Breeches",feet="Gleti's Boots",
		waist="Sailfi Belt +1",neck="Dragoon's Collar +1"
	})

	sets.TP.DT = set_combine(sets.TP,{
        head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Odnowa Earring +1",ear2="Etiolation Earring",ring1="Defending Ring",ring2="Patricius Ring",
		neck="Dragoon's Collar +1"
	})

	sets.Jump = set_combine(sets.TP,{
		body="Vishap Mail +2",hands="Vishap Finger Gauntlets +2",legs="Pteroslaver brais +3",feet="Ostro Greaves",
		ear1="Tripudio Earring",ear2="Sherida Earring",ring1="Flamma Ring",ring2="Petrov Ring",
		neck="Anu Torque",waist="Reiki Yotai"
	})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		Ammo="KnobKierrie",
		head="Pteroslaver armet +3",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Moonshade Earring",ear2="Thrud Earring",ring1="Niqmaddu Ring",ring2="Regal Ring",
		neck="Dragoon's Collar +1",waist="Fotia Belt",back={name="Brigantia's Mantle",augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
	}
	
	sets.WS['Stardiver'] = set_combine(sets.WS,{
		ammo="Coiste Bodhar",
		body="Gleti's Cuirass",feet="Gleti's Boots",
		ear2="Sherida Earring",waist="Ioskeha Belt +1",back={name="Brigantia's Mantle",augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10'}}
	})

	sets.WS['Drakesbane'] = set_combine(sets.WS,{
		body="Gleti's Cuirass",hands="Flamma Manopolas +2",feet="Gleti's Boots",
		waist="Ioskeha Belt +1",back={name="Brigantia's Mantle",augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10'}}
	})

	sets.WS['Impulse Drive'] = set_combine(sets.WS,{
        head="Nyame Helm",feet="Nyame Sollerets",
	})

	sets.WS["Camlann's Torment"] = set_combine(sets.WS,{head="Nyame Helm",feet="Nyame Sollerets",ear1="Ishvara Earring"})
	sets.WS['Sonic Thrust'] = set_combine(sets.WS,{head="Nyame Helm",feet="Nyame Sollerets",ear1="Ishvara Earring"})
	sets.WS["Savage Blade"] = set_combine(sets.WS,{head="Nyame Helm",feet="Nyame Sollerets",waist="Sailfi Belt +1"})

	sets.WS['Raiden Thrust'] = set_combine(sets.WS,{
        head="Nyame Helm",feet="Nyame Sollerets",
		ear1="Moonshade Earring",ear2="Friomisi Earring",
		neck="Sanctity Necklace",waist="Eschan Stone"
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
cidleset = 'Load Temp'
CPMode = false
DynaMode = false
local res = require('resources')

function setup_hud()
    job_property = {}
    job_info = {}
    job_info.box={
        pos={x=2725,y=1341},
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
	str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
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
	elseif spell.type == 'WeaponSkill' then
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

		if world.time >= 17*60 or world.time < 7*60 then -- Dusk to Dawn time
			equip({ear2="Lugra Earring +1"})
		end
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
				equipSet = equipSet['HybridGA']
				cidleset = 'Bravura Hybrid'
			else
				equipSet = equipSet['Hybrid']
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
			else
				equipSet = sets.TP
				cidleset = 'LowACC'
			end
		end
		equip(equipSet)
	else
		--if player.hpp > 90 then
			equip(sets.Idle.Regen)
			cidleset = 'Regen Idle'
		--else
			--equip(sets.Idle)
			--cidleset = 'DT Idle'
		--end
	end
    updatedisplay()
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
	elseif command == 'dt' then -- Hybrid Accuracy Level
		AccIndex = 3
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
		cidleset = 'Max DT'
	elseif command == 'lacc' then -- Low Accuracy Level
		AccIndex = 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
	elseif command == 'ga' then
		equip({main="Bravura",sub="Utu Grip"})
	elseif command == 'gs' then
		equip({main="Ragnarok",sub="Utu Grip"})
	elseif command == 'pl' then
		equip({main="Shining One",sub="Utu Grip"})
	elseif command == 'ax' then
		equip({main="Kaja Axe",sub="Purgation"})
	elseif command == 'sw' then
		equip({main="Kaja Sword",sub="Reikiko"})
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
    elseif command == 'update' then
		aftercast()
	end
    updatedisplay()
end