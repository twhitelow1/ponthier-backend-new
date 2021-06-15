# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quote.create(
  status: "Submitted",
  price: 0.00,
  client_name: "John Smith", 
  email: "john@example.com", 
  phone: "5555555555", 
  project_type: "commercial", 
  floors: "1 story", 
  building_sqft: 5465, 
  garage: false,
  roof_material: "", 
  pitch_of_roof: "", 
  gutter_sqft: 200,
  ext_material: "Brick",
  screen_removal: true, 
  door_material: "wood",
  flt_surface_sqft: 5000,
  driveway_size: "parking lot",
  driveway: false,
  comments: "Big house",
  roof_services: false,
  gutter_cleaning: true,
  building_wash: true,
  flat_surfaces: true,
  rust_removal: false,
);

Quote.create(
  status: "Submitted",
  price: 0.00,
  client_name: "Tommy Smith", 
  email: "tom@example.com", 
  phone: "(555) 555-4567", 
  project_type: "residential", 
  floors: "2 story", 
  building_sqft: 5465, 
  garage: true,
  roof_material: "Shingles", 
  pitch_of_roof: "2/12", 
  gutter_sqft: 0,
  ext_material: "Brick",
  screen_removal: true, 
  door_material: "wood",
  flt_surface_sqft: 5000,
  driveway: true,
  driveway_size: "2 car",
  comments: "Big house",
  roof_services: true,
  gutter_cleaning: true,
  building_wash: true,
  flat_surfaces: true,
  rust_removal: false,
);

OfferedService.create(name: "House Wash")
OfferedService.create(name: "Roof Cleaning")
OfferedService.create(name: "Driveway/Flat Surface")
OfferedService.create(name: "Gutter Cleaning")
OfferedService.create(name: "Rust Removal")

PickedService.create(offered_service_id:1, quote_id:1)
PickedService.create(offered_service_id:2, quote_id:1)
PickedService.create(offered_service_id:3, quote_id:1)
PickedService.create(offered_service_id:4, quote_id:1)
PickedService.create(offered_service_id:1, quote_id:2)
PickedService.create(offered_service_id:2, quote_id:2)
PickedService.create(offered_service_id:3, quote_id:2)


