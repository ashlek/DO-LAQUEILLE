class Film < ActiveRecord::Base
	has_attached_file :image
	validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/	png"] }
	belongs_to :cinema
	has_many :notes
	has_many :spectateurs, :through => :notes
	accepts_nested_attributes_for :notes, allow_destroy: true


 def moyenne
	moye=0
        if notes.nil? or notes.count==0
		return 0
	else
		notes.each do |n|
	      		moye=moye+n.value
       	        end
			moye=moye/notes.count
	end
	#notes.map { |note| note.star }.sum / notes.count unless notes.empty?
  end


end
