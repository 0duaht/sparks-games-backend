class CategoriesController < ApplicationController
  before_action :authenticate_token

  def index
    render json: Category.all, status: :ok
  end
end
