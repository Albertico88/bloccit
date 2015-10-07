require 'rails_helper'
include RandomData

RSpec.describe SponsoredPost, type: :model do
  let(:sponsoredpost) { SponsoredPost.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph)}

  describe "attributes" do
    it "should respond to title" do
      expect(:sponsoredpost).to respond_to(:title)
    end

    it "should respond to body" do
      expect(:sponsoredpost).to respond_to(:body)
    end

    it "should respond to price" do
      expect(:sponsoredpost).to respond_to(:price)
    end

    it "should respond to topic" do
      expect(:sponsoredpost).to respond_to(:topic)
    end
  end
end
