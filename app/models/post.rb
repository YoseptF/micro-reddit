class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { in: 10..50 }
  validates :content, presence: true, length: { in: 30..150 }
end
