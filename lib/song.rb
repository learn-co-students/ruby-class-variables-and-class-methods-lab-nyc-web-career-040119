require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@artists << @artist
    @@genres << @genre

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

  def self.genre_count
    counts = Hash.new(0)
    @@genres.map do |type|
    counts[type] += 1
    end
    counts
  end

  def self.artist_count
    art_hash = Hash.new(0)
    @@artists.each do |type|
    art_hash[type] += 1
    end
    art_hash
  end

end
