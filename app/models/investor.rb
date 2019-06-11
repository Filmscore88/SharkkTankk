class Investor < ApplicationRecord
  has_secure_password
  has_many :invention_investments
  validates :name, :precense => :true
  validates :name, :uniqueness => :true
end
