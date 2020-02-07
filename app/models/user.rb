class User < ApplicationRecord
  has_many :comments
  has_many :posts

  validates :name, presence: true, length: { in: 6..40 }, uniqueness: { case_sensitive: false }
  validates :email, presence: true, length: { in: 6..40 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze }

  validates :password, presence: true, length: { in: 6..40 }
  has_secure_password
end
