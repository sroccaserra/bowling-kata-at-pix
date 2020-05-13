def compute_score(rolls)
  score = rolls.sum

  10.times do
    | frame_index |
    if rolls[frame_index] + rolls[frame_index + 1] == 10
      score += rolls[frame_index + 2]
    end
  end

  score
end
