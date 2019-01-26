class Song
  attr_accessor :name, :artist
  def initialize (name)
    @name = name
  end
  def self.new_by_filename(file_name)
    parsed = file_name.split(" - ")
    new_song = self.new(parsed[1])
    new_song.artist = parsed[0]
  end
  def artist=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    return artist
  end
end
