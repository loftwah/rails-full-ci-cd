class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:github]

  has_many :links
  has_many :milestones
  has_many :events
  has_many :testimonies

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      # you can even save user's name: user.name = auth.info.name
      # if the user's email is not verified on Github you need to handle this in the User model
    end
  end
  
  def self.ransackable_attributes(auth_object = nil)
    %w[id email username] # add other attributes as needed, but exclude sensitive ones
  end

  def self.ransackable_associations(auth_object = nil)
    %w[links milestones events testimonies] # add other associations as needed
  end
end
