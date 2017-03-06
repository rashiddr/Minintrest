Rails.application.routes.draw do
  devise_for :users, controllers:{
    sessions: 'users/sessions', registrations: 'users/registrations'
  }
  resources :topics, except: [:show]
  authenticated :user do
    root 'topics#available_topics'
  end
  root 'welcome#index'
  get '/trending_topics', to: 'topics#available_topics', as: 'available_topics'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
