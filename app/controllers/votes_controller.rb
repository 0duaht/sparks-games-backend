class VotesController < ApplicationController
  before_action :authenticate_token

  def new
    # vote = Votes.new(vote_params.merge({ user_id: current_user.id }))
    # render json: vote
  end

  def index
    render json: {votes: Vote.top_votes}, status: :ok
  end

  def create
    begin
      vote_params[:selectedCategories].each do |category_id, email|
        v = Vote.where(user_id: current_user.id, category_id: category_id).first_or_initialize
        v.email = email
        v.save
      end
      render json: {response: 'done'}, status: :ok
    rescue
      render json: {error: 'done'}, status: :unprocessable_entity
    end
  end

  private

  def vote_params
    params.require(:votes).permit(selectedCategories: permit_recursive_params(params[:votes][:selectedCategories]))
  end

  def permit_recursive_params(params)
    (params.try(:to_unsafe_h) || params).map do |key, value|
      if value.is_a?(Array)
        value = value.first
        if value.is_a?(Array) || value.is_a?(Hash)
          { key => [ permit_recursive_params(value) ] }
        else
          { key => [] }
        end
      elsif value.is_a?(Hash)
        { key => permit_recursive_params(value) }
      else
        key
      end
    end
  end
end
