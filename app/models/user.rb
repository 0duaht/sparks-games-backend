class User < ActiveRecord::Base
  has_many :votes
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  def get_error
    all_errors = errors.full_messages
    all_errors ? all_errors[0] : "Invalid Entry. Please try again."
  end

  def self.from_omniauth(auth)
    email_address = auth.info.email
    user = where("email LIKE :email", email: email_address).first_or_create do |u|
      u.name = auth.info.name
      u.email = auth.info.email
    end

    return user if user.valid? && user.matches_andela_email
  end

  def matches_andela_email
    email =~ /[.\w]+@andela.co[m]?\z/
  end
end
