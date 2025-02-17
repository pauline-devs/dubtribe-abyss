# Rumba Guaguanco Matanzas

# Dub des Abysses

use_bpm 85
#use_bpm 90

cmaster1 = 130

#base architecture
define :pattern do |pattern|
  return pattern.ring.tick == "x"
end

live_loop :ghost do
  sleep 1
end

# Clave
# piocher dans notre banque de son séléctionnés

live_loop :clave, sync: :ghost do
  ##| stop
  a = 2
  
  # yes <3 the krush fx
  with_fx :krush do
    sample :elec_twip, decay: 0.3, amp: a, cutoff: cmaster1 if pattern "x--x---x--x-x---"
  end
  sleep 0.25
end

live_loop :kataI, sync: :clave do
  ##| stop
  a = 5
  with_fx :ixi_techno do #yess
    sample :tabla_dhec, decay: 0.3, amp: a, pan: -1, cutoff: cmaster1 if pattern "-x--x----x---x--"
  end
  sleep 0.25
end

live_loop :kataII, sync: :clave do
  ##| stop
  a = 2
  with_fx :bitcrusher, mix: 0.3 do
    sample :tabla_dhec, decay: 0.3, amp: a, pan: 1,cutoff: cmaster1 if pattern "xx-xx-x-xx-x-xx-"
    #end
    sleep 0.25
  end
end

# bass conga
live_loop :kataIII, sync: :clave do
  ##| stop
  a = 0.5
  with_fx :ixi_techno do
    sample :tabla_ghe1, decay: 0.3, amp: a, pan: -1, cutoff: cmaster1 if pattern "-x--x----x---x--"
  end
  sleep 0.25
end


live_loop :low_bass, sync: :ghost do
  ##| stop
  a = 2
  sample :bass_hit_c , decay: 0.3, amp: a, cutoff: cmaster1 if pattern "xx--x---"
  sleep 0.25
end

live_loop :low_bassII, sync: :low_bass do
  ##| stop
  a = 2
  sample :bd_klub , decay: 0.3, amp: a, cutoff: cmaster1 if pattern "xx--x---"
  sleep 0.25
end

live_loop :low_slap, sync: :ghost do
  ##| stop
  a = 2
  with_fx :slicer do
    #with_fx :krush do
    sample :hat_metal, decay: 0.3, amp: a, pan: -1, cutoff: cmaster1 if pattern "--x-----"
  end
  sleep 0.25
end

live_loop :low_slapII, sync: :low_slap do
  ##| stop
  a = 2
  sample :hat_raw , decay: 0.3, amp: a, pan: 1,cutoff: cmaster1 if pattern "--x-----"
  sleep 0.25
end

live_loop :low_tonic, sync: :ghost do
  ##| stop
  a = 2
  sample :tabla_ghe4, decay: 0.3, amp: a, pan: 1, cutoff: cmaster1 if pattern "------x-"
  sleep 0.25
end

#mid conga
live_loop :mid_conga, sync: :ghost do
  ##| stop
  a = 2
  sample :tabla_ghe4 , decay: 0.3, amp: a, cutoff: cmaster1 if pattern "x-x-x-x-"
  sleep 0.25
end

live_loop :mid_congaII, sync: :mid_conga do
  ##| stop
  a = 2
  if one_in(4)
    with_fx :echo do
      sample :elec_beep, amp: a, attack: 1.3, pan: -1, cutoff: cmaster1 if pattern "-------------x"
    end
  else
    sample :elec_beep, amp: a, cutoff: cmaster1 if pattern "------------xx"
  end
  sleep 0.25
end

# option maracas
live_loop :maracas, sync: :ghost do
  ##| stop
  a = 1
  sample :glitch_perc5 , decay: 0.3, amp: a, cutoff: cmaster1 if pattern "x---------------"
  sleep 0.25
end


live_loop :maracasII, sync: :ghost do
  ##| stop
  a = 1
  sample :glitch_perc3  , decay: 0.3, amp: a, cutoff: cmaster1 if pattern "---------x------"
  sleep 0.25
end