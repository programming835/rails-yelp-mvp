Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end



# A visitor can see the list of all restaurants.

# GET "restaurants"

# A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.

# GET "restaurants/new"
# POST "restaurants"

# A visitor can see the details of a restaurant, with all the reviews related to the restaurant.

# GET "restaurants/38"

# A visitor can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
# And that’s it!

# Hint: to handle the route GET "restaurants/38/reviews/new", you will have to use nested resources.

#  resources :restaurants do
#     # STATIC
#     collection do
#       get :top_restaurants
#       get :worst_restaurants
#     end
#     # DYNAMIC
#     member do
#       get :chef_name
#     end
#     resources :reviews, only: [:new, :create]
#   end

#   resources :reviews, only: [:destroy]