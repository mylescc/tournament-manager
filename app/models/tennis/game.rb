module Tennis
  class Game < ActiveRecord::Base
    belongs_to :set
    belongs_to :player, class_name: User

    scope :for, -> (player) { where(player: player) }
  end
end
