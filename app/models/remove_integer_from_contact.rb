class RemoveIntegerFromContact < ApplicationRecord
    remove_column :contacts, :name
    remove_column :contacts, :message
end
