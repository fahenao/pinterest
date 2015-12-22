class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, 
										:styles => { 
											:medium => '300x300', 
											:thumb => '100x100' }, 
											:default_url => "http://www.reconregen.com/wp-content/uploads/2015/04/icon_missing_photo_detail.png"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
