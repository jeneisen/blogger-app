class Post < ActiveRecord::Base
  attr_accessible :body, :image_content_type, :image_file_name, :image_file_size, :title, :name
  has_many :comments , :dependent => :destroy

  validates_presence_of :title, :body
  validates_uniqueness_of :title
end
