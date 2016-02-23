require 'rails_helper'
include RandomData

RSpec.describe Comment, type: :model do
  let(:topic) { create(:topic) }
  let(:user) { create(:user) }
  let(:post) { create(:post) }
  let(:comment) { Comment.create!(body: 'Comment Body', post: post, user: user)}
  describe "attributes" do

    it "should respond to body" do
      expect(comment).to respond_to(:body)
    end
  end

  describe "after create" do
    before do
      @another_comment = Comment.new(body: 'Comment Body', post: post, user: user)
    end

    it "sends an email to users who have favorited the post" do
      favorite = user.favorites.create(post: post)
      expect(FavoriteMailer).to receive(:new_comment).with(user, post, @another_comment).and_return(double(deliver_now:true))

      @another_comment.save
    end

    it "does not send emails to users who havent favoritd the post" do
      expect(FavoriteMailer).not_to receive(:new_comment)

      @another_comment.save
    end
  end
end
