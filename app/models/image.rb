class Image < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments, as: :commentable

  validates :url, presence: true
end
