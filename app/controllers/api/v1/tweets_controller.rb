class Api::V1::TweetsController < ApiController
  before_action :set_tweet, only: [:show, :update, :destroy]
  def index
    tweets = Tweet.select(:id, :content)
    render json: tweets
  end
  
  def show
    render json: @tweet
  end

  def create
    tweet = Tweet.new(tweet_params)
    if tweet.save
      render json: tweet, status: :created
    else
      render json: { errors: tweet.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @tweet.update!(tweet_params)
      head :no_content
    else
      render json: { errors: tweet.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @tweet.destroy!
    head :no_content
  end

  private
  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:content)
  end
end
