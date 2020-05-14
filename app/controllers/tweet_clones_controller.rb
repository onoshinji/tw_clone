class TweetClonesController < ApplicationController
  def index
    @tweetposts = TweetClone.all
  end

  def new
    @tweet_clone = TweetClone.new
  end

  def create
    @tweet_clone = TweetClone.new(tweet_params)
    if @tweet_clone.save
    redirect_to tweet_clones_path, notice: "投稿を作成しました"
    else
      render :new
    end
  end

  def show
    @tweet_clone = TweetClone.find(params[:id])
  end
  
  private
  def tweet_params
    params.require(:tweet_clone).permit(:content) #ストロングパラメータにし、さらにprivateメソッド配下にする
  end
end
