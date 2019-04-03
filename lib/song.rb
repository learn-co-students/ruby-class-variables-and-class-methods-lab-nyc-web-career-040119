class Song

  attr_reader :name, :artist, :genre, :count

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

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genr|
      if !genre_hash[genr]
        genre_hash[genr] = @@genres.count(genr)
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |art|
      if !artist_hash[art]
        artist_hash[art] = @@artists.count(art)
      end
    end
    artist_hash
  end

end
