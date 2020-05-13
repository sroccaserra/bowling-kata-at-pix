
def compute_score(rolls)
  score = rolls.sum

  10.times do
    | frame_number |
    first_roll_index  = frame_number * 2
    if spare?(rolls, first_roll_index)
      score += spare_bonus(rolls, first_roll_index)
    elsif strike?(rolls, first_roll_index)
      score += strike_bonus(rolls, first_roll_index)
    end
  end

  score
end

def spare?(rolls, first_roll_index)
  rolls[first_roll_index] + rolls[first_roll_index + 1] == 10
end

def spare_bonus(rolls, first_roll_index)
  rolls[first_roll_index+2]
end

def strike?(rolls, first_roll_index)
  rolls[first_roll_index] == 10
end

def strike_bonus(rolls, first_roll_index)
  rolls[first_roll_index + 1] + rolls[first_roll_index + 2]
end
