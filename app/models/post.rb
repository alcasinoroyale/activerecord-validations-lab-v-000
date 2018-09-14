class Post < ActiveRecord::Base
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validate :is_clickbait
  CLICKBAIT = [
    "Won't Believe", "Secret", "Top[0-9]" /Secret/i, /Top[0-9]*/i, /Guess/i]
  def is_clickbait
    if !ClICKBAIT.any? { |phrase|}
end
