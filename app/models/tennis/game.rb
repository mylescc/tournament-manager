module Tennis
  class Game < ActiveRecord::Base
    belongs_to :set
    belongs_to :player

    scope :for, -> (player) { where(player: player) }
  end
end
