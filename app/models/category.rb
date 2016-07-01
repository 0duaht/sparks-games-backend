class Category < ActiveRecord::Base
  has_many :votes
  validates :title, :description, :imageUrl, presence: true

  def as_json
    super(only: [:title, :short_description, :long_description, :imageUrl])
  end
end
