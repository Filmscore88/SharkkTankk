class Inventor < ApplicationRecord
  has_secure_password
  has_many :inventions
  has_many :investors, through: :inventions 
end
