Rails.application.routes.draw do
  devise_for :users
  # 1. As a visitor I can visit the home page
  root to: "pages#home"

  # 2. as a user i would like to be able to register
  # DONE WITH DEVISE
  # 3. As a user I can create a lookalike
  # get "/lookalikes/new", to: "lookalikes#new"

  # post "/lookalikes", " lookalikes#create"

  # 4.As a visitor I can browse celeb look-a-likes
  # get "/lookalikes", to: "lookalikes #index"

  # 5.As a visitor I can view the look-alike I prefer
  # get "/lookalikes/:id", to: "lookalikes#show"

  # 6.  As a user I can book my look-alike celeb
  # post "/lookalikes/lookalike_id/bookings", to: "bookings#create"

  # 7. As a user I can access a dashboard
  # get "/bookings/my_bookins", to: "bookings#my_bookings"

  # =============================================================
  # this we need to double think
  # 8. As as user I can rate my experiences
  # get "/lookalikes/:id/rate", to: "ratings#new"
  # post "/lookalikes/lookalike_id/bookings", to: "bookings#create"

  resources :lookalikes do 
    resources :bookings, only: [:create] #is this replaced now?
  end

  resources :bookings
end
