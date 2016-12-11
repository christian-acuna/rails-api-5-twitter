class Hashtag < ApplicationRecord
  has_many :hashtag_tweets
  has_many :tweets, :through :hashtag_tweets

  validates :name, presence: true
end
