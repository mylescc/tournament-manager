class Tournament < ActiveRecord::Base
  has_many :matches

  def players
    matches.map{ |m| m.players }.flatten.uniq
  end
end
