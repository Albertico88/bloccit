require 'rails_helper'
include RandomData

RSpec.describe Favorite, type: :model do
  let(:topic) { build(:topic) }
  let(:user) { build(:user) }
  let(:post) { build(:post) }
  let(:favorite) { Favorite.create!(post: post, user: user) }

  it { should belong_to(:post) }
  it { should belong_to(:user) }

end
