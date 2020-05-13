def compute_score(rolls)
  score = rolls.sum

  if rolls[0]+rolls[1] == 10
    score += rolls[2]
  end

  score
end
