class Post < ApplicationRecord
  belongs_to :user, optional: true, required: true
  has_many :comments, as: :commentable

  validates :content, presence: true, length: { in: 100..5000 }
end
