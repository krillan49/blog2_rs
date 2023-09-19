def create_image
  visit new_image_path
  fill_in :image_url, with: 'https://kartinkof.club/uploads/posts/2023-05/1683308852_kartinkof-club-p-kartinki-dragonboll-49.jpg'
  click_button 'Create image'
end