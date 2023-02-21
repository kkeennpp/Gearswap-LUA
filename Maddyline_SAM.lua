function get_sets()
	send_command('input /macro book 1;wait .1;input /macro set 10') -- Change Default Macro Book Here
	send_command('wait 5;input /lockstyleset 6')

	------------------------
	-- Ability Precasting --
	------------------------
	
	sets.JA = {}
	sets.JA['Meditate'] = {head="Wakido Kabuto +2",hands="Sakonji Kote +1",back="Smertrios's Mantle"}
	sets.JA['Shikikoyo'] = {legs="Sakonji haidate +1"}

	sets.Idle = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Odnowa earring +1",ear2="Etiolation Earring",ring1="Patricius Ring",ring2="Gelatinous Ring +1",
		neck="Warder's Charm +1",waist="Ioskeha Belt +1",back={name="Smertrios's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	sets.Idle.Regen = set_combine(sets.Idle,{
		head="Wakido Kabuto +2",body="Sacro Breastplate",
		ring1="Sheltered Ring",
		neck="Sanctity Necklace",
	})

	sets.Idle.MVMT = {feet="Danzo Sune-Ate"}

	-------------
	-- TP Sets --
	-------------

	sets.TP = {
		ammo="Coiste Bodhar",
		head="Flamma Zucchetto +2",body="Kasuga Domaru +2",hands="Tatenashi Gote +1",legs="Kasuga Haidate +2",feet="Tatenashi Sune-Ate +1",
		ear1="Cessance earring",ear2="Kasuga earring",ring1="Flamma Ring",ring2="Niqmaddu Ring",
		neck="Samurai's Nodowa +1",waist="Ioskeha Belt +1",back="Takaha Mantle",
	}

	sets.TP.HighACC = set_combine(sets.TP,{
	})

	sets.TP.Hybrid = set_combine(sets.TP,{
        head="Nyame Helm",hands="Wakido Kote +3",feet="Nyame Sollerets",
		back={name="Smertrios's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
	})

	sets.TP.DT = set_combine(sets.TP,{
        head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Odnowa earring +1",ear2="Etiolation Earring",ring1="Patricius Ring",ring2="Gelatinous Ring +1",
		neck="Warder's Charm +1",back={name="Smertrios's Mantle",augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
	})

	----------------------
	-- WeaponSkill Sets --
	----------------------

	sets.WS = {
		Ammo="KnobKierrie",
		head="Mpaca's cap",body="Sakonji Domaru +3",hands="Kasuga Kote +2",legs="Wakido Haidate +3",feet="Nyame Sollerets",
		ear1="Moonshade Earring",ear2="Thrud Earring",ring1="Regal Ring",ring2="Niqmaddu Ring",
		neck="Samurai's Nodowa +1",waist="Sailfi Belt +1",back={name="Smertrios's Mantle",augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
	}

	sets.WS['Tachi: Fudo'] = set_combine(sets.WS,{})
	sets.WS['Tachi: Fudo'].Max = set_combine(sets.WS,{head="Nyame Helm"})
	sets.WS['Tachi: Kasha'] = set_combine(sets.WS,{})
	sets.WS['Tachi: Kasha'].Max = set_combine(sets.WS,{head="Nyame Helm"})
	sets.WS['Tachi: Shoha'] = set_combine(sets.WS,{})
	sets.WS['Tachi: Shoha'].Max = set_combine(sets.WS,{head="Nyame Helm"})
	sets.WS['Tachi: Rana'] = set_combine(sets.WS,{})
	sets.WS['Tachi: Rana'].Max = set_combine(sets.WS,{head="Nyame Helm"})

	sets.WS['Tachi: Jinpu'] = set_combine(sets.WS,{head="Nyame Helm",hands="Nyame Gauntlets",legs="Nyame Flanchard",back={name="Smertrios's Mantle",augments={'STR+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','Weapon skill damage +10%'}}})
	sets.WS['Tachi: Jinpu'].Max = set_combine(sets.WS['Tachi: Jinpu'],{})
	sets.WS['Tachi: Kagero'] = set_combine(sets.WS['Tachi: Jinpu'],{})
	sets.WS['Tachi: Kagero'].Max = set_combine(sets.WS['Tachi: Jinpu'],{})
	sets.WS['Tachi: Koki'] = set_combine(sets.WS['Tachi: Jinpu'],{})
	sets.WS['Tachi: Koki'].Max = set_combine(sets.WS['Tachi: Jinpu'],{})

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
        pos={x=2725,y=1342},
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
			if sets.WS[spell.name].HighACC then
				equipSet = equipSet[spell.name].HighACC
				add_to_chat(122,spell.name .. ' HighACC Set')
			elseif equipSet[spell.name] then
				equipSet = equipSet[spell.name]
				add_to_chat(122,spell.name .. ' Set')
			end
		elseif buffactive['Sekkanoki'] then
			if equipSet[spell.name] then
				equipSet = set_combine(equipSet[spell.name],{hands="Kasuga Kote +2"})
				add_to_chat(122,spell.name .. ' Sekkanoki Set')
			end
		elseif player.equipment.main == 'Dojikiri Yasutsuna' then
			if buffactive['Hagakure'] then
				if equipSet[spell.name] then
					if equipSet[spell.name].Max then
						equipSet = set_combine(equipSet[spell.name].Max,{ear1="Ishvara Earring"})
						add_to_chat(122,'Doji-'..spell.name .. ' Hagakure Set')
					else
						equipSet = set_combine(equipSet[spell.name],{ear1="Ishvara Earring"})
						add_to_chat(122,'Doji-'..spell.name .. ' Hagakure Set')
					end
				else
					equipSet = set_combine(sets.WS,{head="Nyame Helm",ear1="Ishvara Earring"})
					add_to_chat(122,'Doji-'..spell.name .. ' Hagakure Set')
				end
			elseif player.tp < 1500 then
				if equipSet[spell.name] then
					equipSet = equipSet[spell.name]
					add_to_chat(122,'Doji-'..spell.name .. ' Set')
				end
			elseif player.tp > 2500 then
				if equipSet[spell.name] then
					if equipSet[spell.name].Max then
						equipSet = set_combine(equipSet[spell.name].Max,{ear1="Ishvara Earring"})
						add_to_chat(122,'Doji-'..spell.name .. ' Max Set')
					else
						equipSet = set_combine(equipSet[spell.name],{ear1="Ishvara Earring"})
						add_to_chat(122,'Doji-'..spell.name .. ' Max Set')
					end
				else
					equipSet = set_combine(sets.WS,{head="Nyame Helm",ear1="Ishvara Earring"})
					add_to_chat(122,'Doji-'..spell.name .. ' Max Set')
				end
			elseif player.tp >= 1500 then
				if equipSet[spell.name] then
					if equipSet[spell.name].Max then
					equipSet = equipSet[spell.name].Max
						add_to_chat(122,'Doji-'..spell.name .. ' High Set')
					else
						equipSet = set_combine(equipSet[spell.name],{head="Nyame Helm"})
						add_to_chat(122,'Doji-'..spell.name .. ' High Set')
					end
				else
					equipSet = set_combine(sets.WS,{head="Nyame Helm"})
					add_to_chat(122,'Doji-'..spell.name .. ' High Set')
				end
			end
		elseif buffactive['Hagakure'] then
			if equipSet[spell.name] then
				if equipSet[spell.name].Max then
					equipSet = set_combine(equipSet[spell.name].Max,{ear1="Ishvara Earring"})
					add_to_chat(122,spell.name .. ' Hagakure Set')
				else
					equipSet = set_combine(equipSet[spell.name],{ear1="Ishvara Earring"})
					add_to_chat(122,spell.name .. ' Hagakure Set')
				end
			else
				equipSet = set_combine(sets.WS,{head="Nyame Helm",ear1="Ishvara Earring"})
				add_to_chat(122,spell.name .. ' Hagakure Set')
			end
		elseif player.tp < 2000 then
			if equipSet[spell.name] then
				equipSet = equipSet[spell.name]
				add_to_chat(122,spell.name .. ' Set')
			end
		elseif player.tp > 2750 then
			if equipSet[spell.name] then
				if equipSet[spell.name].Max then
					equipSet = set_combine(equipSet[spell.name].Max,{ear1="Ishvara Earring"})
					add_to_chat(122,spell.name .. ' Max Set')
				else
					equipSet = set_combine(equipSet[spell.name],{ear1="Ishvara Earring"})
					add_to_chat(122,spell.name .. ' Max Set')
				end
			else
				equipSet = set_combine(sets.WS,{head="Nyame Helm",ear1="Ishvara Earring"})
				add_to_chat(122,spell.name .. ' Max Set')
			end
		elseif player.tp >= 2000 then
			if equipSet[spell.name] then
				if equipSet[spell.name].Max then
				equipSet = equipSet[spell.name].Max
					add_to_chat(122,spell.name .. ' High Set')
				else
					equipSet = set_combine(equipSet[spell.name],{head="Nyame Helm"})
					add_to_chat(122,spell.name .. ' High Set')
				end
			else
				equipSet = set_combine(sets.WS,{head="Nyame Helm"})
				add_to_chat(122,spell.name .. ' High Set')
			end
		end
		equip(equipSet)

		if world.time >= 17*60 or world.time < 7*60 then -- Dusk to Dawn time
			equip({ear1="Lugra Earring +1"})
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
			equipSet = equipSet['Hybrid']
			cidleset = 'Hybrid'
		elseif AccArray[AccIndex] == 'HighACC' then
			equipSet = equipSet[AccArray[AccIndex]]
			cidleset = 'High Acc'
		else
			if player.equipment.main == 'Quint Spear' then
				equipSet = sets.TP.Multi
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
	elseif command == 'pl' then
		equip({main="Shining One",sub="Utu Grip"})
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