Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}
  get "/home", to: "static_pages#home"
  root "static_pages#home"
  resources :movies, only: %i(index show)
  resources :tv_shows, only: %i(index show)
  resources :celebrities, only: %i(index show)
  namespace :admin do
    resources :movies
    resources :users, except: %i(new create)
    resources :tv_shows do
      resources :seasons, except: :index do
        resources :episodes, except: :index
      end
    end
    resources :celebrities
    resources :celebrity_media, only: %i(create destroy)
    root "dashboard#index"
  end
  resources :news
  resources :search
  resources :reviews, only: %i(create destroy)
end
