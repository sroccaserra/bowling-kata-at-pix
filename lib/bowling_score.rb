
def compute_score(rolls)
  score = rolls.sum

  10.times do
    | frame_index |
    if spare?(rolls, frame_index)
      score += spare_bonus(rolls, frame_index)
    elsif strike?(frame_index, rolls)
      score += strike_bonus(frame_index, rolls)
    end
  end

  score
end

def spare?(rolls, frame_index)
  rolls[frame_index*2] + rolls[frame_index*2 + 1] == 10
end

def spare_bonus(rolls, frame_index)
  rolls[frame_index*2+2]
end

def strike?(frame_index, rolls)
  rolls[frame_index * 2] == 10
end

def strike_bonus(frame_index, rolls)
  rolls[frame_index * 2 + 1] + rolls[frame_index * 2 + 2]
end
