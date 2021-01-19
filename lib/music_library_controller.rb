class MusicLibraryController
  attr_accessor :path

  def initialize(path = ".db/mp3s/")
    importer = MusicIMporter.new(path)
    import.import
  end
end
