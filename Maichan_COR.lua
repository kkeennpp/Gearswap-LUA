function get_sets()
    send_command('input /macro book 1;wait .1;input /macro set 9') -- Change Default Macro Book Here --
	send_command('wait 5;input /lockstyleset 13')

	ranged_ws = S{
		"Hot Shot","Split Shot","Sniper Shot","Slug Shot","Blast Shot","Heavy Shot","Detonator",
		"Numbing Shot","Last Stand","Coronach","Trueflight","Wildfire","Leaden Salute","Flaming Arrow",
		"Piercing Arrow","Dulling Arrow","Sidewinder","Blast Arrow","Arching Arrow",
		"Empyreal Arrow","Refulgent Arrow","Apex Arrow","Jishnu's Radiance","Namas Arrow"
	}

	ranged_mws = S{
		"Hot Shot","Trueflight","Wildfire","Leaden Salute","Flaming Arrow"
	}

	sets.Idle = {
		head="Darksteel Cap +1",body="Darksteel Harness +1",hands="Darksteel Mittens +1",legs="Darksteel Subligar +1",feet="Darksteel Leggings +1",
		ear1="Novia Earring",ear2="Bloodbead Earring",ring1="Shadow Ring",ring2="Dark Ring",
		neck="Orochi Nodowa",waist="Ninurta's Sash",back="Shadow Mantle",
	}

	sets.Idle.Regen = set_combine(sets.Idle,{
	})

	sets.TP = {
		head="Walahra Turban",body="Skadi's Cuirie",hands="Dusk Gloves +1",legs="Barbarossa's Zerehs",feet="Prishe's Boots +1",
		ear1="Spinel Earring",ear2="Brutal Earring",ring1="Toreador's Ring",ring2="Mars's Ring",
		neck="Tiercel Necklace",waist="Ninurta's Sash",back="Cuchulain's Mantle",
	}

	sets.TP.DW = set_combine(sets.TP,{
		ear1="Suppanomimi",
	})

	sets.TP.DT = set_combine(sets.Idle,{
	})

	sets.TP.HighACC = set_combine(sets.TP,{
		head="Optical Hat",body="Skadi's Cuirie",hands="Dusk Gloves +1",legs="Skadi's Chausses",feet="Setanta's Ledelsens",
		neck="Ancient Torque",
	})
	
	sets.Idle.MVMT = {feet="Skadi's Jambeaux"}
	
	-------------
	-- Preshot --
	-------------

	sets.Preshot = {
		ammo="Corsair Bullet",
		head="Zha'Go's Barbut",body="Ebon Jerkin",hands="Commodore Gants +1",
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
		ammo="Corsair Bullet",
		head="Zha'Go's Barbut",body="Skadi's Cuirie",hands="Blood Finger Gauntlets",legs="Skadi's Chausses",feet="Ebon Socks",
		ear1="Suppanomimi",ear2="Drone Earring",ring1="Blobnag Ring",ring2="Bellona's Ring",
		neck="Faith Torque",waist="Commodore Belt",back="Amemet Mantle +1",
	}

	sets.Midshot.HighACC = set_combine(sets.Midshot.LowACC,{
		head="Optical Hat",body="Skadi's Cuirie",legs="Dusk Trousers",feet="Skadi's Jambeaux",
		back="Jaeger Mantle",
	})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		head="Gnadbhod's Helm",body="Enkidu's Harness",hands="Skadi's bazubands",legs="Enkidu's Subligar",feet="Setanta's Ledelsens",
		ear1="Triumph Earring",ear2="Brutal Earring",ring1="Strigoi Ring",ring2="Mars's Ring",
		neck="Fotia Gorget",waist="Potent belt",back="Cerberus Mantle +1",
	}

	sets.WS["Evisceration"] = set_combine(sets.WS,{
	})

	sets.WS["Detonator"] = set_combine(sets.WS,{
		ammo="Steel Bullet",
		head="Skadi's Visor",body="Skadi's Cuirie",hands="Skadi's Bazubands",legs="Enkidu's Subligar",feet="Enkidu's Leggings",
		ear1="Ruby Earring",ear2="Drone Earring",ring1="Blobnag Ring",ring2="Bellona's Ring",
		neck="Fotia Gorget",waist="Commodore Belt",back="Amemet Mantle +1",
	})

	sets.WS["Slug Shot"] = set_combine(sets.WS["Detonator"],{
	})

	sets.WS['Leaden Salute'] = set_combine(sets.WS,{
		ammo="Corsair Bullet",
		head="Skadi's Visor",body="Skadi's Cuirie",hands="Skadi's bazubands",legs="Denali Kecks",feet="Enkidu's Leggings",
		ear1="Novio Earring",ear2="Moldavite Earring",ring1="Blobnag Ring",ring2="Psi Ring",
		neck="Uggalepih Pendant",waist="Salire Belt",back="Commander's Cape",
	})

	sets.WS['Hot Shot'] = set_combine(sets.WS["Leaden Salute"],{})

	sets.WS['Savage Blade'] = set_combine(sets.WS,{
	})

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
	sets.JA['Snake Eye'] = {}
    sets.JA['Wild Card'] = {}
    sets.JA['Random Deal'] = {body="Commodore Frac +1"}
	sets.JA.Rolls = {
        head="Commodore Tricorne +1",ring1="Luzaf's Ring"
	}
	sets.JA.QuickDraw = {
		ammo="Steel Bullet",
		head="Enkidu's Cap",body="Skadi's Cuirie",hands="Skadi's bazubands",legs="Skadi's Chausses",feet="Enkidu's Leggings",
		ear1="Novio Earring",ear2="Moldavite Earring",ring1="Blobnag Ring",ring2="Psi Ring",
		neck="Almah Torque",waist="Salire Belt",back="Commander's Cape",
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
MeleeMode = false
DWMode = false
FlurryLevel = 1
local res = require('resources')

if player.sub_job == 'NIN' then
    DWMode = true
    windower.add_to_chat(8,'----- DualWield Mode Enabled -----')
elseif player.sub_job == 'DNC' then
    DWMode = true
    windower.add_to_chat(8,'----- DualWield Mode Enabled -----')
end


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
    local str = 'AccMode: \\cs(150,150,255)'..AccArray[AccIndex]..'\\cr'
	str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
	str = str..'\nFlurryLevel: \\cs(150,150,255)'..tostring(FlurryLevel)..'\\cr'
	str = str..'\nDWMode: \\cs(150,150,255)'..tostring(DWMode)..'\\cr'

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
		end
		if spell.name == "Leaden Salute" and (buffactive['Voidstorm'] or world.weather_element == 'Dark' or world.day_element == 'Dark') then
			add_to_chat(122,'Darkness found')
			--equipSet = set_combine(equipSet,{waist="Anrin Obi"})
			--equipSet = set_combine(equipSet,{waist="Hachirin-no-Obi"})
		end
        equip(equipSet)
		
		if (player.equipment.ranged == 'Murderer') and (not ranged_mws:contains(spell.name)) then
		--if player.equipment.ranged == 'Murderer' then
			equip({ear1="Supremacy Earring"})
		end
	elseif (spell.type == "CorsairRoll" or spell.english == "Double-Up") then
		equipSet = sets.JA.Rolls
		add_to_chat(122,spell.name .. ' Set')
		equip(equipSet)
	elseif spell.type == "CorsairShot" then
		equipSet = sets.JA.QuickDraw
		if spell.name:contains('Water') then
			equipSet = set_combine(equipSet,{body="Poroggo fleece +1"})
		end
		add_to_chat(122,spell.name .. ' Set')
		equip(equipSet)
    end
end

function midcast(spell,action)
    if spell.name == 'Ranged' then
        equipSet = sets.Midshot
        if AccArray[AccIndex] == 'HighACC' then
            equipSet = equipSet[AccArray[AccIndex]]
			add_to_chat(122,AccArray[AccIndex] .. ' Set')
			cidleset = AccArray[AccIndex] .. ' Set'
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
    elseif command == 'update' then
		aftercast()
	end
    updatedisplay()
end