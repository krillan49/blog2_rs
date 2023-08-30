class AddFkPostsAndImagesToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :user
    add_reference :images, :user
  end
end
