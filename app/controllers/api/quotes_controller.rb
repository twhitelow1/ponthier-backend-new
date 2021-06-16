class Api::QuotesController < ApplicationController
  def index
    @quotes = Quote.all 
    render "index.json.jb"
  end

  def create
    @quote = Quote.new(
      client_name: params[:clientName], 
      email: params[:email], 
      phone: params[:phone], 
      status: params[:status],
      price: params[:price],
      project_type: params[:projectType], 
      floors: params[:floors], 
      building_sqft: params[:buildingSqft], 
      garage: params[:garage], 
      roof_services: params[:roofServices],
      roof_material: params[:roofMaterial], 
      pitch_of_roof: params[:pitchOfRoof], 
      gutter_cleaning: params[:gutterCleaning],
      gutter_sqft: params[:gutterSqft],
      building_wash: params[:buildingWash],
      ext_material: params[:extMaterial],
      screen_removal: params[:screenRemoval],
      door_material: params[:doorMaterial],
      flat_surfaces: params[:flatSurfaces],
      flt_surface_sqft: params[:fltSurfaceSqft],
      driveway: params[:driveway],
      driveway_size: params[:drivewaySize],      
      rust_removal: params[:rustRemoval],
      comments: params[:comments],
    )
    @quote.save
    render "show.json.jb"
  end

  def show
    @quote = Quote.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @quote = Quote.find_by(id: params[:id])
    @quote.client_name = params[:clientName] || @quote.client_name 
    @quote.status = params[:status] || @quote.status
    @quote.price = params[:price] || @quote.price
    @quote.email = params[:email] || @quote.email
    @quote.phone = params[:phone] || @quote.phone
    @quote.project_type = params[:projectType] || @quote.project_type
    @quote.floors = params[:floors] || @quote.floors
    @quote.building_sqft = params[:buildingSqft] || @quote.building_sqft
    @quote.garage = params[:garage] || @quote.garage, 
    @quote.roof_services = params[:roofServices] || @quote.roof_services
    @quote.roof_material = params[:roofMaterial] || @quote.roof_material
    @quote.pitch_of_roof = params[:pitchOfRoof] || @quote.pitch_of_roof
    @quote.gutter_cleaning = params[:gutterCleaning] || @quote.gutter_cleaning
    @quote.gutter_sqft = params[:gutterSqft] || @quote.gutter_sqft
    @quote.building_wash = params[:buildingWash] || @quote.building_wash
    @quote.ext_material = params[:extMaterial] || @quote.ext_material
    @quote.screen_removal = params[:screenRemoval] || @quote.screen_removal
    @quote.door_material = params[:doorMaterial] || @quote.door_material
    @quote.flat_surfaces = params[:flatSurfaces] || @quote.flat_surfaces
    @quote.flt_surface_sqft = params[:fltSurfaceSqft] || @quote.flt_surface_sqft
    @quote.driveway = params[:driveway] || @quote.driveway
    @quote.driveway_size = params[:drivewaySize] || @quote.driveway_size  
    @quote.rust_removal = params[:rustRemoval] || @quote.rust_removal
    @quote.comments = params[:comments] || @quote.comments
    
    @quote.save
    render "show.json.jb"
  end
end