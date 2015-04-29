class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :description
      t.integer :group
      t.integer :user
      t.text :shared_users

      t.timestamps null: false
    end
  end
end