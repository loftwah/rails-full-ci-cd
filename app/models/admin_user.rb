class AdminUser < ApplicationRecord
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  def self.ransackable_attributes(auth_object = nil)
    %w[id email] # add other attributes as needed, but exclude sensitive ones
  end
end
