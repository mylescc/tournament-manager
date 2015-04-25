class TennisMatch < Match

  validate do
    errors.add(:score, 'must be a tennis score') unless score.is_a? TennisScore
  end


end
