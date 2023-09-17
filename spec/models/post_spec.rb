require 'rails_helper'

describe Post do

  describe "validations" do
    it { should validate_presence_of :content }
    it { should validate_length_of(:content).is_at_least(100).is_at_most(5000) }
  end

  describe "assotiations" do
    it { should belong_to :user }
    it { should have_many :comments}
  end

  describe "#columns" do
    it "returns the post content" do
      user = create :user
      # arrange + act
      post = create(:post, content: 'a' * 100, user: user) 
      # assert
      expect(post.content).to eq 'a' * 100
    end
  end

end