class MusicImporter
  attr_accessor :path, :song, :artist, :genre, :musiclibrarycontroller

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select! {|entry| entry.end_with?(".mp3")}
  end

  def self.import

  end
end
