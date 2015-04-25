module Tennis
  class Score < ActiveRecord::Base 
    self.table_name_prefix = 'tennis_'

    has_many :sets
  end
end
