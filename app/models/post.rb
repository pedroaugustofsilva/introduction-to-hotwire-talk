class Post < ApplicationRecord
  validates :content, presence: true
  belongs_to :user

  after_create_commit -> {
    broadcast_prepend_to :posts
  }

  after_update_commit -> {
    broadcast_update_to :posts
  }
end
