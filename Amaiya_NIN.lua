function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 6') -- Change Default Macro Book Here
	send_command('wait 5;input /lockstyleset 1')

	MagicalSpells = S{'Katon','Suiton','Doton','Hyoton','Huton','Raiton'}
	BuffingSpells = S{'Tonko','Monomi','Utsusemi','Myoshu','Gekka','Yain','Kakka'}
	MagicACCSpells = S{'Kurayami','Hojo','Jubaku','Aisha','Yurin'}
	
	---------------
	-- Idle Sets --
	---------------

	sets.JA = {}

	sets.Idle = {
		ammo="Staunch Tathlum +1",
        head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Odnowa Earring +1",ear2="Etiolation Earring",ring1="Defending Ring",ring2="Sheltered Ring",
		neck="Warder's Charm +1",waist="Engraved Belt",back="Moonbeam Cape"
	}

	sets.Idle.Regen = set_combine(sets.Idle,{
		body="Hizamaru haramaki +2",
		ear1="Infused earring",ring1="Sheltered Ring",ring2="Paguroidea Ring",
		neck="Sanctity Necklace"
	})

	sets.Idle.Eva = set_combine(sets.Idle,{
		ammo="Amar Cluster",
        head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Infused earring",ear2="Eabani Earring",
		waist="Sveltesse gouriz +1",back={name="Andartia's Mantle",augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','Evasion+15'}}
	})

	sets.Idle.MVMT = {feet="Danzo Sune-Ate"}

	-------------
	-- TP Sets --
	-------------

	sets.TP = {}

	sets.TP.LowACC = set_combine(sets.TP,{
		ammo="Seki Shuriken",
		head="Dampening Tam",body="Ryuo Domaru +1",hands="Adhemar Wristbands +1",legs="Samnuha Tights",feet="Herculean Boots",
		ear1="Tripudio Earring",ear2="Cessance earring",ring1="Epona's Ring",ring2="Gere Ring",
		neck="Ninja Nodowa +1",waist="Kentarch Belt +1",back={name="Andartia's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10'}}
	})
	sets.TP.LowACC.DW1 = set_combine(sets.TP.LowACC,{body="Adhemar Jacket +1",waist="Reiki Yotai",})
	sets.TP.LowACC.DW2 = set_combine(sets.TP.LowACC,{body="Adhemar Jacket +1",waist="Reiki Yotai",})
	sets.TP.LowACC.DW3 = set_combine(sets.TP.LowACC,{body="Adhemar Jacket +1",waist="Reiki Yotai",})

	sets.TP.HighACC = set_combine(sets.TP.LowACC,{
		ammo="Seki Shuriken",
		head="Dampening Tam",body="Ryuo Domaru +1",hands="Tatenashi Gote +1",legs="Tatenashi haidate +1",feet="Tatenashi Sune-Ate +1",
		ear1="Dignitary's Earring",ear2="Cessance earring",ring1="Epona's Ring",ring2="Gere Ring",
		neck="Ninja Nodowa +1",waist="Kentarch Belt +1",
	})
	sets.TP.HighACC.DW1 = set_combine(sets.TP.HighACC,{body="Adhemar Jacket +1",waist="Reiki Yotai",})
	sets.TP.HighACC.DW2 = set_combine(sets.TP.HighACC,{body="Adhemar Jacket +1",waist="Reiki Yotai",})
	sets.TP.HighACC.DW3 = set_combine(sets.TP.HighACC,{body="Adhemar Jacket +1",waist="Reiki Yotai",})

	sets.TP.Hybrid = set_combine(sets.TP.LowACC,{
		head="Nyame Helm",body="Ayanmo Corazza +2",hands="Malignance Gloves",legs="Nyame Flanchard",feet="Nyame Sollerets"
	})

	sets.TP.DT = set_combine(sets.TP.LowACC,{
		head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ring1="Defending Ring",
	})

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
		ammo="Sapience Orb",
		head="Herculean Helm",body="Taeon Tabard",hands="Leyline Gloves",legs="Taeon Tights",feet="Taeon Boots",
		ear1="Enchanter's Earring +1",ear2="Loquacious Earring",ring1="Weatherspoon Ring",ring2="Kishar Ring",
		neck="Voltsurge Torque",waist="Flume Belt +1",back="Moonbeam Cape"
	}

	sets.Precast.Ninjutsu = set_combine(sets.Precast,{body="Mochizuki Chainmail +1",})

	-------------
	-- Midcast --
	-------------

    sets.Midcast = {}

	sets.Midcast.MAB = {
	}

	sets.Midcast.Buffing = set_combine(sets.Precast,{
		hands="Mochizuki Tekko +1",feet="Hattori Kyahan +1",back="Andartia's Mantle"
	})

	sets.Midcast.MACC = {
	}

	sets.Midcast.MACC.TH = set_combine(sets.Midcast.MACC,{
		head="Herculean Helm",body="Herculean Vest",legs="Volte Hose",waist="Chaac Belt",ammo="Perfect lucky egg"
	})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		ammo="Seething Bomblet +1",
		head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Moonshade Earring",ear2="Lugra Earring +1",ring1="Regal Ring",ring2="Gere Ring",
		neck="Ninja Nodowa +1",waist="Sailfi Belt +1",back={name="Andartia's Mantle",augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}
	}

	sets.WS["Blade: Teki"] = set_combine(sets.WS,{
		head="Mochizuki Hatsuburi +3",
		ear2="Friomisi Earring",ring2="Shiva Ring +1",
		neck="Fotia Gorget",waist="Fotia Belt",
	})
	sets.WS["Blade: To"] = set_combine(sets.WS["Blade: Teki"],{})
	sets.WS["Blade: Chi"] = set_combine(sets.WS["Blade: Teki"],{})
	sets.WS["Blade: Ei"] = set_combine(sets.WS["Blade: Teki"],{
		head="Pixie Hairpin +1",ring2="Archon Ring",
	})
	sets.WS["Tachi: Goten"] = set_combine(sets.WS["Blade: Teki"],{})
	sets.WS["Tachi: Kagero"] = set_combine(sets.WS["Blade: Teki"],{})
	sets.WS["Tachi: Jinpu"] = set_combine(sets.WS["Blade: Teki"],{})
	sets.WS["Tachi: Koki"] = set_combine(sets.WS["Blade: Teki"],{})

	sets.WS["Blade: Yu"] = set_combine(sets.WS["Blade: Teki"],{
		ear2="Friomisi Earring",ring1="Dingir Ring",
	})

	sets.WS["Blade: Ku"] = set_combine(sets.WS,{
		ammo="Cath Palug Stone",
		head="Mpaca's Cap",body="Adhemar Jacket +1",hands="Adhemar Wristbands +1",legs="Rao Haidate +1",feet="Tatenashi Sune-Ate +1",
		ear1="Dominance Earring +1",
	})

	sets.WS["Blade: Shun"] = set_combine(sets.WS,{
		ammo="Cath Palug Stone",
		head="Mpaca's Cap",body="Adhemar Jacket +1",hands="Adhemar Wristbands +1",legs="Rao Haidate +1",feet="Tatenashi Sune-Ate +1",
	})

	sets.WS["Blade: Hi"] = set_combine(sets.WS,{
	})

	sets.WS["Blade: Ten"] = set_combine(sets.WS,{
	})

	sets.WS["Savage Blade"] = set_combine(sets.WS,{
		head="Mpaca's Cap",
	})

	sets.WS["Tachi: Ageha"] = set_combine(sets.WS,{
	})

	sets.WS['Aeolian Edge'] = set_combine(sets.WS["Blade: Teki"],{})

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
DWIndex = 1
DWArray = {'Auto','DW0','DW1','DW2','DW3'}
cidleset = 'Load Temp'
CPMode = false
THMode = false
DynaMode = false
HasteLevel = 1
local res = require('resources')

function setup_hud()
    job_property = {}
    job_info = {}
    job_info.box={
        pos={x=2725,y=1290},
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
	local str = 'DWMode: \\cs(150,150,255)'..DWArray[DWIndex]..'\\cr'
	str = str..'\nAccMode: \\cs(150,150,255)'..AccArray[AccIndex]..'\\cr'
	str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
	str = str..'\nHasteLevel: \\cs(150,150,255)'..tostring(HasteLevel)..'\\cr'
	str = str..'\nTHMode: \\cs(150,150,255)'..tostring(THMode)..'\\cr'
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

windower.register_event('action',function(action)
    local self = windower.ffxi.get_player().id
    for _, target in ipairs(action.targets) do
        if self == target.id then
            if action.category == 4 then
                local param = action.param
                if param == 57 then
                    HasteLevel = 1
                elseif param == 511 then
                    HasteLevel = 2
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
	elseif spell.type == "WeaponSkill" then
		equipSet = sets.WS
		if AccArray[AccIndex] == 'HighACC' then
			if equipSet[spell.name] then
				if sets.WS[spell.name].HighACC then
					equipSet = equipSet[spell.name].HighACC
					add_to_chat(122,spell.name .. ' HighACC Set')
				else
					equipSet = equipSet[spell.name]
					add_to_chat(122,'Default WS Set')
				end
			end
		elseif player.tp < 1750 or buffactive['Sekkanoki'] then
			if equipSet[spell.name] then
				equipSet = equipSet[spell.name]
				add_to_chat(122,spell.name .. ' Set')
			else
				add_to_chat(122,'Default WS Set')
			end
		elseif player.tp > 2750 then
			if equipSet[spell.name] then
				equipSet = set_combine(equipSet[spell.name],{ear1="Ishvara Earring"})
				add_to_chat(122,spell.name .. ' Max Set')
			else
				equipSet = set_combine(sets.WS,{ear1="Ishvara Earring"})
				add_to_chat(122,'Default WS Max Set')
			end
		end
		equip(equipSet)
	elseif spell.type:contains('Magic') then
        equip(sets.Precast)
	elseif spell.type == 'Ninjutsu' then
        equip(sets.Precast.Ninjutsu)
	end
    updatedisplay()
end

function midcast(spell,action)
	local splitspell = spell.english:split(':')
	if spell.type == 'Ninjutsu' then
		if MagicalSpells:contains(splitspell[1]) then
			equip(sets.Midcast.MAB)
			if spell.element == world.weather_element then
				equip({waist="Hachirin-no-Obi"})
			end
		elseif BuffingSpells:contains(splitspell[1]) then
			equip(sets.Midcast.Buffing)
		elseif MagicACCSpells:contains(splitspell[1]) then
			if THMode then
				equip(sets.Midcast.MACC.TH)
			else
				equip(sets.Midcast.MACC)
			end
		end
	elseif spell.skill == "Enhancing Magic" then
        if spell.name:match('Protect') or spell.name:match('Shell') then
			equip(sets.Midcast.Enhancing)
            equip({ring1="Sheltered Ring"})
		else
			equip(sets.Midcast.Enhancing)
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
		if AccArray[AccIndex] == 'Hybrid' then
			equipSet = equipSet.Hybrid
			cidleset = AccArray[AccIndex] .. ' Set'
		elseif AccArray[AccIndex] == 'HighACC' then
			if DWArray[DWIndex] == 'Auto' then
				if buffactive['March'] then
					equipSet = equipSet.HighACC
					cidleset = AccArray[AccIndex] .. ' Set'
				elseif buffactive['Haste'] then
					if HasteLevel == 1 then
						equipSet = equipSet.HighACC.DW2
						cidleset = AccArray[AccIndex] .. ' DW2 Set'
					elseif HasteLevel == 2 then
						equipSet = equipSet.HighACC.DW1
						cidleset = AccArray[AccIndex] .. ' DW1 Set'
					end
				elseif buffactive['Embrava'] then
					equipSet = equipSet.HighACC.DW1
					cidleset = AccArray[AccIndex] .. ' DW1 Set'
				else
					equipSet = equipSet.HighACC.DW3
					cidleset = AccArray[AccIndex] .. ' DW3 Set'
				end
			elseif DWArray[DWIndex] == 'DW0' then
				equipSet = equipSet.HighACC
				cidleset = AccArray[AccIndex] .. ' Set'
			elseif DWArray[DWIndex] == 'DW1' then
				equipSet = equipSet.HighACC.DW1
				cidleset = AccArray[AccIndex] .. ' DW1 Set'
			elseif DWArray[DWIndex] == 'DW2' then
				equipSet = equipSet.HighACC.DW2
				cidleset = AccArray[AccIndex] .. ' DW2 Set'
			elseif DWArray[DWIndex] == 'DW3' then
				equipSet = equipSet.HighACC.DW3
				cidleset = AccArray[AccIndex] .. ' DW3 Set'
			end
		else
			if DWArray[DWIndex] == 'Auto' then
				if buffactive['March'] then
					--add_to_chat(158,'March found ' .. DWArray[DWIndex])
					equipSet = equipSet.LowACC
					cidleset = AccArray[AccIndex] .. ' Set'
				elseif buffactive['Haste'] then
					--add_to_chat(158,'Haste found ' .. DWArray[DWIndex])
					if HasteLevel == 1 then
						equipSet = equipSet.LowACC.DW2
						cidleset = AccArray[AccIndex] .. ' DW2 Set'
					elseif HasteLevel == 2 then
						equipSet = equipSet.LowACC.DW1
						cidleset = AccArray[AccIndex] .. ' DW1 Set'
					end
				elseif buffactive['Embrava'] then
					equipSet = equipSet.LowACC.DW1
					cidleset = AccArray[AccIndex] .. ' DW1 Set'
				else
					equipSet = equipSet.LowACC.DW3
					cidleset = AccArray[AccIndex] .. ' DW3 Set'
				end
			elseif DWArray[DWIndex] == 'DW0' then
				equipSet = equipSet.LowACC
				cidleset = AccArray[AccIndex] .. ' Set'
			elseif DWArray[DWIndex] == 'DW1' then
				equipSet = equipSet.LowACC.DW1
				cidleset = AccArray[AccIndex] .. ' DW1 Set'
			elseif DWArray[DWIndex] == 'DW2' then
				equipSet = equipSet.LowACC.DW2
				cidleset = AccArray[AccIndex] .. ' DW2 Set'
			elseif DWArray[DWIndex] == 'DW3' then
				equipSet = equipSet.LowACC.DW3
				cidleset = AccArray[AccIndex] .. ' DW3 Set'
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
    if new == 'Resting' then
    else
        aftercast()
    end
    updatedisplay()
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command)
function self_command(command)
	if command:lower() == 'acc' then -- Accuracy Level Toggle
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
		aftercast()
	elseif command:lower() == 'dw' then
		DWIndex = (DWIndex % #DWArray) + 1
		add_to_chat(158,'DW Mode: ' .. DWArray[DWIndex])
		aftercast()
	elseif command:lower() == 'dt' then -- Hybrid Accuracy Level
		AccIndex = 3
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
		cidleset = 'Max DT'
		aftercast()
	elseif command:lower() == 'lacc' then -- Low Accuracy Level
		AccIndex = 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
		aftercast()
    elseif command:lower() == 'cp' then
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
    elseif command:lower() == 'dyna' then
        if DynaMode then
            DynaMode = false
            enable('neck')
            windower.add_to_chat(8,'----- Dynamis Mode Disabled -----')
        else
            DynaMode = true
            disable('neck')
            windower.add_to_chat(8,'----- Dynamis Mode Enabled -----')
        end
    elseif command:lower() == 'th' then
        if THMode then
            THMode = false
            windower.add_to_chat(158,'----- TH Mode Disabled -----')
        else
            THMode = true
            windower.add_to_chat(158,'----- TH Mode Enabled -----')
        end
	elseif command:lower() == 'cb' then
		equip({main="Naegling",sub="Blurred shield +1"})
	elseif command:lower() == 'gk' then
		equip({main="Kaja tachi",sub="Umbra Strap"})
	elseif command:lower() == 'sw' then
		equip({main="Naegling",sub="Kunimitsu"})
	elseif command:lower() == 'kt' then
		equip({main="Kaja katana",sub="Kunimitsu"})
    elseif command:lower() == 'update' then
		aftercast()
	end
    updatedisplay()
end