class Song
  attr_accessor
  attr_reader :artist, :genre, :name

  @@count = 0
  @@artists = []
  @@genres_hash = {}
  genres_array = []

  def initialize(name, artist, genre)
    @name = name
    @@count += 1

    @artist = artist
    @@artists<< @artist

    @genre = genre
    genres_array << @genre

    if @@genres_hash.keys.include?(@genre)
      @@genres_hash[@genre] = @name
    else
      new_hash = {@genre => @name}
      @@genres_hash.merge(new_hash)
    end
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
