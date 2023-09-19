require "rails_helper"

feature "Create comments" do

  before(:each) do
    sign_up
  end

  scenario "user create comment to post" do
    create_post
    fill_in :comment_body, with: 'Post comment'
    click_button 'Create comment'
    expect(page).to have_content 'Post comment'
  end

  scenario "user create comment to image" do
    create_image
    fill_in :comment_body, with: 'Image comment'
    click_button 'Create comment'
    expect(page).to have_content 'Image comment'
  end

end