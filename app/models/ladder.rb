class Ladder < ActiveRecord::Base
  belongs_to :owner, class_name: User
  has_many :matches

  validates :owner, presence: true
  validates :name, presence: true

end
