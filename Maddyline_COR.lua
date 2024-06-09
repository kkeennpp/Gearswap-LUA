function get_sets()
    send_command('input /macro book 1;wait .1;input /macro set 9') -- Change Default Macro Book Here --
	send_command('wait 5;input /lockstyleset 14')

	ranged_ws = S{
		"Hot Shot","Split Shot","Sniper Shot","Slug Shot","Blast Shot","Heavy Shot","Detonator",
		"Numbing Shot","Last Stand","Coronach","Trueflight","Wildfire","Leaden Salute","Flaming Arrow",
		"Piercing Arrow","Dulling Arrow","Sidewinder","Blast Arrow","Arching Arrow",
		"Empyreal Arrow","Refulgent Arrow","Apex Arrow","Jishnu's Radiance","Namas Arrow"
	}

	sets.Idle = {
        head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Etiolation Earring",ear2="Infused Earring",ring1="Patricius Ring",ring2="Gelatinous Ring +1",
		neck="Warder's Charm +1",waist="Flume Belt",back={name="Camulus's mantle",augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%'}}
	}

	sets.Idle.Regen = set_combine(sets.Idle,{
		ring1="Sheltered Ring",
		neck="Sanctity Necklace"
	})

	sets.TP = {
		head="Malignance Chapeau",body="Adhemar Jacket +1",hands="Adhemar Wristbands +1",legs="Samnuha Tights",feet="Carmine greaves +1",
		ear1="Cessance Earring",ear2="Suppanomimi",ring1="Epona's Ring",ring2="Ilabrat Ring",
		neck="Asperity Necklace",waist="Sailfi Belt +1",back={name="Camulus's mantle",augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%'}}
	}

	sets.TP.DW = set_combine(sets.TP,{
	})

	sets.TP.DT = set_combine(sets.TP,{
        head="Malignance Chapeau",body="Nyame Mail",hands="Nyame Gauntlets",legs="Malignance Tights",feet="Nyame Sollerets",
	})

	sets.TP.HighACC = set_combine(sets.TP,{
	})

	sets.Idle.MVMT = {legs="Carmine Cuisses +1"}
	
	-------------
	-- Preshot --
	-------------

	sets.Preshot = {
		head="Ikenga's Hat",body="Ikenga's Vest",hands="Ikenga's Gloves",back="Lutian Cape",waist="Impulse Belt",legs="Ikenga's Trousers",feet="Ikenga's Clogs",neck="Commodore charm +1"
	}

	sets.PreshotF1 = set_combine(sets.Preshot,{
	})

	sets.PreshotF2 = set_combine(sets.Preshot,{
	})

	-------------------
    -- Shooting Sets --
	-------------------

	sets.Midshot = {}

	sets.Midshot.LowACC = {
		head="Malignance Chapeau",body="Chasseur's Frac +2",hands="Chasseur's Gants +2",legs="Malignance Tights",feet="Chasseur's Bottes +2",
		ear1="Enervating Earring",ear2="Sherida Earring",ring1="Ilabrat Ring",ring2="Regal Ring",
		neck="Commodore charm +1",waist="Eschan Stone",back={name="Camulus's mantle",augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%'}}
	}

	sets.Midshot.Trippleshot = set_combine(sets.Midshot.LowACC,{
		body="Chasseur's Frac +2",
	})

	sets.Midshot.HighACC = set_combine(sets.Midshot.LowACC,{
	})

	sets.Midshot.Hybrid = set_combine(sets.Midshot.LowACC,{
	})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Ishvara Earring",ear2="Sherida Earring",ring1="Dingir Ring",ring2="Regal Ring",
		neck="Commodore charm +1",waist="Fotia Belt",back={name="Camulus's mantle",augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%'}}
	}

	sets.WS["Decimation"] = set_combine(sets.WS,{
		head="Adhemar Bonnet +1",body="Adhemar Jacket +1",hands="Adhemar Wristbands +1",legs="Samnuha Tights",feet="Herculean Boots",
		ear1="Odr Earring",ear2="Sherida Earring",ring1="Epona's Ring",ring2="Regal Ring",
		neck="Fotia Gorget",waist="Fotia Belt",
	})

    sets.WS['Last Stand'] = set_combine(sets.WS,{
		ammo="Chrono Bullet",
		--ear2="Moonshade Earring",waist="Kwahu Kachina Belt +1"
		ear2="Amini Earring",waist="Kwahu Kachina Belt +1"
	})

	sets.WS['Leaden Salute'] = set_combine(sets.WS,{
		ammo="Living Bullet",
		head="Pixie Hairpin +1",body="Lanun Frac +3",feet="Lanun Bottes +3",
		ear1="Friomisi Earring",ear2="Moonshade Earring",ring1="Dingir Ring",ring2="Archon Ring",
		neck="Commodore charm +1",waist="Eschan Stone",back={name="Camulus's mantle",augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%'}}
	})

	sets.WS['Wildfire'] = set_combine(sets.WS["Leaden Salute"],{head="Nyame Helm",ring2="Regal Ring",waist="Eschan Stone",})
	sets.WS['Hot Shot'] = set_combine(sets.WS["Leaden Salute"],{head="Nyame Helm",ring2="Regal Ring",waist="Eschan Stone",})
	sets.WS['Aeolian Edge'] = set_combine(sets.WS["Leaden Salute"],{head="Nyame Helm",ring2="Regal Ring",waist="Eschan Stone",})

	sets.WS['Savage Blade'] = set_combine(sets.WS,{
		ear2="Moonshade Earring",ring1="Metamorph Ring +1",
		waist="Sailfi Belt +1",
	})

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
	sets.JA['Snake Eye'] = {legs="Lanun Trews"}
    sets.JA['Wild Card'] = {feet="Lanun Bottes +3"}
    sets.JA['Random Deal'] = {body="Lanun Frac +3"}
	sets.JA.Rolls = {
        head="Lanun Tricorne +1",body="Chasseur's Frac +2",hands="Chasseur's Gants +2",legs="Nyame Flanchard",feet="Nyame Sollerets",
        neck="Regal Necklace",ring1="Luzaf's Ring",ring2="Gelatinous Ring +1",back="Camulus's mantle",
	}
	sets.JA.QuickDraw = {
		ammo="Living Bullet",
		head="Malignance Chapeau",body="Lanun Frac +3",hands="Nyame Gauntlets",legs="Malignance Tights",feet="Chasseur's Bottes +2",
		ear1="Friomisi Earring",ear2="Dedition earring",ring1="Dingir Ring",ring2="K'ayres Ring",
		neck="Commodore charm +1",waist="Eschan Stone",back={name="Camulus's mantle",augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon skill damage +10%'}}
	}

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
MeleeMode = false
DWMode = false
FlurryLevel = 1
local res = require('resources')

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
    local str = 'AccMode: \\cs(150,150,255)'..AccArray[AccIndex]..'\\cr'
	str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
	str = str..'\nFlurryLevel: \\cs(150,150,255)'..tostring(FlurryLevel)..'\\cr'
	str = str..'\nDWMode: \\cs(150,150,255)'..tostring(DWMode)..'\\cr'
	str = str..'\nDynaMode: \\cs(150,150,255)'..tostring(DynaMode)..'\\cr'
	str = str..'\nCPMode: \\cs(150,150,255)'..tostring(CPMode)..'\\cr'

    local info = {}
    info.modestates = str

    window:update(info)
end

setup_hud()

--------------------------------------------------------------------------------------------------------------
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

windower.register_event('action',function(action)
    local self = windower.ffxi.get_player().id
    for _, target in ipairs(action.targets) do
        if self == target.id then
            if action.category == 4 then
                local param = action.param
                if param == 845 then
                    FlurryLevel = 1
                elseif param == 846 then
                    FlurryLevel = 2
                end
            end
        end
    end
    updatedisplay()
 end)
         
function precast(spell,action)
	if sets.JA[spell.name] then
		equipSet = sets.JA[spell.name]
		add_to_chat(122,spell.name .. ' Set')
		equip(equipSet)
    elseif spell.name == 'Ranged' then
		equipSet = sets.Preshot

		if player.equipment.ranged == 'Fomalhaut' then
			equip({ammo="Chrono Bullet"})
		elseif player.equipment.ranged == 'Armageddon' then
			equip({ammo="Chrono Bullet"})
		elseif player.equipment.ranged == 'Gastraphetes' then
			equip({ammo="Quelling Bolt"})
		end

		if buffactive['Flurry'] then
			add_to_chat(122,"Flurry " .. FlurryLevel .. " found")
			if FlurryLevel == 1 then
				equipSet = sets.PreshotF1
			elseif FlurryLevel == 2 then
				equipSet = sets.PreshotF2
			end
		else
			add_to_chat(122,"No flurry")
		end
		equip(equipSet)
    elseif spell.type == "WeaponSkill" then
		equipSet = sets.WS
        if equipSet[spell.name] then
            equipSet = equipSet[spell.name]
			add_to_chat(122,spell.name .. ' Set')
			if spell.name == "Savage Blade" then
                equipSet = set_combine(equipSet,{ammo="Hauksbok Arrow"})
			end
		end
        if player.tp > 2750 then
            if spell.name == "Last Stand" then
                equipSet = set_combine(equipSet,{ear1="Ishvara Earring"})
            elseif spell.name == "Leaden Salute" then
				equipSet = set_combine(equipSet,{ear1="Ishvara Earring"})
            elseif spell.name == "Savage Blade" then
				equipSet = set_combine(equipSet,{ear1="Ishvara Earring"})
			end
        end
		if spell.name == "Leaden Salute" and (buffactive['Voidstorm'] or world.weather_element == 'Dark' or world.day_element == 'Dark') then
			add_to_chat(122,'Darkness found')
			equipSet = set_combine(equipSet,{waist="Anrin Obi"})
			--equipSet = set_combine(equipSet,{waist="Hachirin-no-Obi"})
		end
        equip(equipSet)
	elseif (spell.type == "CorsairRoll" or spell.english == "Double-Up") then
		equipSet = sets.JA.Rolls
		add_to_chat(122,spell.name .. ' Set')
		equip(equipSet)
	elseif spell.type == "CorsairShot" then
		equipSet = sets.JA.QuickDraw
		add_to_chat(122,spell.name .. ' Set')
		equip(equipSet)
    end
end

function midcast(spell,action)
    if spell.name == 'Ranged' then
        equipSet = sets.Midshot
        if buffactive.Barrage then
            equipSet = sets.Midshot.Barrage
			add_to_chat(122,"Barrage Set")
			cidleset = 'Barrage Set'
        elseif AccArray[AccIndex] == 'HighACC' then
            equipSet = equipSet[AccArray[AccIndex]]
			add_to_chat(122,AccArray[AccIndex] .. ' Set')
			cidleset = AccArray[AccIndex] .. ' Set'
        elseif AccArray[AccIndex] == 'Crit' then
            equipSet = equipSet[AccArray[AccIndex]]
			add_to_chat(122,AccArray[AccIndex] .. ' Set')
			cidleset = AccArray[AccIndex] .. ' Set'
		elseif buffactive['Double Shot'] then
			equipSet = sets.Midshot.Doubleshot
			cidleset = 'Doubleshot Set'
			add_to_chat(122,"Doubleshot Set")
        else
            equipSet = equipSet[AccArray[AccIndex]]
			cidleset = AccArray[AccIndex] .. ' Set'
		end
		equip(equipSet)
	end
    updatedisplay()
end

function aftercast(spell,action)
	if midaction() then
        return
    end

	if player.status == 'Engaged' then
		if AccArray[AccIndex] == 'Hybrid' then
			equipSet = sets.TP.DT
			cidleset = 'Melee DT'
		elseif AccArray[AccIndex] == 'HighACC' then
			equipSet = sets.TP.HighACC
			cidleset = 'Melee HighACC'
		else
			equipSet = sets.TP
			cidleset = 'Melee LowACC'
			if DWMode then
				equipSet = sets.TP.DW
				cidleset = 'DW LowACC'
			end
		end
		equip(equipSet)
	else
		if player.hpp > 90 then
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
    if new == 'Resting' then
    else
        aftercast()
    end
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
	if command == 'acc' then -- Accuracy Level Toggle
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
	elseif command == 'ax' then
		equip({main="Kaja Axe",sub="Reikiko"})
	elseif command == 'sw' then
		equip({main="Kaja Sword",sub="Reikiko"})
	elseif command == 'melee' then
		if MeleeMode then
			MeleeMode = false
			windower.add_to_chat(8,'----- Melee Mode Disabled -----')
		else
			MeleeMode = true
			windower.add_to_chat(8,'----- Melee Mode Enabled -----')
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
    elseif command == 'update' then
		aftercast()
	end
    updatedisplay()
end