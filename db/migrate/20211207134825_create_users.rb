class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :tk 
      t.string :username
      t.string :password_digest
      t.boolean :status
      t.string :usercode
      t.string :region

      t.timestamps
    end
  end
end
