# This is a Ruby class which represents the Post Model.
# This class will handle the logic and define the behavior for posts.

class Post < ActiveRecord::Base
  # create a relation to the comment class
  has_many :comments
  # the has_many method allows a post to have many comments related to it.
  def censored_title
    (id % 5 == 0)  ? "CENSORED" : title
  end
  # Puts "Censored" on title's every 5th post"

end
