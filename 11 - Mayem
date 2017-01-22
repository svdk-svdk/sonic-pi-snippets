### mayem
use_bpm 50
live_loop :jungle do
  with_fx :reverb, mix: 0.5 do
    with_fx :band_eq, db: 10, freq: 50 do
      with_fx :compressor, pre_amp: 120 do
        with_fx :distortion, distort: 0.5 do
          use_random_seed 113
          sample :loop_move, beat_stretch: 8, rate: [2, -2, 1, 3].choose / 2, finish: 0.75, amp: 2
          sample :loop_dark, beat_stretch: 8
          sleep 8
        end
      end
    end
  end
end
live_loop :jungle2 do
  stop
  with_fx :reverb, mix: 0.5 do
    with_fx :band_eq, db: 10, freq: 80 do
      with_fx :compressor, pre_amp: 120 do
        with_fx :distortion, distort: 0.1 do
          use_random_seed 113
          sample :loop_move, beat_stretch: 16, rate: [2, -2, 1, 3].choose / 2, finish: 0.75, amp: 2
          sample :loop_dark, beat_stretch: 16
          sleep 16
        end
      end
    end
  end
end
