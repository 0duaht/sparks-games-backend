class Category < ActiveRecord::Base
  has_many :votes
  validates :title, :description, :imageUrl, presence: true
end
