class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.integer :birth_year
      t.integer :birth_month
      t.integer :birth_date
      t.string :gender
      t.text :document_groups
      t.text :user_groups

      t.timestamps null: false
    end
  end
end
