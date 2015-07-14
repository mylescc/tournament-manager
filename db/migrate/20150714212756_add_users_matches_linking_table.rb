class AddUsersMatchesLinkingTable < ActiveRecord::Migration
  def change
    create_table :users_wins do |t|
      t.belongs_to :user, index: true 
      t.belongs_to :win, index: true 
    end

    create_table :users_loses do |t|
      t.belongs_to :user, index: true 
      t.belongs_to :lose, index: true 
    end
  end
end
