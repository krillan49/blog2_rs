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

end