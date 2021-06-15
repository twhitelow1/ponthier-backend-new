class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.string :status, default: "submitted"
      t.decimal :price, precision: 9, scale: 2, default: 0.00
      t.string :client_name
      t.string :email
      t.string :phone
      t.string :project_type
      t.string :floors
      t.integer :building_sqft
      t.boolean :garage
      t.string :roof_material
      t.string :pitch_of_roof
      t.string :gutter_sqft
      t.string :ext_material
      t.boolean :screen_removal
      t.string :door_material
      t.integer :flt_surface_sqft
      t.string :driveway_size
      t.text :comments
      t.boolean :roof_services
      t.boolean :gutter_cleaning
      t.boolean :rust_removal
      t.boolean :building_wash 
      t.boolean :flat_surfaces
      t.boolean :driveway


      t.timestamps
    end
  end
end
