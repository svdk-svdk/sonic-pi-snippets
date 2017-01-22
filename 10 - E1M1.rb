use_debug false

live_loop :e1m1 do
  with_fx :hpf, cutoff: 60, mix: 0.1 do
    with_fx :reverb do
      with_fx :compressor, pre_amp: 120, mix: 1 do
        #stop
        tick_reset if look == 15
        tick_reset(:four) if look(:four) >= 30
        tick
        tick(:four)
        basepattern = (ring 1, 1, 0).look
        synth  :sine, note: [:c0, :e0].take(2), amp: basepattern, release: 0.1 unless look >12
        synth  :tri, note: [:c1, :e1].take(2), amp: basepattern, release: 0.03 unless look >12
        sample :drum_heavy_kick, amp: 0.5, rpitch: -24 if look == 14
        sample :sn_zome, rate: [-1, 0.5, -0.5, 1].choose, amp: 0.025, lpf: 70 if look(:four) == 15
        sleep 0.15
      end
    end
  end
end
