@offered_services.map do |offered_service|
  {
    id: offered_service.id,
    name: offered_service.name,
    description: offered_service.description,
    img_url: offered_service.img_url,
  }
end