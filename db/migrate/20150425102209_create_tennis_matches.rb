class CreateTennisMatches < ActiveRecord::Migration
  def change
    create_table :tennis_matches do |t|

      t.timestamps
    end
  end
end
