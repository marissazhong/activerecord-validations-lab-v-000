class Post < ActiveRecord::Base
  validates :name, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }

end
