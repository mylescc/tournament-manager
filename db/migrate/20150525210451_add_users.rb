class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.text :bio
      t.string :email
      t.timestamps
    end

  end
end
