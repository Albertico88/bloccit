class FavoriteMailer < ApplicationMailer
  default from: "alberto.grau.margarida@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@calm-coast-2466.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@calm-coast-2466.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@calm-coast-2466.herokuapp.com>"


     @user = user
     @post = post
     @comment = comment

     mail(to: user.email, subject: "New comment on #{post.title}")
   end
end
