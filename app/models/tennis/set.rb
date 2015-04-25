module Tennis
  class Set < ActiveRecord::Base
    self.table_name_prefix = 'tennis_'

    belongs_to :tennis_score

  end
end
