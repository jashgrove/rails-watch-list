require 'open-uri'
require 'json'

Movie.destroy_all

url = 'https://tmdb.lewagon.com/movie/top_rated'
movies_serialized = URI.open(url).read
movies_parsed = JSON.parse(movies_serialized)
movies = movies_parsed['results']

15.times do
  movies.each do |movie|
    Movie.create(title: movie['title'],
                 overview: movie['overview'],
                 rating: movie['vote_average'],
                 poster_url: movie['poster_path'])
  end
end
