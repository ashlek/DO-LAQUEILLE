class Cinema < ActiveRecord::Base
has_many :films

 def selection
    @name
  end

end
