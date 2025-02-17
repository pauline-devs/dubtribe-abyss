# code a kind of riddim video game song studying dj_dave code
# Dub Ambiant (Dave based)
## Eye Data Cloud

use_bpm 85

live_loop :ghost do
  sleep 1
end

cmaster1 = 130
cmaster2 = 130
cmaster3 = 110

define :pattern do |pattern|
  return pattern.ring.tick == "x"
end

live_loop :kick, sync: :ghost do
  ##| stop
  a = 2.15
  b = 15
  #with_fx :reverb do
  sample :bd_tek, amp: a, cutoff: cmaster1 if pattern "x--x----x--x----"
  #end
  with_fx :bitcrusher do
    sample :bass_voxy_hit_c, amp: b, attack: 3, decay: 5, release: 5
  end
  sleep 0.25
end

live_loop :kick_tabla, sync: :ghost do
  ##| stop
  a = 1.75
  with_fx :reverb, mix: 0.2, room: 0.5 do
    sample :tabla_ghe4, amp: a, cutoff: cmaster1 if pattern "x--x----x--x----"
  end
  sleep 0.25
end

live_loop :kick_caballo, sync: :ghost do
  ##| stop
  a = 1.75
  with_fx :reverb, mix: 0.2, room: 0.5 do
    sample :bd_klub, amp: a, pann: -1, cutoff: cmaster1 if pattern "x-x---x-"
  end
  sleep 0.25
end

live_loop :slap_caballo, sync: :kick_caballo do
  ##| stop
  a = 2.25
  with_fx :krush, mix: 0.2, room: 0.5 do
    sample :hat_hier, amp: a, pan: 1, cutoff: cmaster1 if pattern "---x--x-x---xx--"
  end
  sleep 0.25
end

live_loop :takataka, sync: :ghost do
  ##| stop
  a = 1.5
  b = 0.75
  #:elec_hi_snare
  #:elec_lo_snare
  #:elec_blip
  #:elec_blip2
  if one_in(2)
    with_fx :echo, mix: 0.2, room: 0.5 do
      sample :elec_triangle, amp: a, pan: -1, cutoff: cmaster1 if pattern "xx--xx--"
    end
  else
    with_fx :echo, mix: 0.2, room: 0.5 do
      sample :elec_tick, amp: 2.25, pan: 1, cutoff: cmaster1 if pattern "-xx--x---------"
    end
  end
  sleep 0.25
end

#live_loop :takatakitikatou, sync: :takataka do
##| stop
#a = 1.25
#:perc_swoosh
#:tabla_ghe3
#:perc_impact1
#with_fx :echo, mix: 0.2, room: 0.5 do
#with_fx :ixi_techno, mix: 0.8 do
#sample :perc_impact1, amp: a, cutoff: cmaster1 if pattern "xx-x-xx-x--x--x-"
#end
#end
#sleep 0.25
#end

live_loop :takatakitikatou_2, sync: :takatakitikatou do
  ##| stop
  a = 1.5
  with_fx :echo, mix: 0.2, room: 0.5 do
    sample :tabla_ghe3, amp: a, pan: 1, cutoff: cmaster1 if pattern "-x-x----x--x--x-"
  end
  sleep 0.25
end

with_fx :echo, mix: 0.2 do
  with_fx :reverb, mix: 0.2, room: 0.5 do
    live_loop :clap, sync: :ghost do
      a = 0.75
      sleep 1
      sample :sn_dub , rate: 2.5, cutoff: cmaster1, amp: a
      sample :sn_dub , rate: 2.2, start: 0.02, cutoff: cmaster1, pan: 0.2, amp: a
      sample :hat_sci, rate: 2, start: 0.04, cutoff: cmaster1, pan: -0.2, amp: a
      sleep 1
    end
  end
end

with_fx :reverb, mix: 0.2 do
  with_fx :panslicer, mix: 0.2 do
    live_loop :hhc1, sync: :ghost do
      a = 0.75
      p = [-0.3, 0.3].choose
      sample :hat_raw , amp: a, rate: 2.5, finish: 0.5, pan: p, cutoff: cmaster2 if pattern "x-xx----x--x----"
      sleep 0.125
    end
  end
end

live_loop :hhat, sync: :ghost do
  a = 4.24
  sleep 0.5
  sample :hat_hier, amp: a, rate: 2.5, finish: 0.5, pan: p, cutoff: cmaster2 if pattern "x-x-x-x-x-x-x-x-xxx-x-x-x-x-x-x-"
  sleep 0.5
end

# organic techy melody
with_fx :reverb, mix: 0.7 do
  live_loop :arp, sync: :ghost do
    with_fx :echo, phase: 1, mix: (line 0.1, 1, steps: 128).mirror.tick do
      with_fx :krush, phase: 1, mix: (line 0.1, 1, steps: 128).mirror.tick do
        a = 0.5
        r = 0.25
        c = 130
        p = (line -0.7, 0.7, steps: 64).mirror.tick
        at = 0.01
        sleep 0.75
      end
    end
  end
end

c = 60
define :closing_eyes_melody do |synthetizer|
  a = 0.5
  use_synth synthetizer
  play :g3, sustain: 6, cutoff: c, amp: a, attack: 1.2
  sleep 6
  play :d3, sustain: 2, cutoff: c, amp: a
  sleep 2
  play :e3, sustain: 8, cutoff: c, amp: a, attack: 0.75
end

define :closing_eyes_melody_b do |synthetizer|
  a = 1
  use_synth synthetizer
  play :g3, sustain: 6, cutoff: c, amp: a
  sleep 6
  play :b3, sustain: 2, cutoff: c, amp: a
  sleep 2
  play :e3, sustain: 8, cutoff: c, amp: a
end


with_fx :panslicer, mix: 0.4 do
  with_fx :reverb, mix: 0.75 do
    live_loop :noise_introduction, sync: :ghost do
      closing_eyes_melody :pnoise
      sleep 8
      closing_eyes_melody :bnoise
      sleep 8
      closing_eyes_melody :gnoise
      sleep 8
    end
  end
end


live_loop :master_sexII, sync: :ghost do
  a = 2
  if one_in(2)
    sample :vinyl_scratch , amp: a, cutoff: cmaster1 if pattern "------x---------"
  else
    sample :vinyl_scratch , amp: a, cutoff: cmaster1 if pattern "----------------"
  end
  sleep 0.25
end