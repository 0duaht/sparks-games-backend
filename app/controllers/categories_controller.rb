class CategoriesController < ApplicationController
  before_action :authenticate_token

  def index
    render json: {categories: Category.all, users: User.pluck_to_hash([:name, :email])}, status: :ok
  end
end
