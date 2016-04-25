class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true, length: { minimum: 2, maximum: 12 }
  validates :email, presence: true, uniqueness: true, length: { minimum: 8 }, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
  validates :password, presence: true, length: { minimum: 6, maximum: 12 }

end
