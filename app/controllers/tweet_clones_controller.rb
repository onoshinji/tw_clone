class TweetClonesController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  def index
    @tweetposts = TweetClone.all
  end
  def new
    @tweet_clone = TweetClone.new
  end
  def create
    @tweet_clone = TweetClone.new(tweet_params)
    if params[:back]
      render :new
    else
      if @tweet_clone.save
        redirect_to tweet_clones_path, notice: "投稿を作成しました"
      else
        render :new
      end
    end
  end
  def show
  end
  def edit
  end
  def update
    if @tweet_clone.update(tweet_params)
      redirect_to tweet_clone_path, notice: "投稿を編集しました"
    else
      render :edit
    end
  end
  def destroy
    @tweet_clone.destroy
    redirect_to tweet_clones_path, notice: "投稿をを削除しました"
  end
  def confirm
    @tweet_clone = TweetClone.new(tweet_params)
    render :new if @tweet_clone.invalid?  #後置if文によるバリデーション設定
  end
  private
  def tweet_params
    params.require(:tweet_clone).permit(:content) #ストロングパラメータにし、さらにprivateメソッド配下にする
  end
  #idをキーとして値を取得する共通メソッドを定義する
  def set_tweet
    @tweet_clone = TweetClone.find(params[:id])
  end
end
