class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :type, :tk
  end
end
