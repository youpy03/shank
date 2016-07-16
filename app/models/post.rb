class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :likes
	has_many :categorys

	mount_uploader :image, ImageUploader
	#postデーブルに追加したカラムの名前をmount_uploaderに指定する

	def liked_by? user
	    likes.where(user_id: user.id).exists?
	end
end

