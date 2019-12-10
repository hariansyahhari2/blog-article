class CreateChangeStatusFromContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :change_status_from_contacts do |t|
      change_column :contacts, :name, :string
      change_column :contacts, :message, :string
    end
  end
end