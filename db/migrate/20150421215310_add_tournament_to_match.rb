class AddTournamentToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :tournament_id, :integer, null: true, default: nil
  end
end
