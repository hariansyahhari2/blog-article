class CreateRemoveIntegerFromContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :remove_integer_from_contacts do |t|
      remove_column :contacts, :name
      remove_column :contacts, :message
    end
  end
end
