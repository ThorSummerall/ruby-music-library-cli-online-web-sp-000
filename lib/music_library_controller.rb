class MusicLibraryController
  attr_accessor :path

  def initialize(path = './db/mp3s')
    importer = MusicImporter.new(path)
    importer.import
  end

  def call
  input = ''

    while input != 'exit'
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"

      input = gets.chomp
    end
  end

  def list_songs
    x = Song.all.sort_by{ |song| song.name}
    x.each_with_index do |song, i|
      i += 1
      puts "#{i}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
    end
    x
  end

  def list_artists
    x = Artist.all.sort_by{ |artist| artist.name}
    x.each_with_index do |artist, i|
      i += 1
      puts "#{i}. #{artist.name}"
    end
    x
  end

  def list_genres
    x = Genre.all.sort_by{ |genre| genre.name}
    x.each_with_index do |genre, i|
      i += 1
      puts "#{i}. #{genre.name}"
    end
    x
  end
end
