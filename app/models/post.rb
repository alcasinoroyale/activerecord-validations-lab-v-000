class Post < ActiveRecord::Base
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validate :clickbaity?
  CLICKBAIT = [
    /Won't Believe/i
    /Secret/i
    /Top[0-9]*/i
    /Guess/i
  ]
  def clickbait?
    if !ClICKBAIT.any? { |phrase|}
end
