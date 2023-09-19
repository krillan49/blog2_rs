require "rails_helper"

feature "Create post" do

  before(:each) do
    sign_up
  end

  scenario "user visit new post page" do
    visit new_post_path
    expect(page).to have_content I18n.t('posts.new.title')
  end

  scenario "user create new post" do
    create_post
    expect(page).to have_content I18n.t('posts.show.comment_title')
  end

end