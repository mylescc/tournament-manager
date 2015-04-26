module Tennis
  class Set < ActiveRecord::Base
    belongs_to :tennis_score
    has_many :games

  end
end
