class VotesController
  before_action :authenticate_token

  def new
    vote = Votes.new(vote_params.merge({ user_id: current_user.id }))
    render json: vote
  end

  def vote_params
    params.permit(:category_id, :email)
  end
end