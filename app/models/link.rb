class Link < ApplicationRecord
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    %w[id links_display_name links_url links_enabled links_group links_icon links_pinned] 
  end
end
