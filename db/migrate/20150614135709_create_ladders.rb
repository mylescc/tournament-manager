class CreateLadders < ActiveRecord::Migration
  def change
    create_table :ladders do |t|
      t.string :name
      t.references :owner
      t.boolean :private, default: false, null: false
      t.timestamps
    end
  end
end
