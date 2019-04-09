require 'pry'

class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  s1 = Song.new("abc", "A", "pop")
  s2 = Song.new("def", "B", "pop")
  s3 = Song.new("ghi", "C", "rap")

  def self.genre_count
    genre_count = {}
    @@genres.uniq.each do |genre|
      genre_count[genre] = @@genres.count(genre)
      # binding.pry
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.uniq.each do |artist|
      artist_count[artist] = @@artists.count(artist)
    end
    artist_count
  end
end
