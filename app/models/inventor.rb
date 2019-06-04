class Inventor < ApplicationRecord
  has_secure_password
  has_many :inventions
  has_many :invention_investments
  has_many :investors, through: :invention_investments
end
