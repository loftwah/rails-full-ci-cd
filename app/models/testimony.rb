class Testimony < ApplicationRecord
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    %w[id testimony_from_user testimony_title testimony_description] # add or remove attributes as per your needs
  end
end
