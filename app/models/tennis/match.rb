module Tennis
  class Match < ::Match

    before_validation :add_score

    def add_score
      self.score ||= Tennis::Score.create!
    end

  end
end
