class UserAuthentication
  prepend SimpleCommand
  attr_accessor :omniauth_payload

  def initialize(omniauth_payload)
    @omniauth_payload = omniauth_payload
  end

  def call
    if user
      token, _ = TokenProvider.encode(user_id: user.id)
      user.update api_token: token

      { "token" => token }
    end
  end

  private

    def user
      user = User.from_omniauth(omniauth_payload)
      return user if user
      errors[:message] = "Login Failed. Credentials Invalid."

      nil
    end
end
