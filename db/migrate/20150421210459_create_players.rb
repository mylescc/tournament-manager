class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.text :bio
      t.string :email

      t.timestamps
    end
  end
end
