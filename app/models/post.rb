# This is a Ruby class which represents the Post Model.
# This class will handle the logic and define the behavior for posts.

class Post < ActiveRecord::Base
  belongs_to :topic
  has_many :comments, dependent: :destroy
  # the has_many method allows a post to have many comments related to it.

  validates :title, length: {minimum: 5}, presence: true
  validates :body, length: {minimum: 20}, presence: true
  validates :topic, presence: true
  # validates the presence of title, body and topic with respective lengths
end
