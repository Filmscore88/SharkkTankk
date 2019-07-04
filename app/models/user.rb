class User < ApplicationRecord
  has_secure_password
  has_many :invention_investments #, -> { where(investor: true) }
  has_many :inventions #, -> { where(inventor: true) }
  #has_many :invention_investments, -> { where(inventor: true) } , through: :inventions
#  has_many :investors, -> { where(inventor: true) }, through: :invention_investments
  validates :name, :presence => :true
  validates :name, :uniqueness => :true

  def self.find_or_create_by(auth_hash)
    self.where(:name => auth_hash["info"]["name"]).first_or_create do |user|
	  user.password= SecureRandom.hex
    end
  end
end
