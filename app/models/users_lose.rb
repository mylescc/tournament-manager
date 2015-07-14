class UsersLose < ActiveRecord::Base
  belongs_to :user
  belongs_to :lose, class_name: Match
end
