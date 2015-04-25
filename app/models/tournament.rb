class Tournament < ActiveRecord::Base
  self.inheritance_column = :type

  has_many :matches

  def players
    matches.map{ |m| m.players }.flatten.uniq
  end

  def ranked_players
    players.sort! { |left, right| right.wins.for(self).count <=> left.wins.for(self).count }
  end
end
