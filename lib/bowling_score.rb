def compute_score(rolls)
  score = rolls.sum

  frame_index = 0
  rolls.each_slice(2) do
    | frame_rolls |
    if frame_rolls.sum == 10
      score += rolls[frame_index + 2]
    end
    frame_index += 2
  end

  score
end
