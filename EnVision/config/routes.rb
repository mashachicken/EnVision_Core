Rails.application.routes.draw do
  root to: "application#index"
  get '/sources' => 'application#sources'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get '/save_result' => 'users#result'
  resource :user, only: [:new, :create, :index, :show]

end
