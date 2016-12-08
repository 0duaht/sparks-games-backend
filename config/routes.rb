Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#login', as: :authenticate
  get 'auth/failure', to: 'sessions#failure'
  get 'categories' => 'categories#index'
  post 'votes' => 'votes#create'
  scope "auth" do
    get "logout" => "sessions#logout"
  end
end
