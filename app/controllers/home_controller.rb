class HomeController < ApplicationController
  def index
    @contents = (Post.all + Image.all).sort_by{|content| content.created_at}.reverse
  end
end
