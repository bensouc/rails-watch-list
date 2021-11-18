class Movie < ApplicationRecord
  # has_many :bookmarks, dependent: :destroy
  has_many :bookmarks
  has_many :lists, through: :bookmarks


  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end

# http://tmdb.lewagon.com/movie/top_rated?api_key=%3Cyour_api_key%3E
# image url : https://image.tmdb.org/t/p/w500 /2CAL2433ZeIihfX1Hb2139CX0pW.jpg
