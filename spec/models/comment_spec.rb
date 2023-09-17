require 'rails_helper'

describe Comment do

  describe "validations" do
    it { should validate_presence_of :body }
  end

  describe "assotiations" do
    it { should belong_to :user }
    it { should belong_to :commentable }
  end

  describe "#columns" do
    it "returns the comment(of post) body" do
      # arrange + act
      user = create :user
      post = create(:post, content: 'a' * 100, user: user)
      comment = create(:comment, body: 'aaa', commentable: post, user: user) 
      # assert
      expect(comment.body).to eq 'aaa'
    end

    it "returns the comment(of image) body" do
      # arrange + act
      user = create :user
      image = create(:image, url: 'url', user: user) 
      comment = create(:comment, body: 'bbb', commentable: image, user: user) 
      # assert
      expect(comment.body).to eq 'bbb'
    end
  end

end