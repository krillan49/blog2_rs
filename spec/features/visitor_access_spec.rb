require "rails_helper"

feature "Pages access" do

  scenario "access to home#index/root page" do
    visit root_path
    expect(page).to have_content I18n.t('home.index.title')
  end

  scenario "access to posts#index page" do
    visit posts_path
    expect(page).to have_content I18n.t('posts.index.title')
  end

  scenario "no access to posts#new page && redirect to users/sign_in page" do
    visit new_post_path
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end

  # scenario "access to posts#show page" do
  #   # post = Post.all.last
  #   # visit post_path('12')
  #   visit '/posts/12'
  #   expect(page).to have_content I18n.t('posts.show.comment_title')
  # end

  scenario "access to images#index page" do
    visit images_path
    expect(page).to have_content I18n.t('images.index.title')
  end

  scenario "no access to images#new page && redirect to users/sign_in page" do
    visit new_image_path
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end

  # scenario "access to images#show page" do
  #   # image = Image.all.last
  #   # visit image_path('8')
  #   visit '/images/12'
  #   expect(page).to have_content I18n.t('images.show.comment_title')
  # end

end