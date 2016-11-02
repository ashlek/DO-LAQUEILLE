class Spectateur < ActiveRecord::Base
	has_many :notes
	has_many :films, :through => :notes
		         #or through : :notes
	validates:name, presence: true
end
