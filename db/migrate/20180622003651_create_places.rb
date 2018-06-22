class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.references :city
      t.string :title
      t.string :address
      t.string :phone_number
      t.integer :type
      t.float :latitude
      t.float :longitude
      t.float :latitude_range
      t.float :longitude_range
      t.integer :points
      t.string :slug

      t.timestamps
    end
  end
end
