Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#login', as: :authenticate
  scope "auth" do
    get "logout" => "sessions#logout"
  end
end
