class RemovePreferenceFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :preferences, :string
  end
end
