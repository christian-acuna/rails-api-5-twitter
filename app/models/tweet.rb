class Tweet < ApplicationRecord
  belongs_to :author, class_name: "User"

  validates :user, presence: true
  validates :body, presence: true
  has_many :hashtag_tweets
  has_many :hashtags, through: :hashtag_tweets
end
