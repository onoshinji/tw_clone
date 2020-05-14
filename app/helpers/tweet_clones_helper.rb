module TweetClonesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_tweet_clones_path
    elsif action_name == 'edit'
      tweet_clone_path
    end
  end
end
