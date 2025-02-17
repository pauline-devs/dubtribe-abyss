# Siamois Ventriloques:  Suck Up Evil Riddim
# Au rythme de la flute, ils commencent à se détacher pour aller attacher les débiles.

# cf. Wicked Sitar pour la suite w Bednock..

use_debug false
use_bpm 80

define :pattern do |pattern|
  return pattern.ring.tick == "x"
end

live_loop :ghost do
  sleep 1
end

live_loop :hiss_loop do
  # Raspberry Pi, Mac, Linux
  #with_fx :krush do (end track)
  sample "/Users/paulinerondeau/Desktop/fl studio/packs/Cymatics - Cobra Hip Hop Sample Pack/Melodics/Melody Loops/Cymatics - Cobra Melody Loop 24 - 160 BPM E Min.wav", amp: 2
  #end
  sample :vinyl_hiss, amp: 2.5
  # Raspberry Pi, Mac, Linux
  sample "/Users/paulinerondeau/Desktop/fl studio/packs/Aaliyah Sounds/voice beat box.wav", amp: 2
  sleep 16
end

#in_thread do
#loop do
live_loop :kick, sync: :hiss_loop do
  #cue :kick
  a = 1.5
  if one_in(2)
    sample :bd_tek , amp: a if pattern "x-----x-x-------"
  else
    sample :bd_tek , amp: a if pattern "xx----x-x---x-x-"
  end
  with_fx :ixi_techno do
    sample :glitch_bass_g, amp: a, attack: 3, decay: 5, release: 5, cutoff: 110
  end
  sleep 0.25
end

live_loop :kick_ghe, sync: :hiss_loop do
  #cue :kick
  a = 1.5
  if one_in(2)
    sample :tabla_ghe4 , amp: a if pattern "x-----x-x-------"
  else
    sample :bd_tek , amp: a if pattern "xx----x-x---x-x-"
  end
  with_fx :ixi_techno do
    sample :glitch_bass_g, amp: a, attack: 3, decay: 5, release: 5, cutoff: 110
  end
  sleep 0.25
end



in_thread do
  loop do
    cue :tabla
    sync :kick
    a = 1
    with_fx :bitcrusher, mix: 0.2 do
      sample :tabla_ghe8, rate: 2.2, start: 0.02, pan: 0.2, amp: a if pattern "-x----x-x-------"
    end
    with_fx :bitcrusher, mix: 0.2 do
      sample :drum_cymbal_pedal, rate: 2.2, start: 0.02, pan: 0.2, amp: 2.5 if pattern "x------x--x-----"
    end
  end
end


live_loop :hhat, sync: :hiss_loop do
  a = 0.85
  sleep 0.25
  sample :hat_bdu , amp: a
  sleep 0.25
  sample :hat_bdu , amp: a
  sleep 0.5
  sample :hat_bdu , amp: a
  sleep 0.25
  sample :hat_bdu , amp: a
  sleep 0.125
  sample :hat_bdu , amp: a
  sleep  0.125
  sample :hat_bdu , amp: a
  sleep 0.5
end