require 'rails_helper'

describe Comment do

  describe "validations" do
    it { should validate_presence_of :body }
  end

  describe "assotiations" do
    # it { should belong_to :user }
    it { should belong_to :commentable }
  end

end