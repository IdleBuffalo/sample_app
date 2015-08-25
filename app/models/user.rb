class User < ActiveRecord::Base
  # validates(:name, presence: true) -- daljsa verzija
  validates :name, presence: true
  validates :email, presence: true
end
