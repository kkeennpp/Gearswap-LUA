function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 2') -- Change Default Macro Book Here
	send_command('wait 5;input /lockstyleset 7')
	
	---------------
	-- Idle Sets --
	---------------

	sets.JA = {}

	sets.Idle = {
		main="Caballarius Sword",sub="Priwen",ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",body="Sakpata's Plate",hands="Sakpata's Gauntlets",legs="Sakpata's Cuisses",feet="Sakpata's Leggings",
		ear1="Etiolation Earring",ear2="Odnowa Earring +1",ring1="Moonlight Ring",ring2="Purity Ring",
		neck="Warder's Charm +1",waist="Asklepian Belt",back={name="Rudianos's Mantle",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Damage taken-5%'}}
	}

	sets.Idle.Regen = set_combine(sets.Idle,{
		ammo="Homiliary",
		head="Jumalik Helm",body="Sacro Breastplate",legs="Volte Brayettes",feet="Volte Sollerets",
		ear1="Infused Earring",ring2="Gelatinous Ring +1",
		neck="Coatl Gorget +1"
	})

	sets.Idle.Block = set_combine(sets.Idle,{
		main="Nixxer",sub="Priwen",
		body="Sacro Breastplate",head={name="Odyssean Helm",augments={'INT+2','AGI+4','Chance of successful block +10','Accuracy+15 Attack+15','Mag. Acc.+7 "Mag.Atk.Bns."+7'}},legs="Chevalier's Cuisses +2",feet="Souveran Schuhs +1",
		ear1="Thureous Earring",ear2="Chevalier's Earring",ring2="Paguroidea Ring",
		neck="Creed Collar",waist="Flume Belt +1",back={name="Rudianos's Mantle",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5'}}
	})

	sets.Idle.MEva = set_combine(sets.Idle,{main="Malignance Sword",sub="Aegis"})

	sets.Idle.MVMT = {main="Sakpata's Sword",sub="Aegis",legs="Carmine Cuisses +1",back="Moonbeam Cape"}

	-------------
	-- TP Sets --
	-------------

	sets.TP = {}

	sets.TP.LowACC = {
		main="Sakpata's Sword",sub="Blurred Shield +1",ammo="Ginsen",
		head="Hjarrandi Helm",body="Hjarrandi Breast.",hands="Sakpata's Gauntlets",legs="Volte Brayettes",feet="Flamma Gambieras +2",
		ear1="Cessance earring",ear2="Brutal Earring",ring1="Flamma Ring",ring2="K'ayres Ring",
		neck="Sanctity Necklace",waist="Sailfi Belt +1",back={name="Rudianos's Mantle",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Damage taken-5%'}}
	}

	sets.TP.Dual = set_combine(sets.TP,{hands="Emicho Gauntlets +1",ear1="Suppanomimi"})

	sets.TP.Hybrid = {
		main="Sakpata's Sword",sub="Priwen",ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",body="Sakpata's Plate",hands="Sakpata's Gauntlets",legs="Sakpata's Cuisses",feet="Sakpata's Leggings",
		ear1="Dignitary's Earring",ear2="Cessance Earring",ring1="Moonlight Ring",ring2="K'ayres Ring",
		neck="Sanctity Necklace",waist="Sailfi Belt +1",back={name="Rudianos's Mantle",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5'}}
	}

	sets.TP.Hybrid.Dual = set_combine(sets.TP.Hybrid,{hands="Emicho Gauntlets +1",ear1="Suppanomimi"})

	sets.TP.DT = set_combine(sets.Idle,{
	})

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
		main="Sakpata's Sword",sub="Svalinn",ammo="Sapience Orb",
		head="Carmine Mask +1",body="Reverence Surcoat +3",hands="Leyline Gloves",legs="Chevalier's Cuisses +2",feet="Chevalier's Sabatons +2",
		ear1="Loquacious Earring",ear2="Odnowa Earring +1",ring1="Kishar Ring",ring2="Weatherspoon Ring",
		neck="Voltsurge Torque",waist="Flume Belt +1",back={name="Rudianos's Mantle",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Damage taken-5%'}}
	}

	sets.Precast.Cure = set_combine(sets.Precast,{ear1="Mendicant's Earring"})

	-------------
	-- Midcast --
	-------------

    sets.Midcast = {}

	sets.Midcast.enm = {
		main="Brilliance",sub="Ajax",ammo="Sapience Orb",
		head="Souveran Schaller +1",body="Souveran Cuirass +1",hands="Souveran handschuhs +1",legs="Souveran Diechlings +1",feet="Eschite Greaves",
		ear1="Cryptic Earring",ear2="Odnowa Earring +1",ring1="Supershear Ring",ring2="Eihwaz Ring",
		neck="Moonlight necklace",waist="Creed baudrier",back={name="Rudianos's Mantle",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5'}}
	}

	sets.Midcast.sird = {
	}

	sets.Midcast.phx = {
		main="Sakpata's Sword",sub="Priwen",ammo="Staunch Tathlum +1",
		head={name="Odyssean Helm",augments={'Pet: "Regen"+2','Accuracy+20','Phalanx +4','Accuracy+18 Attack+18'}},body="Odyssean Chestplate",hands="Souveran handschuhs +1",legs="Sakpata's Cuisses",feet="Souveran Schuhs +1",
		ear1="Andoaa Earring",ear2="Odnowa Earring +1",ring1={name="Stikini Ring +1",bag="wardrobe 3"},ring2={name="Stikini Ring +1",bag="wardrobe 1"},
		neck="Colossus's Torque",waist="Creed baudrier",back="Weard Mantle"
	}

	sets.Midcast.phx.sird = set_combine(sets.Midcast.phx,{
		ammo="Staunch Tathlum +1",
		head="Souveran Schaller +1",legs="Founder's Hose",feet="Eschite Greaves",
		neck="Moonlight necklace"
	})

	sets.Midcast.Flash = {
		main="Brilliance",sub="Svalinn",ammo="Incantor Stone",
		head="Souveran Schaller +1",body="Souveran Cuirass +1",hands="Souveran handschuhs +1",legs="Souveran Diechlings +1",feet="Chevalier's Sabatons +2",
		ear1="Cryptic Earring",ear2="Odnowa Earring +1",ring1="Supershear Ring",ring2="Eihwaz Ring",
		neck="Moonlight necklace",waist="Goading Belt",back={name="Rudianos's Mantle",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Damage taken-5%'}}
	}

	sets.Midcast.Flash.sird = set_combine(sets.Midcast.Flash,{
		ammo="Staunch Tathlum +1",
		head="Souveran Schaller +1",body="Chevalier's Cuirass +2",hands="Eschite Gauntlets",feet="Eschite Greaves",
		neck="Moonlight necklace",back="Moonbeam Cape"
	})

	sets.Midcast.Reprisal = set_combine(sets.Precast,{
	})

	sets.Midcast.Reprisal.sird = set_combine(sets.Midcast.Reprisal,{
		head="Souveran Schaller +1",hands="Eschite Gauntlets",legs="Founder's Hose",feet="Eschite Greaves",
		neck="Moonlight necklace",
	})

	sets.Midcast.Cure = {
		main="Caballarius Sword",sub="Svalinn",ammo="Staunch Tathlum",
		head="Souveran Schaller +1",body="Souveran Cuirass +1",hands="Macabre Gauntlets +1",legs="Souveran Diechlings +1",feet="Eschite Greaves",
		ear1="Cryptic Earring",ear2="Odnowa Earring +1",ring1="Supershear Ring",ring2="Eihwaz Ring",
		neck="Sacro Gorget",waist="Creed baudrier",back={name="Rudianos's Mantle",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5'}}
	}

	sets.Midcast.Cure.sird = set_combine(sets.Midcast.Cure,{
		ammo="Staunch Tathlum +1",
		head="Souveran Schaller +1",legs="Founder's Hose",feet="Eschite Greaves",
		neck="Moonlight necklace",back="Moonbeam Cape"
	})

	sets.Midcast.Enhancing = {
	}

	sets.Midcast.MAB = {
		main="Sakpata's Sword",sub="Priwen",ammo="Ghastly Tathlum +1",
		head="Jumalik Helm",body="Carm. Sc. Mail +1",hands="Carmine Fin. Ga. +1",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Friomisi Earring",ear2="Odnowa Earring +1",ring1="Metamor. Ring +1",ring2="Shiva Ring +1",
		neck="Sanctity Necklace",waist="Eschan Stone",back={name="Rudianos's Mantle",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Damage taken-5%'}}
	}

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
	sets.JA['Provoke'] = set_combine(sets.Midcast.enm,{})
	sets.JA['Shield Bash'] = set_combine(sets.Midcast.enm,{sub="Aegis",hands="Caballarius Gauntlets +1",ring1="Fenian Ring"})
	sets.JA['Sentinel'] = set_combine(sets.Midcast.enm,{feet="Caballarius Leggings +1"})
	sets.JA['Rampart'] = set_combine(sets.Midcast.enm,{})
	sets.JA['Invincible'] = set_combine(sets.Midcast.enm,{})
	sets.JA['Intervene'] = set_combine(sets.Midcast.enm,{})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		ammo="Coiste Bodhar",
		head="Sakpata's Helm",body="Sakpata's Plate",hands="Sakpata's Gauntlets",legs="Sakpata's Cuisses",feet="Sakpata's Leggings",
		ear1="Moonshade Earring",ear2="Thrud Earring",ring1="Regal Ring",ring2="Petrov Ring",
		neck="Sanctity Necklace",waist="Sailfi Belt +1",back={name="Rudianos's Mantle",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5'}}
	}

	sets.WS["Savage Blade"] = set_combine(sets.WS,{
        head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		neck="Light Gorget",
	})

	sets.WS["Chant du Cygne"] = set_combine(sets.WS,{
		body="Hjarrandi Breastplate",hands="Flamma Manopolas +2",
	})

	sets.WS["Atonement"] = set_combine(sets.WS,{
		head="Souveran Schaller +1",body="Souveran Cuirass +1",hands="Souveran handschuhs +1",legs="Souveran Diechlings +1",feet="Eschite Greaves",
		ear1="Etiolation Earring",ear2="Odnowa Earring +1",ring1="Supershear Ring",ring2="Eihwaz Ring",
		neck="Moonlight necklace",waist="Creed baudrier",back={name="Rudianos's Mantle",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Chance of successful block +5'}}
	})

	sets.WS["Sanguine Blade"] = set_combine(sets.WS,{
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",body="Carmine scale mail +1",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Moonshade Earring",ear2="Friomisi Earring",ring1="Archon Ring",ring2="Shiva Ring +1",
		neck="Sanctity Necklace",waist="Eschan Stone",
	})

	sets.WS["Flash Nova"] = set_combine(sets.WS["Sanguine Blade"],{head="Nyame Helm",ring1="Metamorph Ring +1",ring2="Weatherspoon Ring",})
	sets.WS["Seraph Strike"] = set_combine(sets.WS["Sanguine Blade"],{head="Nyame Helm",ring1="Metamorph Ring +1",ring2="Weatherspoon Ring",})

	sets.WS["Requiescat"] = set_combine(sets.WS,{
		head="Hjarrandi Helm",
		ear2="Lugra Earring +1",
		neck="Fotia Gorget",waist="Fotia Belt"
	})

	sets.WS['Cataclysm'] = set_combine(sets.WS["Sanguine Blade"],{})

	sets.WS['Torcleaver'] = set_combine(sets.WS["Savage Blade"],{
		waist="Fotia Belt"
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
AccArray = {"Hybrid","LowACC"}
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
        pos={x=2725,y=1268},
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
	str = str..'\nSIRDMode: \\cs(150,150,255)'..tostring(sirdMode)..'\\cr'
	str = str..'\nCPMode: \\cs(150,150,255)'..tostring(CPMode)..'\\cr'
	str = str..'\nDynaMode: \\cs(150,150,255)'..tostring(DynaMode)..'\\cr'

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
	elseif spell.type == "WeaponSkill" then
		equipSet = sets.WS
		if player.tp < 1750 or buffactive['Sekkanoki'] then
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
			equip({ear2="Lugra Earring"})
		end
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
		if sirdMode then
			equip(sets.Midcast.Cure.sird)
		end
    elseif spell.name:match('Flash') then
		equip(sets.Midcast.Flash)
		if sirdMode then
			equip(sets.Midcast.Flash.sird)
		end
    elseif spell.name:match('Phalanx') then
		equip(sets.Midcast.phx)
		if sirdMode then
			equip(sets.Midcast.phx.sird)
		end
    elseif spell.name:match('Reprisal') then
		equip(sets.Midcast.Reprisal)
		if sirdMode then
			equip(sets.Midcast.Reprisal.sird)
		end
	elseif spell.skill == 'Blue Magic' then
		equip(sets.Midcast.Flash)
		if sirdMode then
			equip(sets.Midcast.Flash.sird)
		end
	elseif spell.skill == "Enhancing Magic" then
        if spell.name:contains('Protect') or spell.name:contains('Shell') then
			equip(sets.Midcast.Enhancing)
            equip({ring1="Sheltered Ring"})
		else
			equip(sets.Midcast.Enhancing)
		end
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
		if AccArray[AccIndex] == 'Hybrid' then
			equipSet = equipSet.Hybrid
			cidleset = AccArray[AccIndex] .. ' Set'
			if DWMode then
				equipSet = equipSet.Dual
				cidleset = AccArray[AccIndex] .. ' DW Set'
			end
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
    elseif command == 'sird' then
        if sirdMode then
            sirdMode = false
            windower.add_to_chat(158,'----- SIRD Mode Disabled -----')
        else
            sirdMode = true
            windower.add_to_chat(158,'----- SIRD Mode Enabled -----')
        end
    elseif command == 'dw' then
        if DWMode then
            DWMode = false
            windower.add_to_chat(158,'----- DualWield Mode Disabled -----')
        else
            DWMode = true
            windower.add_to_chat(158,'----- DualWield Mode Enabled -----')
        end
    elseif command == 'cp' then
        if CPMode then
            CPMode = false
            enable('back')
            windower.add_to_chat(158,'----- CP Mode Disabled -----')
        else
            CPMode = true
			equip({back="Mecistopins Mantle"})
            disable('back')
            windower.add_to_chat(158,'----- CP Mode Enabled, Cape Locked -----')
        end
    elseif command == 'dyna' then
        if DynaMode then
            DynaMode = false
            enable('neck')
            windower.add_to_chat(158,'----- Dynamis Mode Disabled -----')
        else
            DynaMode = true
            disable('neck')
            windower.add_to_chat(158,'----- Dynamis Mode Enabled -----')
        end
	elseif command == 'gs' then
		equip({main="Caladbolg",sub="Utu Grip"})
	elseif command == 'sw' then
		equip({main="Sakpata's Sword",sub="Priwen"})
    elseif command == 'update' then
		aftercast()
	end
    updatedisplay()
end