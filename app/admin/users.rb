ActiveAdmin.register User do
  permit_params :email, :username, :name, :bio, :tags,
                links_attributes: [:id, :group, :url, :display_name, :icon, :enabled, :pinned, :_destroy],
                milestones_attributes: [:id, :title, :description, :url, :date, :icon, :future, :_destroy],
                events_attributes: [:id, :name, :description, :url, :start_date, :end_date, :ticket_price, :virtual, :color, :_destroy],
                testimonies_attributes: [:id, :from_user, :title, :description, :_destroy]

  form do |f|
    f.inputs 'User Details' do
      f.input :email
      f.input :username
      f.input :name
      f.input :bio
      f.input :tags
    end
    f.inputs 'Links' do
      f.has_many :links, heading: 'Links', allow_destroy: true, new_record: true do |link_form|
        link_form.input :group
        link_form.input :url
        link_form.input :display_name
        link_form.input :icon
        link_form.input :enabled
        link_form.input :pinned
      end
    end
    f.inputs 'Milestones' do
      f.has_many :milestones, heading: 'Milestones', allow_destroy: true, new_record: true do |milestone_form|
        milestone_form.input :title
        milestone_form.input :description
        milestone_form.input :url
        milestone_form.input :date
        milestone_form.input :icon
        milestone_form.input :future
      end
    end
    f.inputs 'Events' do
      f.has_many :events, heading: 'Events', allow_destroy: true, new_record: true do |event_form|
        event_form.input :name
        event_form.input :description
        event_form.input :url
        event_form.input :start_date
        event_form.input :end_date
        event_form.input :ticket_price
        event_form.input :virtual
        event_form.input :color
      end
    end
    f.inputs 'Testimonies' do
      f.has_many :testimonies, heading: 'Testimonies', allow_destroy: true, new_record: true do |testimony_form|
        testimony_form.input :from_user
        testimony_form.input :title
        testimony_form.input :description
      end
    end
    f.actions
  end
end
