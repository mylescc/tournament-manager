module Tennis
  class Score < ActiveRecord::Base 
    self.table_name_prefix = 'tennis_'

    has_many :sets

    def games_in_set(number, player)
      set_index = number - 1
      return 0 unless sets[set_index].present? 
      sets[set_index].games.for(player).count
    end

    #def 

  end
end
