class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
