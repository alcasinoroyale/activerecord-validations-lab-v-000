class Author < ActiveRecord::Base
  has_many :posts
  validates :name, uniqueness: true
end
