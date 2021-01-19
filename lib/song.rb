class Song
attr_accessor :name, :artist, :genre

@@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end
end
