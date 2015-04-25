class CreateTennisSets < ActiveRecord::Migration
  def change
    create_table :tennis_sets do |t|
      t.belongs_to :score, index: true

      t.timestamps
    end
  end
end
