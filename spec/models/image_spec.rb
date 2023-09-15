require 'rails_helper'

describe Image do

  describe "validations" do
    it { should validate_presence_of :url }
  end

  describe "assotiations" do
    it { should belong_to :user }
    it { should have_many :comments}
  end

end