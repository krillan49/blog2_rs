class Comment < ApplicationRecord
  belongs_to :user, optional: true, required: true
  belongs_to :commentable, polymorphic: true

  validates :body, presence: true
end
