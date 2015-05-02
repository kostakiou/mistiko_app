class Secret < ActiveRecord::Base
	belongs_to :sxoleio
	validates :title, presence: true, length: { maximum: 80 }
end
