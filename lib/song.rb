class Song
  attr_reader :artist, :genre, :name

  #@@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @@count += 1

    @artist = artist
    @@artists<< @artist

    @genre = genre
    @@genres << @genre

    # if @@genres_hash.keys.include?(@genre)
    #   @@genres_hash[@genre] = @name
    # else
    #   @@genres_hash<< {:@genre => @name)
    # end
  end


  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.keys.uniq
  end

  def self.genre_count
    @@genres_hash
    #binding.pry
  end


end
