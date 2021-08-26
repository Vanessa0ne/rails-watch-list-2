class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy # When you delete a list, you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).
  has_many :movies, through: :bookmarks
  has_many :reviews

  validates :name, presence: true, uniqueness: true
end
