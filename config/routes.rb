Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  resources :restaurants do
    # By nesting the reviews in the restaurant resource we get access to the restaurant_id in the route
    resources :reviews, only: [ :new, :create, :index ]
    collection do
    #   # Because its a sub collection of restaurants, the route will be /restau
      get 'top'
    end
    member do
      get 'chef'
    end
  end
  resources :reviews, except: [ :new, :create, :index ]
  # VERB PATH,to:  CONTROLLER#ACTION
  # get '/restaurant', to: 'restaurants#index'
  namespace :admin do
    resources :restaurants, only: [:index]
  end

end


