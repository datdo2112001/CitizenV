class AddIndexToUsersAccountname < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :accountname, unique: true
  end
end
