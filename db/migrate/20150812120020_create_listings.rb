class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string  :street
      t.string  :status
      t.integer :price, limit: 3
      t.integer :bedrooms, limit: 1
      t.integer :bathrooms, limit: 1
      t.integer :sq_ft, limit: 2
      t.decimal :lat, precisoin: 10, scale: 6
      t.decimal :lng, precision: 10, scale: 6
    end
  end
end
