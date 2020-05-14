class TweetClonesController < ApplicationController
  def index
  end
  def new
    @tweet_clone = TweetClone.new
  end
  def create
    TweetClone.create(tweet_params)
    redirect_to new_tweet_clone_path
  end
  private
  def tweet_params
    params.require(:tweet_clone).permit(:content) #ストロングパラメータにし、さらにprivateメソッド配下にする
  end
end
