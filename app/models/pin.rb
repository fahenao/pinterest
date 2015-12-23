class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, 
										:styles => { :medium => '300x300', :thumb => '100x100' }
	validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
	validates :price, presence: true
	validates :title, presence: true
	validates :description, presence: true
	validates :image, presence: true
end
