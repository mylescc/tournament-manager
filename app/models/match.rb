class Match < ActiveRecord::Base
  self.inheritance_column = :type

  belongs_to :tournament
  belongs_to :winner, class_name: User 
  belongs_to :loser, class_name: User 
  belongs_to :score, polymorphic: true

  scope :for, -> (tournament) { where(tournament_id: tournament.id) }

  def match_type
    self.class.parent.to_s.downcase
  end

  def players 
    [ winner, loser ] 
  end
end
