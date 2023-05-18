class Comment < ApplicationRecord
  validates :contents, length: {maximum: 300}, presence: true

  belongs_to :post
  belongs_to :user
end
