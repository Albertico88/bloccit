module PostsHelper
  def user_is_authorized_for_posts?(post)
    current_user && (current_user == post.user || current_user.admin?)
  end

  def render_post_byline_for(post)
    output = "<small>"
    output += "submitted #{time_ago_in_words(post.created_at)} ago by #{post.user.name } </br> #{post.comments.count} Comments"
    output += "</small>"
    output.html_safe
  end

  def render_posts(posts)
    if posts.any?
      render posts
    else
      "you don't have any posts"
    end
  end
end
