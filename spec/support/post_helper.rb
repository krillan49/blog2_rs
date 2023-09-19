def create_post
  visit new_post_path
  fill_in :post_content, with: 'text ' * 25
  click_button 'Create post'
end