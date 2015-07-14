class AddTypeToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :type, :string, null: true, default: nil
  end
end
