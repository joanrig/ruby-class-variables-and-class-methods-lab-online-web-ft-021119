class Song
  attr_reader :artist, :genre, :name

  #@@count = 0
  @@artists = []
  @@genres = []
  @@genres_and_songs={}

  def initialize(name, artist, genre)
    @name = name
    @@count += 1

    @artist = artist
    @@artists<< @artist

    @genre = genre
    @@genres << @genre

    if @@genres_and_songs.keys.include?(@genre)
      @@genres_and_songs[@genre]=name
    else
      @@genres_and_songs[:@genre]=name
    end

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
    @@genres.uniq
  end

  def self.genre_count
    @@genres_and_songs
    #binding.pry
  end


end
