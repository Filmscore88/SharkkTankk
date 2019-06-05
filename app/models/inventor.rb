class Inventor < ApplicationRecord
  has_secure_password
  has_many :inventions
  has_many :invention_investments, through: :inventions
  has_many :investors, through: :invention_investments
end
