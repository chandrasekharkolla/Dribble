class Post < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "750x550", small: "350x250#" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  	belongs_to :user
  	has_many :comments
  	acts_as_votable
end
