class Cinema < ActiveRecord::Base
has_many :films
validates:name, presence: true
validates:location, presence: true

 def selection
    @name
  end

end
