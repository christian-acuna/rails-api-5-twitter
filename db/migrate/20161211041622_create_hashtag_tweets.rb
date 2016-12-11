class CreateHashtagTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :hashtag_tweets do |t|
      t.integer :tweet_id, :hashtag_id

      t.timestamps
    end
  end
end
