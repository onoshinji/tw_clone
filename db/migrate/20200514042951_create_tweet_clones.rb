class CreateTweetClones < ActiveRecord::Migration[5.2]
  def change
    create_table :tweet_clones do |t|
      t.text :content
    end
  end
end
