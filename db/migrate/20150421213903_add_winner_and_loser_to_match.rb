class AddWinnerAndLoserToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :winner_id, :integer, null: true, default: nil
    add_column :matches, :loser_id, :integer, null: true, default: nil
  end
end
