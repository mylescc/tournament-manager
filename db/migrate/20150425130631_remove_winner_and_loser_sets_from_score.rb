class RemoveWinnerAndLoserSetsFromScore < ActiveRecord::Migration
  def change
    remove_column :tennis_scores, :winner_sets
    remove_column :tennis_scores, :loser_sets
  end
end
