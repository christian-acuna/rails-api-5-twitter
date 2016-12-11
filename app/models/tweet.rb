class Tweet < ApplicationRecord
  belongs_to :author, class_name: "User"

  validates :author, presence: true
  validates :content, presence: true
  has_many :hashtag_tweets
  has_many :hashtags, through: :hashtag_tweets

  def self.ordered_json
    order("created_at DESC").limit(50)
  end
end
