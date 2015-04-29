class RemoveEmailFromUser < ActiveRecord::Migration
  def self.up
  	remove_column :users, :email
  end
end
