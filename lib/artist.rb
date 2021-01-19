class Artist
attr_accessor :name, :artist, :genre

@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  ### song association stuff
  def songs
    @songs
  end

  def add_song
    if song.artist == nil
      song.self = artist
  end
end
