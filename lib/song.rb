require 'pry'

class Song
attr_accessor :name, :artist,:genre
@@count = 0
@@artists = []
@@genres = []
  def self.count
    @@count
  end

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    # binding.pry
    self.genres.each do |genre|
      genre_count[genre] = @@genres.count(genre)
    end
    # binding.pry
    genre_count
  end

  def self.artist_count
    artist_count = {}
    self.artists.each do |artist|
      artist_count[artist]  = @@artists.count(artist)
    end
    artist_count
  end

end

# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")


#binding.pry
