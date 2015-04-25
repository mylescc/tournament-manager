class CreateTennisGames < ActiveRecord::Migration
  def change
    create_table :tennis_games do |t|
      t.belongs_to :set, index: true
      t.belongs_to :player, index: true

      t.timestamps
    end
  end
end
