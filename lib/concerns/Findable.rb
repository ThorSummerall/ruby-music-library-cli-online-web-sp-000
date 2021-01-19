module Concerns::Findable

  def find_by_name(name)
    Self.all.detect{ |song| song.name == name }
  end
end
