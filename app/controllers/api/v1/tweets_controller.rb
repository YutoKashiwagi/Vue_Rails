class Api::V1::TweetsController < ApiController
  def index
    tweets = Tweet.select(:id, :content)
    render json: tweets
  end
  
  def show
    @tweet = Tweet.find(params[:id])
    render json: @tweet
  end
end
