class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: true
end

# name cannot be blank (FAILED - 8)
#   name is unique (FAILED - 9)
#   has many bookmarks (FAILED - 10)
#   has many movies (FAILED - 11)
#   should destroy chil
