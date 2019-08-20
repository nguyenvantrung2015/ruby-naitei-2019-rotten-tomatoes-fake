Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}
  get "/home", to: "static_pages#home"
  root "static_pages#home"
  resources :movies, only: %i(index show)
  resources :tv_shows, only: %i(index show) do
    resources :seasons, only: :show do
      resources :episodes, only: :show
    end
  end
  resources :users
  resources :celebrities, only: %i(index show)
  resources :news
  resources :reviews, only: %i(create destroy)
  resources :search, only: :index

  namespace :admin do
    resources :movies
    resources :users, except: %i(new create)
    resources :tv_shows do
      resources :seasons, except: :index do
        resources :episodes, except: :index
      end
    end
    resources :news, except: %i(new create edit)
    resources :celebrities
    resources :celebrity_media, only: %i(create destroy)
    root "dashboard#index"
  end
end
