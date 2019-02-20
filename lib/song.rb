require 'pry'

class Song
  attr_reader :artist, :genre, :name

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @@count += 1

    @artist = artist
    @@artists<< @artist

    @genre = genre
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
    genre_count = {}
    #@@genres = ["pop", "rap", "rock", "rap", "pop"]
    #=> {pop => 2, rap => 2, rock => 1}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
    #binding.pry
  end

  def self.artist_count
    artist_count = {}
    #@@artists = ["Beatles", "Jay-Z", "Grateful Dead", "Jay=Z"]
    #=> {"Jay-Z" => 2, "Beatles"=> 1, "Grateful Dead" => 1}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
    #binding.pry
  end


end
