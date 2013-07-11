class Comment < ActiveRecord::Base
  attr_accessible :author_name, :body, :post_id
  belongs_to :post

  validates_presence_of :author_name, :body
end
