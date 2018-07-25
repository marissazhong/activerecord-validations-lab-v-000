class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validate :is_clickbait

  @@clickbait = ["Won't Believe", "Secret", "Top [number]", "Guess"]

  def is_clickbait
    if !.any? {|word| self.title.include?(word)}
      errors.add(:title, "not clickbait")
    end
  end

end
