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
    @@all.each do |obj|
      if (obj.name == name)
        return obj
      end
    end
    self.new (name)
    self.save
  end
  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end
end
