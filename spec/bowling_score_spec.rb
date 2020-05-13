# on fait tous les lancés avant de calculer le score
# On fait dix lancés
# strike = le bonus est égal aux points des deux lancés suivants
# Que des striques = 30 points * dix lancés
#
# Si le dernier lancé est un strike, il y a deux lancés supplémentaires qui ne
# content qu'en bonus
#
# deux lancés par frame (sauf strike = clos la frame)
# dix frames
#
# un strike, un deux et un quatre = (10 + 2 + 4) + (2 + 4) = 22
# que des strikes = 300 points

require 'bowling_score'

describe 'Bowling Score' do
  context 'Gutter game' do
    it 'scores zero' do
      rolls = Array.new(20, 0)

      score = compute_score(rolls)

      expect(score).to eq 0
    end
  end

  context 'Rolls with no strike and spares' do
    it 'scores the sum of the rolls' do
      rolls = [1, 2, 3] # Rolls structure is exposed
      17.times { rolls << 0 }

      score = compute_score(rolls)

      expect(score).to eq 6
    end
  end

  context 'A game starts with a spare followed by a non zero roll' do
    it 'adds the spare bonus' do
      rolls = [5,5,3].fill(0, 3..17)

      score = compute_score(rolls)

      expect(score).to eq 16
    end
  end
end
