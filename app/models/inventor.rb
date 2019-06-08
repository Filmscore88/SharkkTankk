class Inventor < ApplicationRecord
  has_secure_password
  has_many :inventions
  has_many :invention_investments, through: :inventions
  has_many :investors, through: :invention_investments

  def self.find_or_create_by(auth_hash)
      self.where(:email => auth_hash["info"]["email"]).first_or_create do |user|
	    user.password= SecureRandom.hex
   end
end

end
