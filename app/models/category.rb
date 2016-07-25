class Category < ActiveRecord::Base
  has_many :votes
  validates :title, :short_description, :imageUrl, presence: true

  def as_json(options={})
    super(only: [:id, :title, :short_description, :imageUrl])
  end
end
