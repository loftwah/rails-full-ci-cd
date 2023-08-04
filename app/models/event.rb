class Event < ApplicationRecord
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    %w[id events_name events_description events_url events_start_date events_end_date events_ticket_price events_virtual events_color] # add or remove attributes as per your needs
  end
end
