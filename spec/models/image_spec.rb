require 'rails_helper'

describe Image do

  describe "validations" do
    it { should validate_presence_of :url }
  end

  describe "assotiations" do
    it { should belong_to :user }
    it { should have_many :comments}
  end

  describe "#columns" do
    it "returns the image url" do
      user = create :user
      # arrange + act
      image = create(:image, url: 'url', user: user) 
      # assert
      expect(image.url).to eq 'url'
    end
  end

end