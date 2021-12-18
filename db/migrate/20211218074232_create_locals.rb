class CreateLocals < ActiveRecord::Migration[6.1]
  def change
    create_table :locals do |t|
      t.string :name
      t.integer :code
      t.string :status

      t.timestamps
    end
  end
end
