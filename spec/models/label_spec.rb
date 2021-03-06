require 'rails_helper'
include RandomData

RSpec.describe Label, type: :model do
  let(:topic) { create(:topic) }
  let(:user) { create(:user) }
  let(:post) { create(:post) }
  let(:label) { Label.create!(name: 'Label') }

  it { should have_many :labelings }
  it { should have_many(:topics).through(:labelings) }
  it { should have_many(:posts).through(:labelings) }

  describe "labelings" do
    it "allows the same label to be associated with a different topic and post" do
      topic.labels << label
      post.labels << label

      topic_label = topic.labels[0]
      post_label = post.labels[0]
# #11
      expect(topic_label).to eql(post_label)
    end
  end
end
