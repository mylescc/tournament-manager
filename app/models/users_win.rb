class UsersWin < ActiveRecord::Base
  belongs_to :user
  belongs_to :win, class_name: Match
end
