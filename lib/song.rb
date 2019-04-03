require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  attr_reader :name, :artist, :genre

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.inject({}) do |hash, genre|
      hash[genre] ? hash[genre] += 1 : hash[genre] = 1

      hash
    end
  end

  def self.artist_count
    @@artists.inject({}) do |hash, artist|
      hash[artist] ? hash[artist] += 1 : hash[artist] = 1

      hash
    end
  end
end
