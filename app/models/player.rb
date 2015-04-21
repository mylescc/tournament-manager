class Player < ActiveRecord::Base
  has_many :wins, class_name: Match, foreign_key: :winner_id
  has_many :loses, class_name: Match, foreign_key: :loser_id
  
  def matches
    wins + loses
  end

  def tournaments 
    matches.map{ |m| m.tournament }.uniq
  end
end
