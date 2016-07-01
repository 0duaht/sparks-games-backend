class CategoriesController < ApplicationController
  before_action :authenticate_token

  def index
    render json: Categories.all
  end
end