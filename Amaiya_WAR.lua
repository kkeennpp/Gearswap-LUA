function get_sets()

	send_command('input /macro book 2;wait .1;input /macro set 4') -- Change Default Macro Book Here
	send_command('wait 5;input /lockstyleset 11')

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
	sets.JA['Berserk'] = {feet="Agoge Calligae +3",body="Pummeler's Lorica +3",back={name="Cichol's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}}
	sets.JA['Warcry'] = {head="Agoge Mask +3"}
	sets.JA['Aggressor'] = {body="Agoge Lorica +3",head="Pummeler's Mask +3"}
	sets.JA['Blood Rage'] = {body="Boii Lorica +2"}
	sets.JA['Retaliation'] = {feet="Boii Calligae +1",hands="Pummeler's Mufflers +3"}
	sets.JA['Restraint'] = {hands="Boii Mufflers +1"}
	sets.JA['Mighty Strikes'] = {hands="Agoge Mufflers +1"}
	sets.JA["Warrior's Charge"] = {legs="Agoge Cuisses +1"}

	sets.Idle = {
		ammo="Staunch Tathlum +1",
		head="Hjarrandi Helm",body="Hjarrandi Breastplate",hands="Volte Moufles",legs="Volte Brayettes",feet="Volte Sollerets",
		ear1="Odnowa Earring +1",ear2="Etiolation Earring",ring1="Defending Ring",ring2="Gelatinous Ring +1",
		neck="Warder's Charm +1",waist="Engraved Belt",back={name="Cichol's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	sets.Idle.Regen = set_combine(sets.Idle,{
		head="Volte Salade",body="Sacro Breastplate",
		ear1="Infused earring",ring1="Sheltered Ring",ring2="Paguroidea Ring",
		neck="Sanctity Necklace"
	})

	sets.Idle.MVMT = {feet="Hermes' Sandals"}

	-------------
	-- TP Sets --
	-------------

	sets.TP = {
		ammo="Coiste Bodhar",
		head="Flamma Zucchetto +2",body="Agoge Lorica +3",hands="Sakpata's Gauntlets",legs="Pummeler's Cuisses +3",feet="Pummeler's Calligae +3",
		ear1="Cessance earring",ear2="Brutal Earring",ring1="Flamma Ring",ring2="Niqmaddu Ring",
		neck="Warrior's Bead Necklace +1",waist="Ioskeha Belt +1",back={name="Cichol's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	sets.TP.Bravura = set_combine(sets.TP,{})
	sets.TP.Ragnarok = set_combine(sets.TP,{hands="Argosy mufflers +1"})

	--sets.TP.Dual = set_combine(sets.TP,{head="Founder's Corona",hands="Emicho Gauntlets +1",ear1="Suppanomimi",waist="Reiki Yotai"})
	sets.TP.Dual = set_combine(sets.TP,{hands="Emicho Gauntlets +1",ear1="Suppanomimi"})

	sets.TP.Conqueror = {
		ammo="Ginsen",
		head="Flamma Zucchetto +2",body="Hjarrandi Breastplate",hands="Flamma Manopolas +2",legs={name="Odyssean Cuisses",augments={'Accuracy+25','"Store TP"+7','DEX+7'}},feet="Valorous Greaves",
		ear1="Cessance earring",ear2="Tripudio Earring",ring1="Flamma Ring",ring2="Niqmaddu Ring",
		neck="Ainia Collar",waist="Sailfi Belt +1",back={name="Cichol's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	sets.TP.HighACC = set_combine(sets.TP,{
		head="Pummeler's Mask +3",body="Agoge Lorica +3",hands="Pummeler's Mufflers +3",
		ring2="Regal Ring",ear2="Assuage Earring",
	})
	
	sets.TP.Dual.HighACC = set_combine(sets.TP.HighACC,{hands="Emicho Gauntlets +1",ear1="Suppanomimi",ring2="Petrov Ring"})

	sets.TP.Hybrid = set_combine(sets.TP,{
		head="Sakpata's Helm",body="Sakpata's Plate",legs="Volte Brayettes",feet="Sakpata's Leggings",
		--head="Hjarrandi Helm",body="Hjarrandi Breastplate",legs="Volte Brayettes",feet="Volte Sollerets",
		--ring1="Defending Ring",
		--waist="Sailfi Belt +1"
	})

	sets.TP.Hybrid.Bravura = set_combine(sets.TP,{
		head="Hjarrandi Helm",
		ring1="Defending Ring",ring2="Patricius Ring",
		neck="Warder's Charm +1",
	})

	sets.TP.Hybrid.Conqueror = set_combine(sets.TP.Conqueror,{
		head="Hjarrandi Helm",legs="Volte Brayettes",feet="Volte Sollerets",
		ear1="Dedition earring",ring1="Defending Ring",ring2="K'ayres Ring",
	})

	sets.TP.DT = set_combine(sets.TP,{
		head="Sakpata's Helm",body="Sakpata's Plate",hands="Sakpata's Gauntlets",legs="Sakpata's Cuisses",feet="Sakpata's Leggings",
        --head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Odnowa earring +1",ear2="Etiolation Earring",ring1="Defending Ring",ring2="K'ayres Ring",
		neck="Warder's Charm +1"
	})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		ammo="Coiste Bodhar",
		head="Sakpata's Helm",body="Sakpata's Plate",hands="Sakpata's Gauntlets",legs="Sakpata's Cuisses",feet="Sakpata's Leggings",
		ear1="Moonshade Earring",ear2="Thrud Earring",ring1="Regal Ring",ring2="Niqmaddu Ring",
		neck="Warrior's Bead Necklace +1",waist="Fotia Belt",back={name="Cichol's Mantle",augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
	}

	sets.WS['Resolution'] = set_combine(sets.WS,{
		neck="Fotia Gorget",back={name="Cichol's Mantle",augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10'}}
	})
	sets.WS['Resolution'].WSD = set_combine(sets.WS["Resolution"],{
		Ammo="KnobKierrie",
		head="Agoge Mask +3",body="Pummeler's Lorica +3",
		waist="Sailfi Belt +1"
	})

	sets.WS['Decimation'] = set_combine(sets.WS,{ear1="Lugra Earring +1",neck="Fotia Gorget"})
	sets.WS['Decimation'].WSD = set_combine(sets.WS,{ear1="Lugra Earring +1",neck="Fotia Gorget"})

	sets.WS["King's Justice"] = set_combine(sets.WS,{
		waist="Sailfi Belt +1",back={name="Cichol's Mantle",augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10'}}
	})
	sets.WS["King's Justice"].WSD = set_combine(sets.WS["King's Justice"],{
		Ammo="KnobKierrie",
		head="Agoge Mask +3",body="Pummeler's Lorica +3",
		waist="Sailfi Belt +1"
	})

	sets.WS['Upheaval'] = set_combine(sets.WS,{
		head="Agoge Mask +3",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		waist="Ioskeha Belt +1",back={name="Cichol's Mantle",augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%'}}
	})

	sets.WS["Ukko's Fury"] = set_combine(sets.WS,{
		head="Agoge Mask +3",body="Hjarrandi Breastplate",hands="Flamma Manopolas +2",legs="Nyame Flanchard",feet="Nyame Sollerets",
		neck="Fotia Gorget"
	})

	sets.WS['Metatron Torment'] = set_combine(sets.WS,{
		head="Agoge Mask +3",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Ishvara Earring",
		waist="Sailfi Belt +1"
	})

	sets.WS['Scourge'] = set_combine(sets.WS['Metatron Torment'],{})
	sets.WS['Ground Strike'] = set_combine(sets.WS['Metatron Torment'],{ear1="Moonshade Earring"})
	sets.WS['Impulse Drive'] = set_combine(sets.WS['Metatron Torment'],{body="Hjarrandi Breastplate",hands="Flamma Manopolas +2",ear1="Moonshade Earring"})
	sets.WS['Sonic Thrust'] = set_combine(sets.WS['Metatron Torment'],{})
	sets.WS['Savage Blade'] = set_combine(sets.WS['Metatron Torment'],{ear1="Moonshade Earring"})
	sets.WS['Spiral Hell'] = set_combine(sets.WS['Metatron Torment'],{ear1="Moonshade Earring"})
	sets.WS['Stardiver'] = set_combine(sets.WS['Resolution'],{})
	sets.WS['Calamity'] = set_combine(sets.WS['Metatron Torment'],{ear1="Moonshade Earring"})
	sets.WS['Mistral Axe'] = set_combine(sets.WS['Metatron Torment'],{ear1="Moonshade Earring"})

	sets.WS['Cloudsplitter'] = set_combine(sets.WS,{
		Ammo="Seething Bomblet +1",
        head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Moonshade Earring",ear2="Friomisi Earring",
		neck="Sanctity Necklace",waist="Eschan Stone"
	})

	sets.WS['Raiden Thrust'] = set_combine(sets.WS['Cloudsplitter'],{})
	sets.WS['Cataclysm'] = set_combine(sets.WS['Cloudsplitter'],{})
	sets.WS['Flash Nova'] = set_combine(sets.WS['Cloudsplitter'],{})

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
DWMode = false
SwordSwap = false
CPMode = false
DynaMode = false
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
	str = str..'\nDWMode: \\cs(150,150,255)'..tostring(DWMode)..'\\cr'
	str = str..'\nSwordMode: \\cs(150,150,255)'..tostring(SwordSwap)..'\\cr'
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
	--if (player.status == 'Engaged' and (spell.type == "WeaponSkill" and spell.target.distance > 5)) then -- Cancel WS If You Are Out Of Range
		--cancel_spell()
		--add_to_chat(123, spell.name..' Canceled: [Out of Range]')
		--return
	--end
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
	elseif buff:lower() == 'aftermath' then
		aftercast()
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
		if buffactive['Mighty Strikes'] then
			if equipSet[spell.name] then
				if sets.WS[spell.name].MS then
					equipSet = equipSet[spell.name].MS
					add_to_chat(122,spell.name .. ' MS Set')
				else
					equipSet = equipSet[spell.name]
					add_to_chat(122,spell.name .. ' Set')
				end
			end
		elseif AccArray[AccIndex] == 'HighACC' then
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
			equip({ear1="Lugra Earring +1"})
		end

		--if spell.name == 'Stardiver' and (world.day_element == 'Light' or world.day_element == 'Earth' or world.day_element == 'Dark') then
			--equip({head="Gavialis helm"})
		--elseif spell.name == 'Resolution' or spell.name == "King's Justice" and (world.day_element == 'Lightning' or world.day_element == 'Wind' or world.day_element == 'Earth') then
			--equip({head="Gavialis helm"})
		--elseif spell.name == 'Decimation' and (world.day_element == 'Light' or world.day_element == 'Fire' or world.day_element == 'Water') then
			--equip({head="Gavialis helm"})
		--end
	elseif spell.type == 'Ninjutsu' then
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
			if DWMode then
				equipSet = sets.TP.Dual.HighACC
				cidleset = 'DW HighACC'
			end
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
				if DWMode then
					equipSet = sets.TP.Dual
					cidleset = 'DW LowACC'
				end
			end
		end
		equip(equipSet)

		if SwordSwap then
			if buffactive['Warcry'] and player.equipment.main == 'Kaja Axe' and player.tp < 350 then
				if DWMode then
					equip({main="Naegling",sub="Reikiko"})
				else
					equip({main="Naegling",sub="Blurred shield +1"})
				end
			elseif player.equipment.main == 'Kaja Sword' and player.tp < 350 then
				if DWMode then
					equip({main="Kaja Axe",sub="Purgation"})
				else
					equip({main="Kaja Axe",sub="Blurred shield +1"})
				end
			end
		end
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
	elseif command == 'multi' then
		equip({main="Bravura",sub="Utu Grip"})
	elseif command == 'ga' then
		equip({main="Bravura",sub="Utu Grip"})
	elseif command == 'cq' then
		equip({main="Conqueror",sub="Utu Grip"})
	elseif command == 'gs' then
		equip({main="Ragnarok",sub="Utu Grip"})
	elseif command == 'pl' then
		equip({main="Shining One",sub="Utu Grip"})
	elseif command == 'ax' then
		if DWMode then
			equip({main="Kaja Axe",sub="Purgation"})
		else
			equip({main="Kaja Axe",sub="Blurred shield +1"})
		end
	elseif command == 'sw' then
		if DWMode then
			equip({main="Naegling",sub="Reikiko"})
		else
			equip({main="Naegling",sub="Blurred shield +1"})
		end
    elseif command == 'sword' then
        if SwordSwap then
            SwordSwap = false
            add_to_chat(8,'----- Sword Swap Mode Disabled -----')
        else
            SwordSwap = true
			add_to_chat(8,'----- Sword Swap Mode Enabled -----')
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
    elseif command == 'dw' then
        if DWMode then
            DWMode = false
            windower.add_to_chat(8,'----- DualWield Mode Disabled -----')
        else
            DWMode = true
            windower.add_to_chat(8,'----- DualWield Mode Enabled -----')
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