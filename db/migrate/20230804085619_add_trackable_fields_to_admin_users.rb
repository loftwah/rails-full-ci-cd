class AddTrackableFieldsToAdminUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :admin_users, :sign_in_count, :integer, limit: 4
    add_column :admin_users, :current_sign_in_at, :datetime
    add_column :admin_users, :last_sign_in_at, :datetime
    add_column :admin_users, :current_sign_in_ip, :string
    add_column :admin_users, :last_sign_in_ip, :string
  end
end
