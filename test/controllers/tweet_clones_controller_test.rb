require 'test_helper'

class TweetClonesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tweet_clones_index_url
    assert_response :success
  end

end
