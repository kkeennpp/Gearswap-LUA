function get_sets()

    send_command('input /macro book 1;wait .1;input /macro set 6') -- Change Default Macro Book Here --
	send_command('wait 5;input /lockstyleset 2')
	
	---------------
	-- Idle Sets --
	---------------

	sets = {}

	sets.Idle = {
		main="Kali",sub="Genbu's Shield",range="Gjallarhorn",
        head="Nyame Helm",body="Nyame Mail",hands="Nyame Gauntlets",legs="Nyame Flanchard",feet="Nyame Sollerets",
		ear1="Odnowa Earring +1",ear2="Gifted Earring",ring1="Inyanga Ring",ring2="Dark Ring",
		neck="Loricate Torque +1",waist="Fucho-no-obi",back="Solemnity Cape"
	}

	sets.Idle.mage = set_combine(sets.Idle,{
		head="Inyanga Tiara +2",body="Inyanga Jubbah +2",hands="Inyanga Dastanas +2",legs="Inyanga Shalwar +2",feet="Fili Cothurnes +1",
	})

	sets.Idle.resting = set_combine(sets.Idle,{
		main="Chatoyant Staff"
	})

	sets.Idle.MVMT = {feet="Fili Cothurnes +1"}

	-------------
	-- TP Sets --
	-------------

	sets.melee = set_combine(sets.Idle,{
	})

	-------------
	-- Precast --
	-------------
     
	sets.precast = {
		main="Kali",sub="Genbu's Shield",range="Gjallarhorn",
		head="Nahtirah Hat",body="Inyanga Jubbah +2",hands="Gendewitha Gages +1",legs="Ayanmo Cosciales +2",feet="Kaykaus Boots",
		ear1="Enchanter Earring +1",ear2="Loquacious Earring",ring1="Kishar Ring",ring2="Weatherspoon Ring",
		neck="Voltsurge Torque",waist="Embla Sash",back="Swith Cape"
	}
	
	sets.precast.songs = set_combine(sets.precast,{
		range="Marsyas",
		head="Fili Calot",legs="Gendewitha Spats",feet="Bihu Slippers +1"
	})

	sets.precast.enhancing = set_combine(sets.precast,{
	})

	sets.precast.stoneskin = set_combine(sets.precast.enhancing,{
	})

	sets.precast.cure = set_combine(sets.precast,{
        back="Pahtli Cape"
	})

	------------------------
	-- Ability Precasting --
	------------------------

	sets.JA = {}
	sets.JA['Nightingale'] = {feet="Bihu Slippers +1"}
	sets.JA['Troubadour'] = {body="Bihu Justaucorps"}
	sets.JA['Soul Voice'] = {legs="Bihu Cannions"}

	-------------
	-- Midcast --
	-------------

	sets.midcast = {}

	sets.midcast.songs = {
		main="Kali",sub="Genbu's Shield",range="Gjallarhorn",
		head="Fili Calot",body="Fili Hongreline +1",hands="Fili Manchettes",legs="Inyanga shalwar +2",feet="Brioso Slippers +3",
		neck="Moonbow Whistle +1",back={name="Intarabus's Cape",augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Damage taken-5%',}}
	}

	sets.midcast.songs.ballad = set_combine(sets.midcast.songs,{legs="Fili Rhingrave"})
	sets.midcast.songs.scherzo = set_combine(sets.midcast.songs,{feet="Fili Cothurnes"})
	sets.midcast.songs.paeon = set_combine(sets.midcast.songs,{head="Brioso Roundlet +1"})
	sets.midcast.songs.honor = set_combine(sets.midcast.songs,{range="Marsyas"})
	
	sets.midcast.songs.macc = set_combine(sets.midcast.songs,{
		main="Kali",sub="Genbu's Shield",range="Gjallarhorn",
		head="Inyanga Tiara +2",body="Inyanga Jubbah +2",hands="Inyanga Dastanas +2",legs="Inyanga shalwar +2",feet="Inyanga Crackows +2",
		ear1="Enchanter Earring +1",ear2="Gwati Earring",ring1="Stikini Ring +1",ring2="Stikini Ring +1",
		waist="Luminary Sash"
	})
	
	--sets.midcast.songs.lullaby = set_combine(sets.midcast.songs.macc,{hands="Brioso Cuffs +1"})
	sets.midcast.songs.lullaby = set_combine(sets.midcast.songs.macc,{})

	sets.midcast.cure = {
		main="Kali",sub="Genbu's Shield",range="Gjallarhorn",
		head="Gendewitha Caubeen +1",body="Gendewitha Bliaut +1",hands="Inyanga Dastanas +2",legs="Lengo Pants",feet="Kaykaus Boots",
		ear1="Beatific Earring",ear2="Gifted Earring",ring1="Sirona's Ring",ring2="Ephedra Ring",
		neck="Colossus's Torque",waist="Sailfi Belt +1",back="Tempered Cape +1"
	}

	sets.midcast.enhancing = {
		head="Telchine Cap",body="Telchine Chasuble",hands="Telchine Gloves",legs="Telchine Braconi",feet="Kaykaus Boots",
		neck="Colossus's Torque",waist="Embla Sash"
	}

	sets.midcast.stoneskin = set_combine(sets.midcast.enhancing,{
	})

	----------------------
	-- WeaponSkill Sets --
	----------------------
	
	sets.ws = {
	}

	sets.ws["Mordant Rime"] = set_combine(sets.ws,{
	})

	---------------
	-- Aftercast --
	---------------

	sets.aftercast = {}
end

--------------------------------------------------------------------------------------------------------------
-- HUD STUFF
--------------------------------------------------------------------------------------------------------------

MeleeMode = false
cidleset = 'Load Temp'
terp = false
CPMode = false
DynaMode = false

IdleIndex = 1
IdleArray = {'DT','Refresh'}

Colors = {
    ["Fire"] = "\\cs(255,0,0)",
    ["Water"] = "\\cs(0,128,255)",
    ["Air"] = "\\cs(0,255,0)",
    --["Light"] = "\\cs(255, 255, 255)",
    ["Earth"] = "\\cs(255,150,0)",
    --["Ice"] = "\\cs(0, 204, 204)",
    --["Thunder"] = "\\cs(102, 0, 204)"
    --['Dark']="\\cs(92, 92, 92)"
}

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
    local str = 'IdleMode: \\cs(150,150,255)'..IdleArray[IdleIndex]..'\\cr'
    str = str..'\n   CurrentSet: \\cs(150,150,255)'..tostring(cidleset)..'\\cr'
    str = str..'\nMultiSong: \\cs(150,150,255)'..tostring(terp)..'\\cr'
    str = str..'\nMeleeMode: \\cs(150,150,255)'..tostring(MeleeMode)..'\\cr'
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
 
function precast(spell,action)
    if (spell.type:endswith('Magic') or spell.type == 'Ninjutsu' or spell.type == 'BardSong') and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
            cancel_spell()
            send_command('input /item "Echo Drops" <me>')
	elseif spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.name == 'Stoneskin' then
            windower.ffxi.cancel_buff(37)--[[Cancels stoneskin, not delayed incase you get a Quick Cast]]
            equip(sets.precast.stoneskin)
        elseif spell.name:match('Cure') or spell.name:match('Cura') then
            equip(sets.precast.cure)
        elseif spell.skill == 'Enhancing Magic' then
            equip(sets.precast.enhancing)
            if spell.name == 'Sneak' then
                windower.ffxi.cancel_buff(71)--[[Cancels Sneak]]
            end
        else
            equip(sets.precast)
        end
    elseif spell.type == 'BardSong' then
        equip(sets.precast.songs)
    elseif spell.type == 'WeaponSkill' then
		equipSet = sets.ws
        if equipSet[spell.english] then
            equipSet = equipSet[spell.english]
			add_to_chat(122,spell.english .. ' Set')
        end
        equip(equipSet)
	elseif sets.JA[spell.english] then
		equipSet = sets.JA[spell.english]
		add_to_chat(122,spell.english .. ' Set')
		equip(equipSet)
	else
        equip(sets.precast)
    end
end
 
function midcast(spell,action)
    if spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' then
        if spell.name == 'Stoneskin' then
            equip(sets.midcast.stoneskin)
        elseif spell.name:match('Cure') or spell.name:match('Cura') then
            equip(sets.midcast.cure)
        elseif spell.skill == 'Enhancing Magic' then
            equip(sets.midcast.enhancing)
            if spell.name:match('Protect') or spell.name:match('Shell') then
                equip({rring="Sheltered Ring"})
            end
        else
            equip(sets.midcast.haste)
        end
    elseif spell.type == 'BardSong' then
        if spell.name:contains('Ballad') then
            equip(sets.midcast.songs.ballad)
			add_to_chat(122,spell.english .. ' Set')
        elseif spell.name:contains('Honor') then
            equip(sets.midcast.songs.honor)
			add_to_chat(122,spell.english .. ' Set')
        elseif spell.name:contains('Scherzo') then
            equip(sets.midcast.songs.scherzo)
			add_to_chat(122,spell.english .. ' Set')
        elseif spell.name:contains('Paeon') then
            equip(sets.midcast.songs.paeon)
			add_to_chat(122,spell.english .. ' Set')
        elseif spell.name:contains('Lullaby') then
            equip(sets.midcast.songs.lullaby)
			add_to_chat(122,spell.english .. ' Set')
        elseif spell.name:contains('Requiem') then
            equip(sets.midcast.songs.macc)
			add_to_chat(122,'Requiem Magic Acc Set')
        elseif spell.name:contains('Nocturne') then
            equip(sets.midcast.songs.macc)
			add_to_chat(122,'Nocturne Magic Acc Set')
        elseif spell.name:contains('Elegy') then
            equip(sets.midcast.songs.macc)
			add_to_chat(122,'Elegy Magic Acc Set')
        elseif spell.name:contains('Threnody') then
            equip(sets.midcast.songs.macc)
			add_to_chat(122,'Threnody Magic Acc Set')
        elseif spell.name:contains('Finale') then
            equip(sets.midcast.songs.macc)
			add_to_chat(122,'Finale Magic Acc Set')
        else
            equip(sets.midcast.songs)
		end
    end
end

function aftercast(spell,action)
    if midaction() then
        return
    end
	
	if player.status == 'Engaged' then
        equip(sets.melee)
		cidleset = 'Melee Set'
    else
		if IdleArray[IdleIndex] == 'DT' then
			equip(sets.Idle)
			cidleset = 'DT Idle Set'
		elseif IdleArray[IdleIndex] == 'Refresh' then
			equip(sets.Idle.mage)
			cidleset = 'Refresh Idle Set'
        end
    end
	updatedisplay()
end
 
function status_change(new,old)
    if new == 'Resting' then
        equip(sets.Idle.resting)
    else
        aftercast(spell)
    end
end

function self_command(command)
    if command == 'terp' then
        if terp then
            terp = false
            enable('ranged','ammo')
            windower.add_to_chat(8,'----- 3 Song Mode Disabled -----')
        else
            terp = true
			equip({ranged="Terpander"})
            disable('ranged','ammo')
            windower.add_to_chat(8,'----- 3 Song Mode Enabled -----')
        end
    elseif command == 'melee' then
        if MeleeMode then
            MeleeMode = false
            enable('main','sub')
            windower.add_to_chat(8,'----- Weapons Unlocked, WILL lose TP -----')
        else
            MeleeMode = true
            disable('main','sub')
            windower.add_to_chat(8,'----- Weapons Locked, WILL NOT lose TP -----')
        end
	elseif command == 'idle' then
		IdleIndex = (IdleIndex % #IdleArray) + 1
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
    elseif command == 'dummy' then
        terp = true
		equip({ranged="Terpander"})
        disable('ranged','ammo')
        windower.add_to_chat(8,'----- 3 Song Mode Enabled -----')
        send_command('input /so "Army\'s Paeon" <me>; wait 7; input /so "Army\'s Paeon II" <me>; wait 7; input /so "Army\'s Paeon III" <me>')
    elseif command == 'dummycc' then
        terp = true
		equip({ranged="Terpander"})
        disable('ranged','ammo')
        windower.add_to_chat(8,'----- 3 Song Mode Enabled -----')
        send_command('input /so "Army\'s Paeon" <me>; wait 7; input /so "Army\'s Paeon II" <me>; wait 7; input /so "Army\'s Paeon III" <me>; wait 7; input /ja "Clarion Call" <me>; wait 1.5; input /so "Army\'s Paeon IV" <me>')
    elseif command == 'songs' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 3 Song Mode Disabled -----')
        send_command('input /so "Valor Minuet V" <me>; wait 7; input /so "Victory March" <me>; wait 7; input /so "Honor March" <me>')
    elseif command == 'songs2' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 4 Song Mode Disabled -----')
        send_command('input /so "Blade Madrigal" <me>; wait 7; input /so "Victory March" <me>; wait 7; input /so "Honor March" <me>')
    elseif command == 'songs4' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 3 Song Mode Disabled -----')
        send_command('input /so "Mage\'s Ballad III" <me>; wait 7; input /so "Victory March" <me>; wait 7; input /so "Honor March" <me>')
    elseif command == 'songscc' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 3 Song Mode Disabled -----')
        send_command('input /so "Valor Minuet V" <me>;  wait 7; input /so "Blade Madrigal" <me>; wait 7; input /so "Victory March" <me>; wait 7; input /so "Honor March" <me>')
        --send_command('input /so "Valor Minuet V" <me>;  wait 7; input /so "Valor Minuet IV" <me>; wait 7; input /so "Victory March" <me>; wait 7; input /so "Honor March" <me>')
    elseif command == 'ntsongs' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 3 Song Mode Disabled -----')
        send_command('input /ja "Nightingale" <me>; wait 1.5; input /ja "Troubadour" <me>; wait 1.5; input /so "Valor Minuet V" <me>; wait 5; input /so "Victory March" <me>; wait 5; input /ja "Marcato" <me>; wait 5; input /so "Honor March" <me>')
    elseif command == 'ntsongs2' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 3 Song Mode Disabled -----')
        send_command('input /ja "Nightingale" <me>; wait 1.5; input /ja "Troubadour" <me>; wait 1.5; input /so "Blade Madrigal" <me>; wait 5; input /so "Victory March" <me>; wait 5; input /ja "Marcato" <me>; wait 5; input /so "Honor March" <me>')
    elseif command == 'ntsongs4' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 3 Song Mode Disabled -----')
        send_command('input /ja "Nightingale" <me>; wait 1.5; input /ja "Troubadour" <me>; wait 1.5; input /so "Mage\'s Ballad III" <me>; wait 5; input /so "Victory March" <me>; wait 5; input /ja "Marcato" <me>; wait 5; input /so "Honor March" <me>')
    elseif command == 'ntsongscc' then
        terp = false
        enable('ranged','ammo')
        windower.add_to_chat(8,'----- 3 Song Mode Disabled -----')
        send_command('input /ja "Nightingale" <me>; wait 1.5; input /ja "Troubadour" <me>; wait 1.5; input /so "Valor Minuet V" <me>; wait 5; input /so "Blade Madrigal" <me>; wait 5; input /so "Victory March" <me>; wait 5; input /ja "Marcato" <me>; wait 1.5; input /so "Honor March" <me>')
        --send_command('input /ja "Nightingale" <me>; wait 1.5; input /ja "Troubadour" <me>; wait 1.5; input /so "Valor Minuet V" <me>; wait 5; input /so "Valor Minuet IV" <me>; wait 5; input /so "Victory March" <me>; wait 5; input /ja "Marcato" <me>; wait 1.5; input /so "Honor March" <me>')
        --send_command('input /ja "Nightingale" <me>; wait 1.5; input /ja "Troubadour" <me>; wait 1.5; input /so "Mage\'s Ballad II" <me>; wait 5; input /so "Mage\'s Ballad III" <me>; wait 5; input /so "Victory March" <me>; wait 5; input /ja "Marcato" <me>; wait 1.5; input /so "Victory March" <me>')
    elseif command == 'update' then
		aftercast()
    end
	updatedisplay()
end