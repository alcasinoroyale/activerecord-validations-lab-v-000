class Post < ActiveRecord::Base
  belongs_to :author
  validates :post_content, length: {minimum: 250}
  validates :post_summary, length: {maximum: 250}
end
