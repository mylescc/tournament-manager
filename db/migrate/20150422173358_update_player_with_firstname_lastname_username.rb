class UpdatePlayerWithFirstnameLastnameUsername < ActiveRecord::Migration
  def change
    add_column :players, :firstname, :string, null: true
    add_column :players, :lastname, :string, null: true
  end
end
