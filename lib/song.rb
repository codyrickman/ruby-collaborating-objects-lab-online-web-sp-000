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
  def artist=(artist_name)
    @artist = self.artist_name(artist_name)
    @artist
  end
  def artist_name=(name)
    new_artist = Artist.find_or_create_by_name(name)
    new_artist.add_song
    return new_artist
  end
end
