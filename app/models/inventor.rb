class Inventor < ApplicationRecord
  has_secure_password
  #validates :user_name, :presence => :true
  #validates :user_name, :uniqueness => :true
  has_many :inventions
  has_many :invention_investments, through: :inventions
  has_many :investors, through: :invention_investments

  def self.find_or_create_by(auth_hash)
    self.where(:user_name => auth_hash["info"]["name"]).first_or_create do |user|
	  user.password= SecureRandom.hex
    end
  end
end
