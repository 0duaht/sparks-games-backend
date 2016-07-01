class SessionsController < ApplicationController
  before_action :authenticate_token, only: [:logout]

  def login
    auth_command = UserAuthentication.call(env["omniauth.auth"])
    respond_with_command auth_command
  end

  def logout
    current_user.update api_token: nil
    render json: { "message": "Logged out successfully." }
  end

  private

    def respond_with_command(auth_command)
      if auth_command.success?
        redirect_to "#{ENV['FRONT_END_PATH']}?#{auth_command.result.to_query}"
      else
        redirect_to ENV["FRONT_END_PATH"]
      end
    end
end
