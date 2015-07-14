class Match < ActiveRecord::Base
  self.inheritance_column = :type

  belongs_to :score, polymorphic: true

  has_many :users_wins, foreign_key: :win_id
  has_many :winners, through: :users_wins, source: :user

  has_many :users_loses, foreign_key: :lose_id
  has_many :losers, through: :users_loses, source: :user

  def match_type
    self.class.parent.to_s.downcase
  end

  def players 
    [ winner, loser ] 
  end
end
