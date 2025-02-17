# Bomba Xica
# Techniques Paiennes

# エレグア - Bomba Xica // Bomba Xica talk
# エレグア - Lumbanche // talk/no-talk

#use_bpm 85
use_bpm 90

cmaster1 = 130

#base architecture
define :pattern do |pattern|
  return pattern.ring.tick == "x"
end

live_loop :ghost do
  sleep 1
end


define :melody_noise do |synthetizer|
  a = 0.2
  c = 60
  use_synth synthetizer
  play :g3, sustain: 6, cutoff: c, amp: a, attack: 1.2
  sleep 6
  play :d3, sustain: 2, cutoff: c, amp: a
  sleep 2
  play :e3, sustain: 8, cutoff: c, amp: a, attack: 0.75
end

with_fx :panslicer, mix: 0.4 do
  with_fx :reverb, mix: 0.75 do
    live_loop :noise, sync: :ghost do
      melody_noise :pnoise
      sleep 8
      melody_noise :bnoise
      sleep 8
      melody_noise :gnoise
      sleep 8
    end
  end
end

with_fx :panslicer, mix: 0.4 do
  with_fx :echo, mix: 0.7 do
    with_fx :reverb, mix: 0.7 do
      live_loop :bassline, sync: :ghost do
        sample :elec_chime, decay: 2, attack: 1.3, sustain: 2, release: 2, amp: 0.5, pan: 1, cutoff: cmaster1 if pattern "x-----------------------"
        sleep 0.25
      end
    end
  end
end

with_fx :bitcrusher, mix: 0.4 do
  with_fx :reverb, mix: 0.7 do
    live_loop :bassline2, sync: :ghost do
      sample :elec_triangle, attack: 0.3, amp: 2, pan: -1, cutoff: cmaster1 if pattern "-----------x------------"
      sleep 0.25
    end
  end
end

with_fx :ixi_techno, mix: 0.4 do
  live_loop :bassline3, sync: :ghost do
    sample :glitch_bass_g, decay: 2, attack: 1.7, sustain: 2, release: 2, amp: 2.25, cutoff: cmaster1 if pattern "---------------x--------"
    sleep 0.25
  end
end


# base conga
live_loop :bass, sync: :ghost do
  ##| stop
  a = 3
  sample :tabla_ghe4, decay: 0.3, amp: a, cutoff: cmaster1 if pattern "x--x--"
  sleep 0.25
end

live_loop :tonique, sync: :ghost do
  ##| stop
  a = 2
  #with_fx :ixi_techno do
  sample :tabla_na, decay: 0.3, amp: a, cutoff: cmaster1 if pattern "----xx"
  #end
  sleep 0.25
end

live_loop :bass_short, sync: :ghost do
  ##| stop
  a = 1
  #:tabla_ghe1
  #:bd_sone
  sample :bd_sone, decay: 0.3, amp: a, cutoff: cmaster1 if pattern "-xx---"
  sleep 0.25
end

live_loop :double_tonic, sync: :ghost do
  ##| stop
  a = 2
  sample :tabla_tas3, decay: 0.3, amp: a, pan: -1, cutoff: cmaster1 if pattern "---x--"
  sleep 0.25
end

# add effect (plus loin dans la track)
live_loop :fx, sync: :ghost do
  ##| stop
  a = 2
  with_fx :ixi_techno do
    sample :elec_beep, decay: 0.3, amp: a, pan: 1, cutoff: cmaster1 if pattern "x-----"
  end
  sleep 0.25
end

live_loop :bass_to_4, sync: :ghost do
  a = 2
  sample :bd_klub, amp: a, cutoff: cmaster1 if pattern "x--x--"
  sleep 0.25
end


live_loop :talker, sync: :ghost do
  a = 1.5
  if one_in(2)
    with_fx :ixi_techno do
      sample :tabla_dhec, decay: 0.3, amp: a, pan: -1, cutoff: cmaster1 if pattern "---x-x"
    end
  else
    with_fx :echo, mix: 0.2, room: 0.5 do
      with_fx :bitcrusher do
        sample :elec_twip, decay: 0.3, amp: a, pan: 1, cutoff: cmaster1 if pattern "---xxx"
      end
    end
  end
  sleep 0.25
end

live_loop :talker_hat, sync: :talker do
  a = 1.5
  if one_in(2)
    sample :hat_hier, decay: 0.3, amp: a, pan: -1, cutoff: cmaster1 if pattern "---x-x"
  else
    with_fx :echo, mix: 0.2, room: 0.5 do
      sample :hat_hier, decay: 0.3, amp: a, cutoff: cmaster1 if pattern "---xxx"
    end
  end
  sleep 0.25
end

live_loop :mosca, sync: :ghost do
  a = 4
  with_fx :ixi_techno do
    sample :tabla_dhec, decay: 0.3, amp: a, pan: 1,cutoff: cmaster1 if pattern "--x-"
  end
  sleep 0.25
end