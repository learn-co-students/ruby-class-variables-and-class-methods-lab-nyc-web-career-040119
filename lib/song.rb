require "pry"

class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
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

  def self.genre_count
    # {"pop" => 1, "rap" => 2}
    # question: how do I group_by and count ?
    @@genres.each_with_object(Hash.new(0)) do |genre, hash|
      hash[genre] += 1
      hash
    end
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) do |artist, hash|
      hash[artist] += 1
      hash
    end
  end

end
