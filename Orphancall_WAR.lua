include('organizer-lib')
-- Setup your Key Bindings here:

-- F9-F12
    windower.send_command('bind f9 gs c idle')		-- Toggle Idle set
    windower.send_command('bind f10 gs c hybrid')	-- Enable/Disable Hybrid mode, then toggle sets
    windower.send_command('bind f11 gs c acc')		-- Toggle Acc Mode
    windower.send_command('bind f12 gs c weapon')	-- Toggle Equiped Weapon
-- CTRL F9-F12
    windower.send_command('bind ^f9 gs c dw')		-- Toggle DualWield Mode
    windower.send_command('bind ^f10 gs c sword')	-- Toggle Naegling swap for warcry
    windower.send_command('bind ^f11 gs c dyna')	-- Toggle Dynamis Mode
    windower.send_command('bind ^f12 gs c cp')		-- Toggle CP Mode
-- ALT F9-12
    windower.send_command('bind !f12 gs c reset')	-- Reset all defaults
-- Other Binds
	windower.send_command('bind !e input /item "Echo Drops" <me>')
	windower.send_command('bind !r input /item "Remedy" <me>')
	windower.send_command('bind !p input /item "Panacea" <me>')
	windower.send_command('bind !h input /item "Holy Water" <me>')
	windower.send_command('bind !w input /equip ring2 "Warp Ring"; /echo Warping; wait 11; input /item "Warp Ring" <me>;')
	windower.send_command('bind !q input /equip ring2 "Dim. Ring (Holla)"; /echo Reisenjima; wait 11; input /item "Dim. Ring (Holla)" <me>;')
	
function file_unload() -- Unbinds your keybinds on unload.
    windower.send_command('unbind f9')
    windower.send_command('unbind f10')
    windower.send_command('unbind f11')
    windower.send_command('unbind f12')
    windower.send_command('unbind ^f9')
    windower.send_command('unbind ^f10')
    windower.send_command('unbind ^f11')
    windower.send_command('unbind ^f12')
    windower.send_command('unbind !f9')
    windower.send_command('unbind !f10')
    windower.send_command('unbind !f11')
    windower.send_command('unbind !f12')
end

AccIndex = 1
HybridIndex = 1
IdleIndex = 1
WeaponIndex = 1

AccArray = {'LowACC','HighACC'}
HybridArray = {'Auto','DT','Tank'}
IdleArray = {'Town','TP','DT','Tank','Weak'}
WeaponArray = {'Chango','Montante','Mercurial','Blurred','Joyeuse','Dolichenus','Naegling','Lance','Club'}

cidleset = 'Load Temp'
DWMode = false
HybridMode = false
SwordSwap = false
CPMode = false
DynaMode = false
FighterMode = false

-- HUD Setups
hud_x_pos = 1900	--important to update these if you have a smaller screen
hud_y_pos = 90		--important to update these if you have a smaller screen
hud_draggable = true
hud_font_size = 10
hud_transparency = 200 -- a value of 0 (invisible) to 255 (no transparency at all)



function sub_job_change(new,old)
	if player.sub_job == 'SAM' then
		DWMode = false
		send_command('input /macro book 1;wait .1;input /macro set 2') -- Change Macro Book Here
		send_command('wait 3;input /lockstyleset 1')
	elseif player.sub_job == 'NIN' then
		DWMode = true
		send_command('input /macro book 1;wait .1;input /macro set 1') -- Change Macro Book Here
		send_command('wait 3;input /lockstyleset 2')
	elseif player.sub_job == 'DNC' then
		DWMode = true
		send_command('input /macro book 1;wait .1;input /macro set 1') -- Change Macro Book Here
		send_command('wait 3;input /lockstyleset 2')
	end
	updatedisplay()
end

function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 2') -- Change Default Macro Book Here
	
	-------------
	-- Precast --
	-------------
	
	sets.JA = {}
	sets.JA['Berserk'] = {feet="Agoge Calligae +3",body="Pummeler's Lorica +3",back={name="Cichol's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}}
	sets.JA['Warcry'] = {head="Agoge Mask +3"}
	sets.JA['Aggressor'] = {body="Agoge Lorica +1",head="Pummeler's Mask +3"}
	sets.JA['Blood Rage'] = {body="Boii Lorica +1"}
	sets.JA['Retaliation'] = {feet="Boii Calligae +1",hands="Pummeler's Mufflers +3"}
	sets.JA['Restraint'] = {hands="Boii Mufflers +1"}
	sets.JA['Mighty Strikes'] = {hands="Agoge Mufflers +3"}
	sets.JA["Warrior's Charge"] = {legs="Agoge Cuisses +1"}
	sets.JA["Tomahawk"] = {feet={ name="Agoge Calligae +3", augments={'Enhances "Tomahawk" effect',}},ammo="Thr. Tomahawk",}
    sets.JA['Provoke'] = {
		head="Pummeler's Mask +3",
		body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands="Pumm. Mufflers +3",
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Eschite Greaves", augments={'HP+80','Enmity+7','Phys. dmg. taken -4',}},
		neck="Unmoving Collar",
		waist="Ioskeha Belt +1",
		left_ear="Cryptic Earring",
		right_ear="Friomisi Earring",
		left_ring="Apeile Ring +1",
		right_ring="Apeile Ring",
		back="Reiki Cloak",
	}

	sets.Weapon = {}
	sets.Weapon.Chango = {main="Chango",sub="Utu Grip"}
	sets.Weapon.Montante = {main="Montante +1",sub="Utu Grip"}
	sets.Weapon.Mercurial = {main="Mercurial Sword",sub="Utu Grip"}
	sets.Weapon.Blurred = {main="Naegling",sub="Blurred Shield +1"}
	sets.Weapon.Joyeuse = {main="Joyeuse",sub="Blurred Shield +1"}
	sets.Weapon.Dolichenus = {main="Dolichenus",sub="Sangarius +1"}
	sets.Weapon.Naegling = {main="Naegling",sub="Sangarius +1"}
	sets.Weapon.Lance = {main="Shining One",sub="Utu Grip"}
	sets.Weapon.Club = {main="Loxotic Mace +1",sub="Blurred Shield +1"}
	
	sets.Precast = {}
	sets.Precast.NIN = set_combine(sets.Precast,{
	})

	--------------------
	-- Style Lock Set --
	--------------------
	

	---------------
	-- Idle Sets --
	---------------

	sets.Idle = {
	    ammo="Aurgelmir Orb +1",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+17','"Dbl.Atk."+5','STR+2','Attack+7',}},
		hands="Sulev. Gauntlets +2",
		legs="Pumm. Cuisses +3",
		feet="Flam. Gambieras +2",
        neck={ name="War. Beads +2", augments={'Path: A',}},
		waist="Ioskeha Belt +1",
		left_ear="Cessance Earring",
		right_ear="Telos Earring",
		left_ring="Sheltered Ring",
		right_ring="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}

	sets.Idle.Town = set_combine(sets.Idle,{
		head="Protective Specs.",
		body="Bonewrk. Smock",
		neck="Boneworker's Torque",
		left_ring="Orvail Ring",
		right_ring="Craftmaster's Ring",
	})

	sets.Idle.TP = set_combine(sets.Idle,{
		ammo="Coiste Bodhar",
		head={ name="Valorous Mask", augments={'Pet: Accuracy+3 Pet: Rng. Acc.+3','Crit. hit damage +3%','Accuracy+15 Attack+15','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Pumm. Cuisses +3",
		feet="Pumm. Calligae +3",
		neck="Bathy Choker +1",
		waist="Ioskeha Belt +1",
		left_ear="Mamool Ja Earring",
		right_ear="Infused Earring",
		left_ring="Paguroidea Ring",
		right_ring="Sheltered Ring",
		back="Moonlight Cape",


	    --ammo="Aurgelmir Orb +1",
		--head="Flam. Zucchetto +2",
		--body={ name="Valorous Mail", augments={'Accuracy+17','"Dbl.Atk."+5','STR+2','Attack+7',}},
		--hands="Sulev. Gauntlets +2",
		--legs="Pumm. Cuisses +3",
		--feet="Pumm. Calligae +3",
        --neck={ name="War. Beads +2", augments={'Path: A',}},
		--waist="Ioskeha Belt +1",
		--left_ear="Brutal Earring",
		--right_ear="Telos Earring",
		--left_ring="Niqmaddu Ring",
		--right_ring="Flamma Ring",
		--back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},	
	})
	
	sets.Idle.DT = set_combine(sets.Idle,{
		ammo="Coiste Bodhar",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck={ name="War. Beads +2", augments={'Path: A',}},
		waist="Ioskeha Belt +1",
		left_ear="Schere Earring",
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Moonlight Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	})

	sets.Idle.Tank = set_combine(sets.Idle,{
	    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})

	sets.Idle.Weak = set_combine(sets.Idle,{
		head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
	    neck="Bathy Choker +1",
		right_ring="Paguroidea Ring",	
	})

	sets.Idle.MVMT = {feet="Hermes' Sandals"}

	-----------------
	-- Base TP Set --
	-----------------

	sets.TP = {
		ammo="Coiste Bodhar",
		head="Hjarrandi Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Pumm. Cuisses +3",
		feet="Pumm. Calligae +3",
		neck={ name="War. Beads +2", augments={'Path: A',}},
		waist="Ioskeha Belt +1",
		left_ear="Dedition Earring",
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}

	-----------------
	-- LowACC Sets --
	-----------------

	----------------------------------------------------------Base sets----------------------------------------------------------
	sets.TP.LowACC = set_combine(sets.TP,{
	})
	sets.TP.LowACC.Fighters = set_combine(sets.TP.LowACC,{
	})
	sets.TP.LowACC.Dual = set_combine(sets.TP.LowACC,{
		hands={ name="Emi. Gauntlets +1", augments={'Accuracy+25','"Dual Wield"+6','Pet: Accuracy+25',}},
		left_ear="Suppanomimi",
	})
	sets.TP.LowACC.Dual.Fighters = set_combine(sets.TP.LowACC.Dual,{
	})

	----------------------------------------------------------2h sets start----------------------------------------------------------
	--rag
	sets.TP.LowACC.Ragnarok = set_combine(sets.TP.LowACC,{
	})
	sets.TP.LowACC.Ragnarok.Fighters = set_combine(sets.TP.LowACC.Ragnarok,{
	})

	--Montante
	sets.TP.LowACC.Montante = set_combine(sets.TP.LowACC,{
	})
	sets.TP.LowACC.Montante.Fighters = set_combine(sets.TP.LowACC.Montante,{
	})

	--Mercurial
	sets.TP.LowACC.Mercurial = set_combine(sets.TP.LowACC,{
	})
	sets.TP.LowACC.Mercurial.Fighters = set_combine(sets.TP.LowACC.Mercurial,{
	})

	--Bravura
	sets.TP.LowACC.Bravura = set_combine(sets.TP.LowACC,{
	})
	sets.TP.LowACC.Bravura.Fighters = set_combine(sets.TP.LowACC.Bravura,{
	})

	--Chango
	sets.TP.LowACC.Chango = set_combine(sets.TP.LowACC,{
	})
	sets.TP.LowACC.Chango.Fighters = set_combine(sets.TP.LowACC.Chango,{
	})

	--Lance
	sets.TP.LowACC.Lance = set_combine(sets.TP.LowACC,{
		ammo="Yetshila +1",
		right_ear="Cessance Earring",
		right_ring="Regal Ring",
	})
	sets.TP.LowACC.Lance.Fighters = set_combine(sets.TP.LowACC.Lance,{
	})

	----------------------------------------------------------1h sets start----------------------------------------------------------
	--Club
	sets.TP.LowACC.Club = set_combine(sets.TP.LowACC,{
		ammo="Yetshila +1",
		right_ear="Cessance Earring",
		right_ring="Regal Ring",
	})
	sets.TP.LowACC.Club.Fighters = set_combine(sets.TP.LowACC.Club,{
	})
	sets.TP.LowACC.Club.Dual = set_combine(sets.TP.LowACC.Club,{
		hands={ name="Emi. Gauntlets +1", augments={'Accuracy+25','"Dual Wield"+6','Pet: Accuracy+25',}},
		left_ear="Suppanomimi",
	})
	sets.TP.LowACC.Club.Dual.Fighters = set_combine(sets.TP.LowACC.Club.Dual,{
	})

	--Dolichenus
	sets.TP.LowACC.Dolichenus = set_combine(sets.TP.LowACC,{
	})
	sets.TP.LowACC.Dolichenus.Fighters = set_combine(sets.TP.LowACC.Dolichenus,{
	})
	sets.TP.LowACC.Dolichenus.Dual = set_combine(sets.TP.LowACC.Dolichenus,{
	    hands={ name="Emi. Gauntlets +1", augments={'Accuracy+25','"Dual Wield"+6','Pet: Accuracy+25',}},
		left_ear="Suppanomimi",
	})
	sets.TP.LowACC.Dolichenus.Dual.Fighters = set_combine(sets.TP.LowACC.Dolichenus.Dual,{
	})

	--Naegling
	sets.TP.LowACC.Naegling = set_combine(sets.TP.LowACC,{
		ammo="Yetshila +1",
		right_ear="Cessance Earring",
		right_ring="Regal Ring",
	})
	sets.TP.LowACC.Naegling.Fighters = set_combine(sets.TP.LowACC.Naegling,{
	})
	sets.TP.LowACC.Naegling.Dual = set_combine(sets.TP.LowACC.Naegling,{
		hands={ name="Emi. Gauntlets +1", augments={'Accuracy+25','"Dual Wield"+6','Pet: Accuracy+25',}},
		left_ear="Suppanomimi",
	})
	sets.TP.LowACC.Naegling.Dual.Fighters = set_combine(sets.TP.LowACC.Naegling.Dual,{
	})

	--Joyeuse
	sets.TP.LowACC.Joyeuse = set_combine(sets.TP.LowACC,{
	})
	sets.TP.LowACC.Joyeuse.Fighters = set_combine(sets.TP.LowACC.Joyeuse,{
	})
	sets.TP.LowACC.Joyeuse.Dual = set_combine(sets.TP.LowACC.Joyeuse,{
		hands={ name="Emi. Gauntlets +1", augments={'Accuracy+25','"Dual Wield"+6','Pet: Accuracy+25',}},
		left_ear="Suppanomimi",
	})
	sets.TP.LowACC.Joyeuse.Dual.Fighters = set_combine(sets.TP.LowACC.Joyeuse.Dual,{
	})
	
	------------------
	-- HighACC Sets --
	------------------

	----------------------------------------------------------Base sets----------------------------------------------------------
	sets.TP.HighACC = set_combine(sets.TP.LowACC,{
	    ammo="Seething Bomblet",
		body="Pumm. Lorica +3",
		hands="Pumm. Mufflers +3",
		right_ring="Regal Ring",
	})
	sets.TP.HighACC.Fighters = set_combine(sets.TP.HighACC,{
	})
	sets.TP.HighACC.Dual = set_combine(sets.TP.HighACC,{
		hands={ name="Emi. Gauntlets +1", augments={'Accuracy+25','"Dual Wield"+6','Pet: Accuracy+25',}},
		left_ear="Suppanomimi",
	})
	sets.TP.HighACC.Dual.Fighters = set_combine(sets.TP.HighACC.Dual,{
	})

	----------------------------------------------------------2h sets start----------------------------------------------------------
	--rag
	sets.TP.HighACC.Ragnarok = set_combine(sets.TP.HighACC,{
	})
	sets.TP.HighACC.Ragnarok.Fighters = set_combine(sets.TP.HighACC.Ragnarok,{
	})

	--Montante
	sets.TP.HighACC.Montante = set_combine(sets.TP.HighACC,{
	})
	sets.TP.HighACC.Montante.Fighters = set_combine(sets.TP.HighACC.Montante,{
	})

	--Mercurial
	sets.TP.HighACC.Mercurial = set_combine(sets.TP.HighACC,{
	})
	sets.TP.HighACC.Mercurial.Fighters = set_combine(sets.TP.HighACC.Mercurial,{
	})

	--Bravura
	sets.TP.HighACC.Bravura = set_combine(sets.TP.HighACC,{
	})
	sets.TP.HighACC.Bravura.Fighters = set_combine(sets.TP.HighACC.Bravura,{
	})

	--Chango
	sets.TP.HighACC.Chango = set_combine(sets.TP.HighACC,{
	})
	sets.TP.HighACC.Chango.Fighters = set_combine(sets.TP.HighACC.Chango,{
	})

	--Lance
	sets.TP.HighACC.Lance = set_combine(sets.TP.HighACC,{
		ammo="Yetshila +1",
		right_ear="Cessance Earring",
		right_ring="Regal Ring",
	})
	sets.TP.HighACC.Lance.Fighters = set_combine(sets.TP.HighACC.Lance,{
	})

	----------------------------------------------------------1h sets start----------------------------------------------------------
	--Club
	sets.TP.HighACC.Club = set_combine(sets.TP.HighACC,{
		ammo="Yetshila +1",
		right_ear="Cessance Earring",
		right_ring="Regal Ring",
	})
	sets.TP.HighACC.Club.Fighters = set_combine(sets.TP.HighACC.Club,{
	})
	sets.TP.HighACC.Club.Dual = set_combine(sets.TP.HighACC.Club,{
		hands={ name="Emi. Gauntlets +1", augments={'Accuracy+25','"Dual Wield"+6','Pet: Accuracy+25',}},
		left_ear="Suppanomimi",
	})
	sets.TP.HighACC.Club.Dual.Fighters = set_combine(sets.TP.HighACC.Club.Dual,{
	})

	--Dolichenus
	sets.TP.HighACC.Dolichenus = set_combine(sets.TP.HighACC,{
	})
	sets.TP.HighACC.Dolichenus.Fighters = set_combine(sets.TP.HighACC.Dolichenus,{
	})
	sets.TP.HighACC.Dolichenus.Dual = set_combine(sets.TP.HighACC.Dolichenus,{
		hands={ name="Emi. Gauntlets +1", augments={'Accuracy+25','"Dual Wield"+6','Pet: Accuracy+25',}},
		left_ear="Suppanomimi",
	})
	sets.TP.HighACC.Dolichenus.Dual.Fighters = set_combine(sets.TP.HighACC.Dolichenus.Dual,{
	})

	--Naegling
	sets.TP.HighACC.Naegling = set_combine(sets.TP.HighACC,{
	})
	sets.TP.HighACC.Naegling.Fighters = set_combine(sets.TP.HighACC.Naegling,{
	})
	sets.TP.HighACC.Naegling.Dual = set_combine(sets.TP.HighACC.Naegling,{
		hands={ name="Emi. Gauntlets +1", augments={'Accuracy+25','"Dual Wield"+6','Pet: Accuracy+25',}},
		left_ear="Suppanomimi",
	})
	sets.TP.HighACC.Naegling.Dual.Fighters = set_combine(sets.TP.HighACC.Naegling.Dual,{
	})

	--Joyeuse
	sets.TP.HighACC.Joyeuse = set_combine(sets.TP.HighACC,{
	})
	sets.TP.HighACC.Joyeuse.Fighters = set_combine(sets.TP.HighACC.Joyeuse,{
	})
	sets.TP.HighACC.Joyeuse.Dual = set_combine(sets.TP.HighACC.Joyeuse,{
		hands={ name="Emi. Gauntlets +1", augments={'Accuracy+25','"Dual Wield"+6','Pet: Accuracy+25',}},
		left_ear="Suppanomimi",
	})
	sets.TP.HighACC.Joyeuse.Dual.Fighters = set_combine(sets.TP.HighACC.Joyeuse.Dual,{
	})

	-----------------
	-- Hybrid Sets --
	-----------------

	sets.TP.Hybrid = set_combine(sets.TP.LowACC,{
	})

	sets.TP.Hybrid.Bravura = set_combine(sets.TP.LowACC,{
	})

	sets.TP.DT = set_combine(sets.TP.LowACC,{
		body="Sakpata's Plate",
		feet="Sulev. Leggings +2",
		neck="Loricate Torque +1",
		right_ear="Telos Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
	})
	
	sets.TP.DT.Dual = set_combine(sets.TP.LowACC,{
		body="Sakpata's Plate",
		hands={ name="Emi. Gauntlets +1", augments={'Accuracy+25','"Dual Wield"+6','Pet: Accuracy+25',}},		
		feet="Sulev. Leggings +2",
		neck="Loricate Torque +1",
		left_ear="Suppanomimi",
		right_ear="Telos Earring",		
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
	})
	
	sets.TP.Tank = set_combine(sets.TP.LowACC,{
	    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back="Moonlight Cape",
	})
	
	sets.TP.Tank.Dual = set_combine(sets.TP.Tank,{
		hands={ name="Emi. Gauntlets +1", augments={'Accuracy+25','"Dual Wield"+6','Pet: Accuracy+25',}},
		left_ear="Suppanomimi",
	})
	----------------------
	-- WeaponSkill Sets --
	----------------------

	----------------------------------------------------------base ws set----------------------------------------------------------
	sets.WS = {
		ammo="Knobkierrie",
		head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
		body="Pumm. Lorica +3",    
		hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
		legs="Pumm. Cuisses +3",
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Thrud Earring",
		left_ring="Regal Ring",
		right_ring="Moonlight Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-1%',}},
	}

	--Resolution
	sets.WS['Resolution'] = set_combine(sets.WS,{
		head="Flam. Zucchetto +2",
		legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP" +6',}},
		feet="Flam. Gambieras +2",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Brutal Earring",
		right_ring="Petrov Ring",
	})
	sets.WS['Resolution'].WSD = set_combine(sets.WS["Resolution"],{
	})
	sets.WS['Resolution'].HighACC = set_combine(sets.WS["Resolution"],{
		hands="Pumm. Mufflers +3",
		feet="Pumm. Calligae +3",
		left_ear="Cessance Earring",
		right_ear="Telos Earring",
		right_ring="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	})
	sets.WS['Resolution'].MS = set_combine(sets.WS["Resolution"],{
		ammo="Yetshila +1",
		head="Flam. Zucchetto +2",
		hands={ name="Valorous Mitts", augments={'Accuracy+28','Crit. hit damage +5%','INT+6','Attack+5',}},
		right_ear="Brutal Earring",
		left_ring="Moonlight Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	})

	--Upheaval
	sets.WS['Upheaval'] = {
		ammo="Knobkierrie",
		head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
		body="Pumm. Lorica +3",
		hands={ name="Odyssean Gauntlets", augments={'Attack+12','Weapon skill damage +4%','VIT+14','Accuracy+15',}},
		legs={ name="Odyssean Cuisses", augments={'Attack+12','Weapon skill damage +4%','VIT+11','Accuracy+9',}},
		feet="Sulev. Leggings +2",
        neck={ name="War. Beads +2", augments={'Path: A',}},
		waist="Ioskeha Belt +1",
		right_ear="Thrud Earring",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
	}
	sets.WS['Upheaval'].WSD = {
		ammo="Knobkierrie",
		head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
		body="Pumm. Lorica +3",
		hands={ name="Odyssean Gauntlets", augments={'Attack+12','Weapon skill damage +4%','VIT+14','Accuracy+15',}},
		legs={ name="Odyssean Cuisses", augments={'Attack+12','Weapon skill damage +4%','VIT+11','Accuracy+9',}},
		feet="Sulev. Leggings +2",
        neck={ name="War. Beads +2", augments={'Path: A',}},
		waist="Ioskeha Belt +1",
		right_ear="Thrud Earring",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}},
	}
	sets.WS['Upheaval'].HighACC = set_combine(sets.WS['Upheaval'],{
		hands="Pumm. Mufflers +3",
		feet="Pumm. Calligae +3",
		left_ear="Cessance Earring",
		right_ear="Telos Earring",
		right_ring="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	})
	sets.WS['Upheaval'].MS = set_combine(sets.WS['Upheaval'],{
		ammo="Yetshila +1",
		head="Flam. Zucchetto +2",
		hands={ name="Valorous Mitts", augments={'Accuracy+28','Crit. hit damage +5%','INT+6','Attack+5',}},
		right_ear="Brutal Earring",
		left_ring="Moonlight Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	})

	--Ukkos
	sets.WS["Ukko's Fury"] = set_combine(sets.WS,{
	})
	sets.WS["Ukko's Fury"].WSD = set_combine(sets.WS['Ukkos Fury'],{
	})
	sets.WS["Ukko's Fury"].HighACC = set_combine(sets.WS['Ukkos Fury'],{
	})

	--Gust Slash
	sets.WS["Gust Slash"] = set_combine(sets.WS,{
	})
	sets.WS["Gust Slash"].WSD = set_combine(sets.WS['Gust Slash'],{
	})
	sets.WS["Gust Slash"].HighACC = set_combine(sets.WS['Gust Slash'],{
	})

	--Metatron Torment
	sets.WS['Metatron Torment'] = set_combine(sets.WS,{
	})
	sets.WS['Metatron Torment'].WSD = set_combine(sets.WS['Metatron Torment'],{
	})
	sets.WS['Metatron Torment'].HighACC = set_combine(sets.WS['Metatron Torment'],{
	})

	--Fell Cleave
	sets.WS['Fell Cleave'] = set_combine(sets.WS,{
	})
	sets.WS['Fell Cleave'].WSD = set_combine(sets.WS['Fell Cleave'],{
	})
	sets.WS['Fell Cleave'].HighACC = set_combine(sets.WS['Fell Cleave'],{
		hands="Pumm. Mufflers +3",
		feet="Pumm. Calligae +3",
		left_ear="Cessance Earring",
		right_ear="Telos Earring",
		right_ring="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	})

	--Hexa Strike
	sets.WS['Hexa Strike'] = {
		ammo="Yetshila +1",
		head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
		body="Pumm. Lorica +3",
		hands={ name="Agoge Mufflers +3", augments={'Enhances "Mighty Strikes" effect',}},
		legs="Pumm. Cuisses +3",
		feet="Boii Calligae +1",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Telos Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Regal Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-1%',}},
	}
	sets.WS['Hexa Strike'].WSD = set_combine(sets.WS['Hexa Strike'],{
		left_ring="Epaminondas's Ring",
	})
	sets.WS['Hexa Strike'].HighACC = set_combine(sets.WS['Hexa Strike'],{
	})

	--Ground Strike
	sets.WS['Ground Strike'] = set_combine(sets.WS['Metatron Torment'],{ear1="Moonshade Earring"})
	sets.WS['Ground Strike'].WSD = set_combine(sets.WS['Metatron Torment'],{ear1="Moonshade Earring"})
	sets.WS['Ground Strike'].HighACC = set_combine(sets.WS['Metatron Torment'],{ear1="Moonshade Earring"})

	--Calamity
	sets.WS['Calamity'] = set_combine(sets.WS['Metatron Torment'],{ear1="Moonshade Earring"})
	sets.WS['Calamity'].WSD = set_combine(sets.WS['Metatron Torment'],{ear1="Moonshade Earring"})
	sets.WS['Calamity'].HighACC = set_combine(sets.WS['Metatron Torment'],{ear1="Moonshade Earring"})

	--Mistral Axe
	sets.WS['Mistral Axe'] = set_combine(sets.WS['Metatron Torment'],{ear1="Moonshade Earring"})
	sets.WS['Mistral Axe'].WSD = set_combine(sets.WS['Metatron Torment'],{ear1="Moonshade Earring"})
	sets.WS['Mistral Axe'].HighACC = set_combine(sets.WS['Metatron Torment'],{ear1="Moonshade Earring"})
	
	--Impulse Drive
	sets.WS['Impulse Drive'] = {
		ammo="Knobkierrie",
		head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
		body="Pumm. Lorica +3",
		hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%',}},
		legs="Sakpata's Cuisses",
		feet="Sulev. Leggings +2",
		neck={ name="War. Beads +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Thrud Earring",
		right_ear="Lugra Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-1%',}},
	}	
	sets.WS['Impulse Drive'].WSD = set_combine(sets.WS['Impulse Drive'],{
		left_ring="Epaminondas's Ring",
	})	
	sets.WS['Impulse Drive'].HighACC = set_combine(sets.WS['Impulse Drive'],{
	})

	--Savage Blade
	sets.WS['Savage Blade'] = {
		ammo="Knobkierrie",
		head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
		body="Pumm. Lorica +3",
		hands={ name="Odyssean Gauntlets", augments={'Attack+12','Weapon skill damage +4%','VIT+14','Accuracy+15',}},
		legs="Pumm. Cuisses +3",
		feet="Sulev. Leggings +2",
		neck={ name="War. Beads +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Thrud Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-1%',}},
	}
	sets.WS['Savage Blade'].WSD = {
		ammo="Knobkierrie",
		head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
		body="Pumm. Lorica +3",
		hands={ name="Odyssean Gauntlets", augments={'Attack+12','Weapon skill damage +4%','VIT+14','Accuracy+15',}},
		legs="Pumm. Cuisses +3",
		feet="Sulev. Leggings +2",
		neck={ name="War. Beads +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Thrud Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-1%',}},
	}
	sets.WS['Savage Blade'].HighACC = {
		ammo="Knobkierrie",
		head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
		body="Pumm. Lorica +3",
		hands={ name="Odyssean Gauntlets", augments={'Attack+12','Weapon skill damage +4%','VIT+14','Accuracy+15',}},
		legs="Pumm. Cuisses +3",
		feet="Sulev. Leggings +2",
		neck={ name="War. Beads +2", augments={'Path: A',}},
		waist="Fotia Belt",
		left_ear="Thrud Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-1%',}},
	}

	--Requiescat
	sets.WS['Requiescat'] = set_combine(sets.WS,{
	})
	sets.WS['Requiescat'].WSD = set_combine(sets.WS['Requiescat'],{
	})
	sets.WS['Requiescat'].HighACC = set_combine(sets.WS['Requiescat'],{
	})

	--Cloudsplitter
	sets.WS['Cloudsplitter'] = set_combine(sets.WS,{
		ammo="Knobkierrie",
		head={ name="Agoge Mask +3", augments={'Enhances "Savagery" effect',}},
		body="Pumm. Lorica +3",
		hands="Sulev. Gauntlets +2",
		legs={ name="Odyssean Cuisses", augments={'Attack+12','Weapon skill damage +4%','VIT+11','Accuracy+9',}},
		feet="Sulev. Leggings +2",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Stikini Ring +1",
		right_ring="Epaminondas's Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-1%',}},
	})
	sets.WS['Cloudsplitter'].WSD = set_combine(sets.WS['Cloudsplitter'],{
	})
	sets.WS['Cloudsplitter'].HighACC = set_combine(sets.WS['Cloudsplitter'],{
	})

	--Decimation
	sets.WS['Decimation'] = set_combine(sets.WS,{
	    ammo="Seething Bomblet",
		head="Flam. Zucchetto +2",
		body={ name="Argosy Hauberk +1", augments={'STR+12','Attack+20','"Store TP"+6',}},
		legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
		feet="Pumm. Calligae +3",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		right_ring="Petrov Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	})
	sets.WS['Decimation'].WSD = set_combine(sets.WS['Decimation'],{
	})	
	sets.WS['Decimation'].HighACC = set_combine(sets.WS['Decimation'],{
		hands="Pumm. Mufflers +3",
		right_ear="Telos Earring",
	})

	---------------
	-- Aftercast --
	---------------

    sets.aftercast = {}

end

--------------------------------------------------------------------------------------------------------------
-- HUD STUFF
--------------------------------------------------------------------------------------------------------------

local res = require('resources')

function setup_hud()
    war_property = {}
    war_info = {}
    war_info.box={
        pos={x=hud_x_pos,y=hud_y_pos},
        text={font='Segoe UI Symbol', size=hud_font_size, Fonts={'sans-serif'},},
        bg={alpha=hud_transparency,red=0,green=0,blue=0},
        flags={draggable=hud_draggable},
        padding=4
    }
    window = texts.new(war_info.box)
    initialize(window, war_info.box)
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
	str = str..'\nHybridMode: \\cs(150,150,255)'..tostring(HybridMode)..'\\cr'
	str = str..'\n   HybridSet: \\cs(150,150,255)'..HybridArray[HybridIndex]..'\\cr'
	str = str..'\nIdleSet: \\cs(150,150,255)'..IdleArray[IdleIndex]..'\\cr'
	str = str..'\nDWMode: \\cs(150,150,255)'..tostring(DWMode)..'\\cr'
	str = str..'\nSwordMode: \\cs(150,150,255)'..tostring(SwordSwap)..'\\cr'
	str = str..'\nDynaMode: \\cs(150,150,255)'..tostring(DynaMode)..'\\cr'
	str = str..'\nCPMode: \\cs(150,150,255)'..tostring(CPMode)..'\\cr'
	str = str..'\nFighter\'sRoll: \\cs(150,150,255)'..tostring(FighterMode)..'\\cr'

    local info = {}
    info.modestates = str

    window:update(info)
end

setup_hud()

--------------------------------------------------------------------------------------------------------------
--End Hud Stuff
--------------------------------------------------------------------------------------------------------------
         
function pretarget(spell,action)
	if spell.type == 'WeaponSkill' then -- Cancel WS If You Are Out Of Range
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
		if spell.target.distance > (ability_distance * range_mult[ability_distance] + spell.target.model_size + player.model_size) then
		    cancel_spell()
			add_to_chat(123, spell.name..' Canceled: [Out of Range]')
			aftercast()
			return
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
					equip({neck="Berserker's Torque"})
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
    elseif buff:lower() == 'weakness' then
        if gain then
            equip(sets.Idle.Weak)
			IdleIndex = 5
			add_to_chat(123,'Weakness Gear Equiped')
        end
    elseif buff:lower() == 'fighter\'s roll' then
        if gain then
			FighterMode = true
			add_to_chat(123,'Fighter\'s roll detected')
            aftercast()
        elseif not gain then
			FighterMode = false
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
		if buffactive['Mighty Strikes'] then
			if sets.WS[spell.name].MS then
				equipSet = equipSet[spell.name].MS
				add_to_chat(122,spell.name .. ' MS Set')
			elseif equipSet[spell.name] then
				equipSet = equipSet[spell.name]
				add_to_chat(122,spell.name .. ' Set')
			end
		elseif AccArray[AccIndex] == 'HighACC' then
			if sets.WS[spell.name].HighACC then
				equipSet = equipSet[spell.name].HighACC
				add_to_chat(122,spell.name .. ' HighACC Set')
			elseif equipSet[spell.name] then
				equipSet = equipSet[spell.name]
				add_to_chat(122,spell.name .. ' Set')
			end
		elseif player.tp < 1750 or buffactive.Sekkanoki then
			if equipSet[spell.name] then
				equipSet = equipSet[spell.name]
				add_to_chat(122,spell.name .. ' Set')
			end
		elseif player.tp > 2750 then
			if equipSet[spell.name].WSD then
				equipSet = set_combine(equipSet[spell.name].WSD,{right_ear="Ishvara Earring"})
				add_to_chat(122,spell.name .. ' Max Set')
			elseif equipSet[spell.name] then
				equipSet = equipSet[spell.name]
				add_to_chat(122,spell.name .. ' Set')
			end
		elseif player.tp > 1750 then
			if equipSet[spell.name].WSD then
				equipSet = equipSet[spell.name].WSD
				add_to_chat(122,spell.name .. ' WSD Set')
			elseif equipSet[spell.name] then
				equipSet = equipSet[spell.name]
				add_to_chat(122,spell.name .. ' Set')
			end
		end
		equip(equipSet)

		if world.time >= 17*60 or world.time < 7*60 then -- Dusk to Dawn time
			equip({right_ear="Lugra Earring +1"})
		end

		if spell.name == 'Stardiver' and (world.day_element == 'Light' or world.day_element == 'Earth' or world.day_element == 'Dark') then
			equip({head="Gavialis helm"})
		elseif spell.name == 'Resolution' or spell.name == "King's Justice" and (world.day_element == 'Lightning' or world.day_element == 'Wind' or world.day_element == 'Earth') then
			equip({head="Gavialis helm"})
		elseif spell.name == 'Decimation' and (world.day_element == 'Light' or world.day_element == 'Fire' or world.day_element == 'Water') then
			equip({head="Gavialis helm"})
		end
	elseif spell.type == 'Ninjutsu' then
        equip(sets.Precast.NIN)
	elseif spell.type:contains('Magic') then
        equip(sets.Precast)
	end
    updatedisplay()
end

function midcast(spell,action)
end

function aftercast(spell,action)
	if midaction() then
        return
    end

	if player.status == 'Engaged' then
		equipSet = sets.TP
		if HybridMode then
			if HybridArray[HybridIndex] == 'Auto' then
				if player.equipment.main == 'Bravura' and buffactive['Aftermath'] then
					equipSet = sets.TP.Hybrid.Bravura
					cidleset = 'Bravura Hybrid'
				elseif player.hpp < 65 then
					equipSet = sets.TP.DT
					cidleset = 'Max DT Gear'
					if DWMode then
						equipSet = equipSet.Dual
						cidleset = 'DW Max DT Gear'
					end
				else
					equipSet = sets.TP.Hybrid
					cidleset = 'Hybrid Gear'
					if DWMode then
						equipSet = equipSet.Dual
						cidleset = 'DW Hybrid Gear'
					end
				end
			elseif HybridArray[HybridIndex] == 'DT' then
				equipSet = sets.TP.DT
				cidleset = 'Max DT Gear'
				if DWMode then
					equipSet = equipSet.Dual
					cidleset = 'DW Max DT Gear'
				end
			elseif HybridArray[HybridIndex] == 'Tank' then
				equipSet = sets.TP.Tank
				cidleset = 'Tank Gear'
				if DWMode then
					equipSet = equipSet.Dual
					cidleset = 'DW Max DT Gear'
				end
			end
		else
			----------------------------------------------------------2h weapon section----------------------------------------------------------
			if player.equipment.main == 'Ragnarok' then
				equipSet = equipSet[AccArray[AccIndex]].Ragnarok
				cidleset = 'Ragnarok ' .. AccArray[AccIndex]
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Ragnarok ' .. AccArray[AccIndex]
				end
			elseif player.equipment.main == 'Montante +1' then
				equipSet = equipSet[AccArray[AccIndex]].Montante
				cidleset = 'Montante ' .. AccArray[AccIndex]
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Montante ' .. AccArray[AccIndex]
				end
			elseif player.equipment.main == 'Mercurial Sword' then
				equipSet = equipSet[AccArray[AccIndex]].Mercurial
				cidleset = 'Mercurial ' .. AccArray[AccIndex]
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Mercurial ' .. AccArray[AccIndex]
				end
			elseif player.equipment.main == 'Bravura' then
				equipSet = equipSet[AccArray[AccIndex]].Bravura
				cidleset = 'Bravura ' .. AccArray[AccIndex]
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Bravura ' .. AccArray[AccIndex]
				end
			elseif player.equipment.main == 'Chango' then 
				equipSet = equipSet[AccArray[AccIndex]].Chango
				cidleset = 'Chango ' .. AccArray[AccIndex]
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Chango ' .. AccArray[AccIndex]
				end
			elseif player.equipment.main == 'Shining One' then
				equipSet = equipSet[AccArray[AccIndex]].Lance
				cidleset = 'Lance ' .. AccArray[AccIndex]
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Lance ' .. AccArray[AccIndex]
				end
			----------------------------------------------------------1h weapon section----------------------------------------------------------
			elseif player.equipment.main == 'Loxotic Mace +1' then
				equipSet = equipSet[AccArray[AccIndex]].Club
				cidleset = 'Club ' .. AccArray[AccIndex]
				if DWMode then
					equipSet = equipSet.Dual
					cidleset = 'DW Club ' .. AccArray[AccIndex]
					if FighterMode then
						equipSet = equipSet.Fighters
						cidleset = 'DW Fighters Club ' .. AccArray[AccIndex]
					end
				end
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Club ' .. AccArray[AccIndex]
				end
			elseif player.equipment.main == 'Dolichenus' then
				equipSet = equipSet[AccArray[AccIndex]].Dolichenus
				cidleset = 'Dolichenus ' .. AccArray[AccIndex]
				if DWMode then
					equipSet = equipSet.Dual
					cidleset = 'DW Dolichenus ' .. AccArray[AccIndex]
					if FighterMode then
						equipSet = equipSet.Fighters
						cidleset = 'DW Fighters Dolichenus ' .. AccArray[AccIndex]
					end
				end
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Dolichenus ' .. AccArray[AccIndex]
				end
			elseif player.equipment.main == 'Naegling' then
				equipSet = equipSet[AccArray[AccIndex]].Naegling
				cidleset = 'Naegling ' .. AccArray[AccIndex]
				if DWMode then
					equipSet = equipSet.Dual
					cidleset = 'DW Naegling ' .. AccArray[AccIndex]
					if FighterMode then
						equipSet = equipSet.Fighters
						cidleset = 'DW Fighters Naegling ' .. AccArray[AccIndex]
					end
				end
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Naegling ' .. AccArray[AccIndex]
				end
			elseif player.equipment.main == 'Joyeuse' then
				equipSet = equipSet[AccArray[AccIndex]].Joyeuse
				cidleset = 'Joyeuse ' .. AccArray[AccIndex]
				if DWMode then
					equipSet = equipSet.Dual
					cidleset = 'DW Joyeuse ' .. AccArray[AccIndex]
					if FighterMode then
						equipSet = equipSet.Fighters
						cidleset = 'DW Fighters Joyeuse ' .. AccArray[AccIndex]
					end
				end
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters Joyeuse ' .. AccArray[AccIndex]
				end
			else
				equipSet = equipSet[AccArray[AccIndex]]
				cidleset = AccArray[AccIndex] .. ' Generic'
				if DWMode then
					equipSet = equipSet.Dual
					cidleset = 'DW ' .. AccArray[AccIndex] .. ' Generic'
					if FighterMode then
						equipSet = equipSet.Fighters
						cidleset = 'DW Fighters ' .. AccArray[AccIndex] .. ' Generic'
					end
				end
				if FighterMode then
					equipSet = equipSet.Fighters
					cidleset = 'Fighters ' .. AccArray[AccIndex] .. ' Generic'
				end
			end
		end
		equip(equipSet)

		if SwordSwap then
			if buffactive['Warcry'] and player.equipment.main == 'Dolichenus' and player.tp < 350 then
				if DWMode then
					equip({main="Naegling",sub="Sangarius +1"})
				else
					equip({main="Naegling",sub="Blurred shield +1"})
				end
			elseif player.equipment.main == 'Naegling' and player.tp < 350 then
				if DWMode then
					equip({main="Dolichenus",sub="Sangarius +1"})
				else
					equip({main="Dolichenus",sub="Blurred shield +1"})
				end
			end
		end
	elseif buffactive['Weakness'] then
        equip(sets.Idle.Weak)
		cidleset = 'Weakness Gear'
	else
		equipSet = sets.Idle[IdleArray[IdleIndex]]
		equip(equipSet)
		cidleset = 'Idle Gear'
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

function self_command(command) -- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command)
	if command == 'acc' then -- Accuracy Level Toggle
		AccIndex = (AccIndex % #AccArray) + 1
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
	elseif command == 'hybrid' then -- Hybrid Toggle
        if HybridIndex == 3 then
			HybridIndex = 1
            HybridMode = false
            add_to_chat(8,'----- Hybrid Mode Disabled -----')
        elseif HybridMode then
			HybridIndex = (HybridIndex % #HybridArray) + 1
			add_to_chat(158,'Hybrid Set: ' .. HybridArray[HybridIndex])
        elseif HybridIndex == 1 then
            HybridMode = true
            add_to_chat(8,'----- Hybrid Mode Enabled -----')
			add_to_chat(158,'Hybrid Set: ' .. HybridArray[HybridIndex])
        end
	elseif command == 'idle' then -- Idle Toggle
		IdleIndex = (IdleIndex % #IdleArray) + 1
		add_to_chat(158,'Idle Mode: ' .. IdleArray[IdleIndex])
	elseif command == 'weapon' then -- Weapon Swap
		equipSet = sets.Weapon[WeaponArray[WeaponIndex]]
		equip(equipSet)
		add_to_chat(158,'Weapon Equiped: ' .. WeaponArray[WeaponIndex])
		WeaponIndex = (WeaponIndex % #WeaponArray) + 1
		if equipSet == sets.Weapon.Chango then
			send_command('input /macro book 1;wait .1;input /macro set 2')
		elseif equipSet == sets.Weapon.Lance then
			send_command('input /macro book 1;wait .1;input /macro set 5')
		elseif equipSet == sets.Weapon.Club then
			send_command('input /macro book 1;wait .1;input /macro set 9')
		elseif equipSet == sets.Weapon.Dolichenus then
			send_command('input /macro book 1;wait .1;input /macro set 1')
		elseif equipSet == sets.Weapon.Naegling then
			send_command('input /macro book 1;wait .1;input /macro set 3')
		elseif equipSet == sets.Weapon.Montante then
			send_command('input /macro book 1;wait .1;input /macro set 4')
		elseif equipSet == sets.Weapon.Mercurial then
			send_command('input /macro book 1;wait .1;input /macro set 4')
		elseif equipSet == sets.Weapon.Joyeuse then
			send_command('input /macro book 1;wait .1;input /macro set 6')
		elseif equipSet == sets.Weapon.Blurred then
			send_command('input /macro book 1;wait .1;input /macro set 6')
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
            add_to_chat(8,'----- CP Mode Disabled -----')
        else
            CPMode = true
			equip({back="Mecistopins Mantle"})
            disable('back')
            add_to_chat(8,'----- CP Mode Enabled, Cape Locked -----')
        end
    elseif command == 'dw' then
        if DWMode then
            DWMode = false
            add_to_chat(8,'----- DualWield Mode Disabled -----')
        else
            DWMode = true
            add_to_chat(8,'----- DualWield Mode Enabled -----')
        end
    elseif command == 'dyna' then
        if DynaMode then
            DynaMode = false
            enable('neck')
            add_to_chat(8,'----- Dynamis Mode Disabled -----')
        else
            DynaMode = true
			equip({back="War. Beads +2"})
            disable('neck')
            add_to_chat(8,'----- Dynamis Mode Enabled, Neck Locked -----')
        end
    elseif command == 'reset' then
		AccIndex = 1
		HybridIndex = 1
		IdleIndex = 1
		WeaponIndex = 1
		DWMode = false
		HybridMode = false
		SwordSwap = false
		CPMode = false
		DynaMode = false
		FighterMode = false
        add_to_chat(8,'----- All Sets/Modes Reset -----')
    elseif command == 'update' then
		aftercast()
	end
    updatedisplay()
	aftercast()
end