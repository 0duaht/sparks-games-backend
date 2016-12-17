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
    user = where("email LIKE :email", email: email_address).first_or_initialize
    user.name = auth.info.name
    user.email = auth.info.email
    user.avatar_url = auth.info.image
    user.save

    return user if user.valid? && user.matches_andela_email
  end

  def matches_andela_email
    email =~ /[.\w]+@andela.co[m]?\z/
  end

  def as_json(options={})
    super(only: [:name, :email, :avatar_url])
  end

  def self.hash_by_email
    result = {}
    self.all.each { |user| result[user.email] = user }
    result
  end
end
