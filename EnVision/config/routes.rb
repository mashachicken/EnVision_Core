Rails.application.routes.draw do
  root to: "application#index"
  get '/sources' => 'application#sources'
  get '/users' => 'application#users'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get '/save_result' => 'users#result'
  get '/update_pic' => 'users#add_pic'
  get '/update_quote' => 'users#add_quote'
  resource :user, only: [:new, :create, :index, :show]

end
