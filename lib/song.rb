require 'pry'

class Song

  attr_accessor :name, :artist, :genre, :artists, :genres, :names

  @@count = 0
  @@artists = []
  @@genres = []
  @@names = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    gen_hash = Hash.new(0)
    @@genres.each do |songs|
      gen_hash[songs] += 1
    end
    gen_hash
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each do |songs|
      artist_hash[songs] += 1
    end
    artist_hash
  end

end
