class CategoriesController < ApplicationController
  before_action :authenticate_token

  def index
    render json: {categories: Category.all, users: User.all}, status: :ok
  end
end
