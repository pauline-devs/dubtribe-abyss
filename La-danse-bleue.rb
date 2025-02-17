# La Danse Bleue
# BATA DRUMS

# Elegguáエレグア - Lumbanche // sub bass
# Elegguáエレグア - Lumbanche // sub bass/no-bass

use_bpm 95
#use_bpm 125

cmaster1 = 130

#base architecture
define :pattern do |pattern|
  return pattern.ring.tick == "x"
end

live_loop :ghost do
  sleep 1
end

# okonkolo
live_loop :okonkolo_tonique, sync: :ghost do
  a = 1.5
  sample :tabla_ghe4 , amp: a, cutoff: cmaster1 if pattern "x--x--"
  sleep 0.25
end

live_loop :okonkolo_slap, sync: :ghost do
  a = 1.25
  with_fx :krush do
    sample :elec_twip , pan: -0.4, amp: a, cutoff: cmaster1 if pattern "-x--x-"
  end
  sleep 0.25
end

# itotele
live_loop :itotele_tonique, sync: :ghost do
  a = 2
  sample :hat_hier,  pan: 0.7, amp: a, cutoff: cmaster1 if pattern "-x----"
  sleep 0.25
end

live_loop :itotele_slap, sync: :ghost do
  a = 2.5
  with_fx :bitcrusher do
    with_fx :ixi_techno do
      sample :tabla_dhec, pan: 0.8, decay: 0.3, amp: a, cutoff: cmaster1 if pattern "-x-x-x"
    end
  end
  sleep 0.25
end

live_loop :itotele_bass, sync: :ghost do
  a = 2
  sample :bd_klub, amp: a, cutoff: cmaster1 if pattern "-x-x-x"
  sleep 0.25
end

# first show without Iya
# then including Iya

# Iya
live_loop :Iya_bass, sync: :ghost do
  a = 1.75
  sample :tabla_ghe4, pan: -0.5, amp: a, cutoff: cmaster1 if pattern "xx---x------"
  sleep 0.25
end

live_loop :Iya_bassslap, sync: :ghost do
  a = 2.5
  with_fx :bitcrusher do
    with_fx :ixi_techno do
      sample :glitch_perc5, decay: 0.3, amp: a, cutoff: cmaster1 if pattern "x-x---------"
    end
  end
  sleep 0.25
end