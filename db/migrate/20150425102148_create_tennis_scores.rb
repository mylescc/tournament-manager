class CreateTennisScores < ActiveRecord::Migration
  def change
    create_table :tennis_scores do |t|
      t.integer :winner_sets
      t.integer :loser_sets

      t.timestamps
    end
  end
end
