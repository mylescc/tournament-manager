module Tennis
  class Tournament < ::Tournament
    has_many :matches, class_name: 'Tennis::Match'

  end
end
