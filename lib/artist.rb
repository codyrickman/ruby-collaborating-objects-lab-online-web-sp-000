class Artist
  @@all = []
  attr_accessor :name, :songs
  def initialize (name)
    @songs = []
    @name = name
  end
  def add_song(song)
    @songs << song
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def self.find_or_create_by_name(name)
    result = @@all.select {|obj| obj.name == name}
    if (result != nil)
      return result
    else
      return self.new(name)

    end

  end
  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end
end
