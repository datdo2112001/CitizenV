class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :tk
      t.integer :accountname
      t.string :region
      t.string :permission

      t.timestamps
    end
  end
end
