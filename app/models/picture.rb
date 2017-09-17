class Picture < ActiveRecord::Base

	validates :content, presence: true

	mount_uploader :picture, PictureUploader
end
