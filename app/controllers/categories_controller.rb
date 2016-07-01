class CategoriesController
  before_action :authenticate_token

  def index
    render json: Categories.all
  end
end