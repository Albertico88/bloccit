require 'rails_helper'
include RandomData

RSpec.describe Post, type: :model do

  #  we create a parent topic for post
  let(:topic) {Topic.create!(name: "New Post Title", description: "New Post Body")}

# we associate post with topic with topic.posts.create!. This is a chained method call which creates a post for a given topic.
  let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph)}

  # it { should belong_to(:topic)}
  # it { should have_many(:comments)}

  # --> shoulda-matchers NOT WORKING PROPERLY <--

  # it { should validate_presence_of(:title) }
  # it { should validate_presence_of(:body) }
  # it { should validate_presence_of(:topic) }
  # it { should validate_length_of(:title).is_at_least(5) }
  # it { should validate_length_of(:body).is_at_least(20) }

  context "attributes" do
    it "should respond to title" do
      expect(post).to respond_to(:title)
    end

    it "should respond to body" do
      expect(post).to respond_to(:body)
    end
  end
end
