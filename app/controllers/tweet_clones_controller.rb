class TweetClonesController < ApplicationController
  def index
    @tweetposts = TweetClone.all
  end
  def new
    @tweet_clone = TweetClone.new
  end
  def create
    TweetClone.create(tweet_params)
    redirect_to new_tweet_clone_path
  end
  def show
    @tweet_clone = TweetClone.find(params[:id])
  end
  private
  def tweet_params
    params.require(:tweet_clone).permit(:content) #ストロングパラメータにし、さらにprivateメソッド配下にする
  end
end
