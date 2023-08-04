class Milestone < ApplicationRecord
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    %w[id milestones_title milestones_description milestones_url milestones_date milestones_icon milestones_future] # add or remove attributes as per your needs
  end
end
