# This is a Ruby class which represents the Post Model.
# This class will handle the logic and define the behavior for posts.

class Post < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy
  # we add the votes association to Post. This relates the models and allows us to call post.votes. We also add dependent: :destroy to ensure that votes are destroyed when their parent post is deleted.
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings


#This will display posts in order by their created at date.
  default_scope { order('created_at DESC') }

  validates :title, length: {minimum: 5}, presence: true
  validates :body, length: {minimum: 20}, presence: true
  validates :topic, presence: true
  validates :user, presence: true
  # validates the presence of title, body and topic with respective lengths

  def up_votes
    votes.where(value: 1).count
  end

  def down_votes
    votes.where(value: -1).count
  end

  def points
    votes.sum(:value)
  end
end
