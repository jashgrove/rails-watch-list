class Bookmark < ApplicationRecord
  belongs_to :movie, dependent: :destroy
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }, presence: true
  validates :list_id, presence: true
end
