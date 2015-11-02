module UsersHelper
  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "<img src='http://gravatar.com/avatar/#{gravatar_id}.png?s=32' />".html_safe
  end
end
