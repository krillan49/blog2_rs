require "rails_helper"

feature "Create image" do

  before(:each) do
    sign_up
  end

  scenario "user visit new image page" do
    visit new_image_path
    expect(page).to have_content I18n.t('images.new.title')
  end

  scenario "user create new image" do
    create_image
    expect(page).to have_content I18n.t('images.show.comment_title')
  end

end