require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@all = []
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@all << self
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.all
    @@all
  end

  def self.genres
    g = @@genres
    genres = g.uniq
  end

  def self.artists
    a = @@artists
    artists = a.uniq
  end

  def self.genre_count
    c = @@genres
    genre_count = c.tally
  end

  def self.artist_count
    a = @@artists
    artists_count = a.tally
  end

  kashmir = Song.new("Kashmir", "Led Zeppelin", "Rock")
  stairway = Song.new("Stairway to Heaven", "Led Zeppelin", "Rock")
  hard_knock_life = Song.new("Hard Knock Life", "Jay-Z", "Rap")
  u_dont_know = Song.new("U Don't Know", "Jay-Z", "Rap")
  yellow = Song.new("Yellow", "Coldplay", "Alternative")
  fix_you = Song.new("Fix You", "Coldplay", "Alternative")


  binding.pry
end