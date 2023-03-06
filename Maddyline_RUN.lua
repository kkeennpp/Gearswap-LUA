function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 8') -- Change Default Macro Book Here
	send_command('wait 5;input /lockstyleset 12')
	
	---------------
	-- Idle Sets --
	---------------

	sets.JA = {}

	sets.Idle = {
		main="Aettir",sub="Mensch Strap +1",ammo="Staunch Tathlum +1",
        head="Nyame Helm",body="Runeist coat +3",hands="Erilaz Gauntlets +2",legs="Erilaz leg guards +2",feet="Erilaz greaves +2",
		ear1="Odnowa Earring +1",ear2="Erilaz Earring +1",ring1="Moonbeam Ring",ring2="Purity Ring",
		neck="Warder's Charm +1",waist="Engraved Belt",back={name="Ogma's Cape",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%'}}
	}

	sets.Idle.Regen = set_combine(sets.Idle,{
		body="Runeist coat +3",hands="Turms Mittens +1",feet="Turms Leggings +1",
		ring2="Gelatinous Ring +1",
		neck="Sanctity Necklace",
	})

	sets.Idle.AOE = set_combine(sets.Idle,{
		body="Erilaz surcoat +2",
		neck="Futhark torque +1",waist="Flume Belt"
	})

	sets.Idle.MEva = set_combine(sets.Idle,{
		--feet="Nyame Sollerets",
	})

	sets.Idle.MVMT = {legs="Carmine Cuisses +1"}

	-------------
	-- TP Sets --
	-------------

	sets.TP = {}

	sets.TP.LowACC = {
	}

	sets.TP.Parry = {
		main="Aettir",sub="Mensch Strap +1",ammo="Staunch Tathlum +1",
		head="Nyame Helm",body="Nyame Mail",hands="Turms Mittens +1",legs="Erilaz leg guards +2",feet="Turms Leggings +1",
		ear1="Odnowa Earring +1",ear2="Erilaz Earring +1",ring1="Moonbeam Ring",ring2="Gelatinous Ring +1",
		neck="Loricate Torque +1",waist="Engraved Belt",back={name="Ogma's Cape",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Parrying rate+5%'}}
	}

	sets.TP.MEva = set_combine(sets.Idle,{
	})

	-------------
	-- Precast --
	-------------
	
	sets.Precast = {
		ammo="Sapience Orb",
		head="Runeist Bandeau +2",body="Erilaz surcoat +2",hands="Leyline Gloves",legs="Ayanmo Cosciales +2",feet="Carmine Greaves +1",
		ear1="Odnowa Earring +1",ear2="Etiolation Earring",ring1="Kishar Ring",ring2="Weatherspoon Ring",
		neck="Voltsurge Torque",waist="Audumbla sash",back={name="Ogma's Cape",augments={'HP+60','"Fast Cast"+10','Phys. dmg. taken-10%'}}
	}

	-------------
	-- Midcast --
	-------------

    sets.Midcast = {}

	sets.Midcast.enm = {
		ammo="Sapience Orb",
		head="Despair Helm",body="Emet Harness +1",hands="Kurys Gloves",legs="Erilaz leg guards +2",feet="Erilaz greaves +2",
		ear1="Odnowa Earring +1",ear2="Cryptic Earring",ring1="Supershear Ring",ring2="Eihwaz Ring",
		neck="Moonlight necklace",waist="Goading Belt",back={name="Ogma's Cape",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%'}}
	}

	sets.Midcast.sird = set_combine(sets.Midcast.enm,{
		ammo="Staunch Tathlum +1",
		head="Erilaz Galea +2",hands="Rawhide Gloves",legs="Carmine Cuisses +1",feet="Erilaz greaves +2",
		ring1="Moonbeam Ring",
		neck="Moonlight necklace",waist="Audumbla Sash",back={name="Ogma's Cape",augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Spell interruption rate down-10%'}}
	})

	sets.Midcast.Flash = set_combine(sets.Midcast.enm,{
		head="Runeist Bandeau +2",
	})

	sets.Midcast.Flash.sird = set_combine(sets.Midcast.Flash,{
	})

	sets.Midcast.Enhancing = {
		ammo="Staunch Tathlum +1",
		head="Erilaz Galea +2",body="Nyame Mail",hands="Runeist Mitons +2",legs="Futhark Trousers +3",feet="Erilaz greaves +2",
		ear1="Odnowa Earring +1",ear2="Mimir Earring",ring1="Moonbeam Ring",ring2={name="Stikini Ring +1",bag="wardrobe 3"},
		neck="Colossus's Torque",waist="Olympus Sash",back={name="Ogma's Cape",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%'}}
	}

	sets.Midcast.regen = set_combine(sets.Midcast.Enhancing,{
		head="Runeist Bandeau +2",
		ear2="Erilaz Earring +1",
	})

	sets.Midcast.phx = set_combine(sets.Midcast.Enhancing,{
		head="Futhark bandeau +3",body="Taeon Tabard",hands="Taeon Gloves",legs="Taeon Tights",feet="Taeon Boots",
		ear1="Andoaa Earring",
	})

	sets.Midcast.phx.sird = set_combine(sets.Midcast.phx,{
		ammo="Staunch Tathlum +1",
		head="Taeon Chapeau",hands="Rawhide Gloves",
		neck="Moonlight necklace",waist="Audumbla Sash",back={name="Ogma's Cape",augments={'HP+60','Eva.+20 /Mag. Eva.+20','HP+20','Enmity+10','Spell interruption rate down-10%'}}
	})

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
	sets.JA['Provoke'] = set_combine(sets.Midcast.enm,{})
	sets.JA['Vivacious Pulse'] = set_combine(sets.Midcast.enm,{head="Erilaz Galea +2",})
	sets.JA['Liement'] = set_combine(sets.Midcast.enm,{body="Futhark Coat +3",})
	sets.JA['Gambit'] = set_combine(sets.Midcast.enm,{hands="Runeist Mitons +2",})
	sets.JA['Rayke'] = set_combine(sets.Midcast.enm,{feet="Futhark Boots",})
	sets.JA['Vallation'] = set_combine(sets.Midcast.enm,{body="Runeist Coat +3",})
	sets.JA['Valiance'] = set_combine(sets.Midcast.enm,{body="Runeist Coat +3",})
	sets.JA['Elemental Sforzo'] = set_combine(sets.Midcast.enm,{body="Futhark Coat +3",})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		ammo="Cath Palug Stone",
        head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Moonshade Earring",ear2="Thrud Earring",ring1="Regal Ring",ring2="Petrov Ring",
		neck="Sanctity Necklace",waist="Sailfi Belt +1",back={name="Ogma's Cape",augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%'}}
	}

	sets.WS["Savage Blade"] = set_combine(sets.WS,{
		ammo="Coiste Bodhar",
		neck="Light Gorget",
	})

	sets.WS["Sanguine Blade"] = set_combine(sets.WS,{
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",body="Carmine scale mail +1",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Moonshade Earring",ear2="Friomisi Earring",ring1="Archon Ring",ring2="Shiva Ring +1",
		neck="Sanctity Necklace",waist="Eschan Stone",
	})

	sets.WS["Flash Nova"] = set_combine(sets.WS["Sanguine Blade"],{head="Nyame Helm",ring1="Metamorph Ring +1"})

	sets.WS["Requiescat"] = set_combine(sets.WS,{
		head="Hjarrandi Helm",
		ear2="Lugra Earring +1",
		neck="Light Gorget",waist="Fotia Belt"
	})

	sets.WS['Cataclysm'] = set_combine(sets.WS["Sanguine Blade"],{})

	sets.WS['Torcleaver'] = set_combine(sets.WS,{
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
AccArray = {"Parry",'MEva',"LowACC"}
IdleArray = {'Auto','AOE','MEva'}
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
	elseif spell.type:contains('Magic') or spell.type =='Ninjutsu' then
        if spell.name == 'Stoneskin' then
            windower.ffxi.cancel_buff(37)--[[Cancels stoneskin, not delayed incase you get a Quick Cast]]
            equip(sets.Precast)
		end
		equip(sets.Precast)
	end
    updatedisplay()
end

function midcast(spell,action)
	if spell.name:contains('Cure') or spell.name:contains('Cura') then
		equip(sets.Midcast.Cure)
		if sirdMode then
			equip(sets.Midcast.Cure.sird)
		end
    elseif spell.name:match('Flash') or spell.name:match('Foil') then
		equip(sets.Midcast.Flash)
		if sirdMode then
			equip(sets.Midcast.Flash.sird)
		end
    elseif spell.name:match('Phalanx') then
		equip(sets.Midcast.phx)
		if sirdMode then
			equip(sets.Midcast.phx.sird)
		end
	elseif spell.name:contains('Regen') then
		equip(sets.Midcast.regen)
	elseif spell.skill == 'Blue Magic' then
		equip(sets.Midcast.Flash)
		if sirdMode then
			equip(sets.Midcast.sird)
		end
	elseif spell.skill == "Enhancing Magic" then
		equip(sets.Midcast.Enhancing)
        if spell.name:contains('Protect') or spell.name:contains('Shell') then
            equip({ring1="Sheltered Ring"})
		elseif spell.name:contains('Regen') then
			equip(sets.Midcast.regen)
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
		if AccArray[AccIndex] == 'Parry' then
			equipSet = equipSet.Parry
			cidleset = AccArray[AccIndex] .. ' Set'
		elseif AccArray[AccIndex] == 'MEva' then
			equipSet = equipSet.MEva
			cidleset = AccArray[AccIndex] .. ' Set'
		else
			equipSet = equipSet.LowACC
			cidleset = AccArray[AccIndex] .. ' Set'
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
		elseif IdleArray[IdleIndex] == 'AOE' then
			equip(sets.Idle.AOE)
			cidleset = 'AOE Idle'
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