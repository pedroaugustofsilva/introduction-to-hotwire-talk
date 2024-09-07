class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  normalizes :username, with: ->(username) { username.downcase.gsub(/\s+/, "") }
end
