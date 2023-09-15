require 'rails_helper'

describe User do

  describe "assotiations" do
    it { should have_many :comments}
    it { should have_many :posts}
    it { should have_many :images}
  end

end