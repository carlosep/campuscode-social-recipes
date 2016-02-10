class AddDataToUser < ActiveRecord::Migration
  def change
    add_column :users, :city, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :preferences, :string
  end
end
