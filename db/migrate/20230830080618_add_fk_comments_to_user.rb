class AddFkCommentsToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :user
  end
end
