module Concerns::Findable

  def self.find_by_name(name)
    Song.all.find do |song|
      song if song.name == name
    end
  end
end
