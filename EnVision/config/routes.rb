Rails.application.routes.draw do
  root to: "application#index"
  get '/sources' => 'application#sources'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resource :user, only: [:new, :create, :index, :show]
  resources :questions do
    resources :answers
  end
end
