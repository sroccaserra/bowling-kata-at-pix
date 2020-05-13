def compute_score(rolls)
  score = rolls.sum

  10.times do
    | frame_index |
    if is_spare?(rolls, frame_index)
      score += spare_bonus(rolls, frame_index)
    end
  end

  score
end

def is_spare?(rolls, frame_index)
  rolls[frame_index*2] + rolls[frame_index*2 + 1] == 10
end

def spare_bonus(rolls, frame_index)
  rolls[frame_index*2+2]
end
