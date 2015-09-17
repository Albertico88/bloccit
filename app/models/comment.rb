class Comment < ActiveRecord::Base
  belongs_to :post
  # The belongs_to :post generates a post method for each comment
  # giving us the ability to call .post on an instanceof Comment and
  # retrieve the associated post.
end
