class AddScoreToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :score_id, :integer, null: true, default: nil
    add_column :matches, :score_type, :string, null: true, default: nil
  end
end
