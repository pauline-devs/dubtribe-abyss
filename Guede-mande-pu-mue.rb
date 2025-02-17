# Gaga Rhythm
# Guede Mande Pu Mue

# // taxi Bell/no-taxi

# Le troisième oeil de Maritza

# BD Maritza + troisième oeil qui se révéille
# Elle fait de l'oeil

# Lorsque l'on ferme les yeux sur l'appel de notre âme ici-bas,
# Il arrive que l'on perde vue sur notre chemin.
# On dit que les rêves connectent aux autres dimensions et que l'oeil,
# est le miroir de l'âme.
# Ce n'est que lorsque la nuit tombe que les gouvernails du corps chantent à l'aide.
# Et alors tu cauchemardes. Tu cauchemardes la nuit, et cela crève les yeux que tu commences
# à cauchemarder le jour.

# Il s'agit là du réveil d'un Tout: processus d'âme dont le premier protocol
# consiste en une pseudo-mort; qui rutilera ton âme-pièce du monde.

# Tu croyais vivre mais tu dormais. Tu crois dormir mais tu mues.
# Savais-tu que tu es omniprésent dans ton sommeil?
# Oh, quelque-chose te chatouilles.. C'est Maritza qui te fait de l'oeil,
# avec ses cils géants et soyeux. Non, ce n'est pas une mascarade :)
# Tu crois dormir mais tu es tous yeux toutes oreilles. Je te sens confus.
# Entre quatre yeux, cette psychopompe farceuse réclame que tu la suive vers cette drôle de porte magique.
# Tu passes entre les ondulations, tu te sens léger.
# Maritza te prend par la main, car tu n'es pas habitué à si peu de pesanteur.
# Tu vois. Tu vois l'inaccessible: Veles, Pinga, Anubis, Helest, des Shinigamis;
# Maritza teinte l'expérience de tout ce qu'elle sait.
# Elle est maître dans son art: l'activation du troisième oeil.
# 1, 2 et.. 3
# Tu ne vois plus rien. Je crois que tu es mort.
# Le passage t'as fait tourner de l'oeil.
# Bienvenue, dans les ailleurs

use_bpm 85
#la sex vibe

cmaster1 = 130
cmaster2 = 115
a = 2


#base architecture
define :pattern do |pattern|
  return pattern.ring.tick == "x"
end

live_loop :ghost do
  sleep 1
end

live_loop :kick_bass, sync: :ghost do
  sample :bd_tek , amp: 1.25, cutoff: cmaster1 if pattern "x-x-"
  sleep 0.25
end

live_loop :kick_bassline, sync: :ghost do
  sample :bd_klub, amp: 0.75, pan: -0.6, cutoff: cmaster1 if pattern "x-x-"
  sleep 0.25
end

live_loop :kick_bass_ghe, sync: :ghost do
  with_fx :reverb, mix: 0.6 do
    sample :tabla_ghe4, amp: a, pan: 0.6, cutoff: cmaster1 if pattern "-----------x--x-"
  end
  sleep 0.25
end

# cloche taxi
live_loop :kick_tonic, sync: :kick_bass do
  with_fx :echo, mix: 0.2, room: 0.35 do
    with_fx :bitcrusher, mix: 0.2, room: 0.35 do
      sample :elec_beep, decay: 0.3, amp: 0.25, cutoff: cmaster1 if pattern "x--x--x-----------------"
    end
  end
  sleep 0.25
end

# add dancehall vibe
live_loop :killing_dancehall, sync: :ghost do
  sample :hat_raw, decay: 0.3, amp: 3, pan: 0.3, cutoff: cmaster1 if pattern "---x--x------x--"
  sleep 0.25
end

live_loop :master_sex, sync: :ghost do
  sample :tabla_ghe8, amp: 2, pan: -0.3, cutoff: cmaster1 if pattern "-----x----------"
  sleep 0.25
end

# add sexy murdering dancehall elements
live_loop :master_sexII, sync: :ghost do
  if one_in(2)
    sample :vinyl_scratch , amp: a, pan: -0.5, cutoff: cmaster1 if pattern "------x---------"
  else
    sample :vinyl_scratch , amp: a, cutoff: cmaster1 if pattern "----------------"
  end
  sleep 0.25
end

live_loop :murdering_sex, sync: :ghost do
  sample :sn_dub, amp: 1.5, pan: 0.5, cutoff: cmaster1 if pattern "--------x--x----"
  sleep 0.25
end

live_loop :murdering_sexII, sync: :ghost do
  sample :hat_metal, amp: a,  pan: -0.5,cutoff: cmaster1 if pattern "--------------x-"
  sleep 0.25
end

# add a digital layer to murdering_sexII
live_loop :murdering_sexIII, sync: :ghost do
  if one_in(2)
    with_fx :whammy do
      sample :sn_dub, amp: a,  pan: -0.5, cutoff: cmaster1 if pattern "--------------x-"
    end
  else
    with_fx :bitcrusher do
      sample :sn_dub, amp: a,  pan: 0.5,cutoff: cmaster2 if pattern "--------------x-"
    end
    
  end
  sleep 0.25
end

# add a dub layer to murdering_sexII/III
live_loop :murdering_sex_ghe, sync: :ghost do
  sample :tabla_ghe7, amp: a, cutoff: cmaster1 if pattern "--------x--x--x-"
  sleep 0.25
end

# tumba tonique (type of technical drum)
# -- gave to it a digital "bird" singing effect
live_loop :kick_tonic_twip, sync: :ghost do
  with_fx :echo, mix: 0.2, room: 0.35 do
    with_fx :reverb, room: 0.7 do
      sample :elec_twip, decay: 0.3, amp: 1.75, cutoff: cmaster1 if pattern "x--x--x-"
    end
  end
  sleep 0.5
end

# tumba slaps (type of technical drum)
# -- gave to it a digital "snake tchip" sexy effect
live_loop :twin_slaps, sync: :ghost do
  with_fx :bitcrusher do
    sample :drum_cymbal_pedal, amp: 1.25, cutoff: cmaster1 if pattern "x--x----"
  end
  sleep 0.25
end

# add conversation to tonics
live_loop :twin_tonics, sync: :ghost do
  if one_in(2)
    with_fx :bitcrusher do
      sample :tabla_ke2, amp: 2.5,  pan: -0.7, cutoff: cmaster1 if pattern "-----xx-"
    end
  else
    with_fx :echo, mix: 0.2, room: 0.5 do
      sample :tabla_te2, amp: 2.5,  pan: 0.7,cutoff: cmaster1 if pattern "-----xx-"
    end
  end
  sleep 0.25
end

# loop kata
live_loop :kata_loop, sync: :ghost do
  sample :hat_hier, release: 0.3, amp: 3.25,  pan: 1, cutoff: cmaster1 if pattern "x-x-xxx-"
  sleep 0.25
end

live_loop :kata_loop_ghe1, sync: :kata_loop do
  sample :tabla_ghe1, amp: 1, pan: -0.6, cutoff: cmaster1 if pattern "xxx-xxx-"
  sleep 0.25
end

live_loop :kata_loop_ghe4, sync: :kata_loop_ghe1 do
  sample :tabla_ghe4 , amp: 1.75, pan: 0.6, cutoff: cmaster1 if pattern "x-x-xxx-"
  sleep 0.25
end

# add elements to slaps to give the track
# the Gaga Voodoo Trance Rhythm evil character
live_loop :mid_conga_slaps, sync: :ghost do
  sample :hat_metal, amp: 2.25, pan: -0.6, cutoff: cmaster1 if pattern "x--x----"
  sleep 0.25
end

# add a spirit aerian fx
# I am wondering if there are too much elements ?
# I'll fix this in fl.
live_loop :mid_conga_slaps, sync: :ghost do
  ##| stop
  if one_in(8)
    with_fx :echo do
      with_fx :slicer do
        sample :perc_swash, amp: 1.25, pan: -1, cutoff: cmaster1 if pattern "x--x----"
      end
    end
  else
    sample :perc_swash, amp: 0.95, pan: 1, cutoff: cmaster1 if pattern "x--x----"
  end
  sleep 0.25
end

# an other digital bird conversation
live_loop :mid_conga_tonic, sync: :ghost do
  sample :elec_twip, amp: 1.85, cutoff: cmaster1 if pattern "----x-x-"
  sleep 0.25
end

# Here we have a digital Gaga Trance Haitian Voodoo Rhythm
# Ancestral/Historical/Traditional x Technology
# GHOST IN THE DECKSHELL #1
# By DrummyKutz :)