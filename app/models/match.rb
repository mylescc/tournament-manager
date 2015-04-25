class Match < ActiveRecord::Base
  self.inheritance_column = :type

  belongs_to :tournament
  belongs_to :winner, class_name: Player
  belongs_to :loser, class_name: Player
  belongs_to :score, polymorphic: true

  scope :for, -> (tournament) { where(tournament_id: tournament.id) }

  def players 
    [ winner, loser ] 
  end
end
