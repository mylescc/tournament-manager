class User < ActiveRecord::Base
  include Clearance::User

  validates :firstname, presence: true
  validates :lastname, presence: true

  has_many :users_wins
  has_many :wins, through: :users_wins

  has_many :users_loses
  has_many :loses, through: :users_loses

  def fullname
    "#{firstname} #{lastname}"
  end
end
