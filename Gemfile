source "https://rubygems.org"

gem "rails", "4.2.5"
gem "rails-api", require: 'rails-api/action_controller/api'
gem "spring", group: :development
gem "bcrypt"
gem "jwt"
gem "figaro"
gem "omniauth-google-oauth2"
gem "validates_email_format_of"
gem "simple_command"
gem "faker"
gem "factory_girl_rails", "~> 4.0"
gem 'rack-cors', :require => 'rack/cors'

group :development do
  gem "pry"
end

group :production do
  gem "pg"
end

group :development, :test do
  gem "sqlite3"
  gem "codeclimate-test-reporter", require: nil
end
