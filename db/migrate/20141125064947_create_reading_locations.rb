class CreateReadingLocations < ActiveRecord::Migration
  def change
    create_table :reading_locations do |t|
      t.integer :book_id
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
