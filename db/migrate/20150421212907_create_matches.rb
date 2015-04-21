class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.text :description

      t.timestamps
    end
  end
end
