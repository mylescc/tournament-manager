module Tennis
  class Match < ::Match

    validate do
      errors.add(:score, 'must be a tennis score') unless score.is_a? Tennis::Score
    end
  end
end
