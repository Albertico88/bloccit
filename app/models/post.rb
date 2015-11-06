# This is a Ruby class which represents the Post Model.
# This class will handle the logic and define the behavior for posts.

class Post < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :comments, dependent: :destroy
  # the has_many method allows a post to have many comments related to it.

# This will display posts in order by their created at date.
  default_scope { order('created_at DESC') }
# Scope will order results by title
  scope :ordered_by_title, -> { order('title DESC') }
# Scope will order results by time of creation
  scope :ordered_by_reverse_created_at, -> { order('created_at ASC')}

  validates :title, length: {minimum: 5}, presence: true
  validates :body, length: {minimum: 20}, presence: true
  validates :topic, presence: true
  validates :user, presence: true
  # validates the presence of title, body and topic with respective lengths
end
