Rails.application.routes.draw do
  devise_for :users
root "profiles#index"
# get "profiles" => "profiles#index"
# get "profiles/:id" => "profiles#show", as: "profile"
# get "profiles/:id/edit" => "profiles#edit", as: "edit_profile"
# patch "profiles/:id" => "profiles#update"
resources :profiles do
  collection do
    get 'search'
  end
end
end
