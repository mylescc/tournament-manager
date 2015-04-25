class AddTypeToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :type, :string, null: true, default: nil
    add_column :tournaments, :type, :string, null: true, default: nil
  end
end
