class Secret < ActiveRecord::Base
	belongs_to :sxoleio
	validates :title, presence: true, length: { maximum: 1000 }
	
	has_many :comments
end
