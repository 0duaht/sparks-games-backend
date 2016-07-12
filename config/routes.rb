Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#login', as: :authenticate
  get 'categories' => 'categories#index'
  scope "auth" do
    get "logout" => "sessions#logout"
  end
end
