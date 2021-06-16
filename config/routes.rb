Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/quotes" => "quotes#index"
    post "/quotes" => "quotes#create"
    get "/quotes/:id" => "quotes#show"
    patch "/quotes/:id" => "quotes#update" 

    get "/services" => "offered_services#index"
    post "/services" => "offered_services#create"
    get "/services/:id" => "offered_services#show"
    delete "services/:id" => "offered_services#destroy"
    patch "/services/:id" => "offered_services#update"
  end
end
