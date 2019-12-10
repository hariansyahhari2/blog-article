class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :article_id
      t.string :username
      t.string :content
      t.string :status

      t.timestamps
    end
  end
end
