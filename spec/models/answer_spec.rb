require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) {Question.create!(title: "New Question Title", body: "New Question Body", resolved: "Question Resolved")}
  let(:answer) {Answer.create!(body: "Answer Body")}

  describe "attributes" do
    it "it should respond to answer" do
      expect(answer).to respond_to(:body)
    end
  end
end
