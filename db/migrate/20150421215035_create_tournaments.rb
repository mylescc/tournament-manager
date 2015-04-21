class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.datetime :start
      t.datetime :finish

      t.timestamps
    end
  end
end
