class CreateCitizens < ActiveRecord::Migration[6.1]
  def change
    create_table :citizens do |t|
      t.string :cmnd
      t.string :name
      t.datetime :birthday
      t.string :sex
      t.string :hometown
      t.string :paddress
      t.string :traddress
      t.string :religion
      t.string :edulevel
      t.string :job
      t.integer :code

      t.timestamps
    end
  end
end
