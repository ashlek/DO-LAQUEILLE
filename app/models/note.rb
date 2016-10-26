class Note < ActiveRecord::Base
  belongs_to :spectateur
  belongs_to :film
end
