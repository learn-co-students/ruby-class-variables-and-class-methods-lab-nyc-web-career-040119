require "pry"



class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}
  attr_reader :name,:artist,:genre

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre

    @@artist_count[@artist] = @@artists.select do |artist|
      artist == @artist
    end.length



    @@genre_count[@genre] = @@genres.select do |genre|
      genre == @genre
    end.length
    #binding.pry
  end

#binding.pry
  # spears1 = Song.new("song1","artist1","genre1")
  # spears2 = Song.new("song2","artist2","genre2")
  # spears3 = Song.new("song3","artist3","genre3")


  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

  #binding.pry
end

#binding.pry