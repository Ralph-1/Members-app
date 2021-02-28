Rails.application.routes.draw do
  # devise_for :users
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root "posts#index"
  resources :posts, only: %i[index new create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
