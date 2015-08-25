class User < ActiveRecord::Base
  # validates(:name, presence: true) -- daljsa verzija
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
end

