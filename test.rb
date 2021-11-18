
require 'json'
require 'open-uri'

url = 'http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>'

movie_serialized = URI.open(url).read
movie = JSON.parse(movie_serialized)["results"]

p movie.first['poster_path']
p movie.first['title']
p movie.first['overview']
p movie.first['vote_average']
