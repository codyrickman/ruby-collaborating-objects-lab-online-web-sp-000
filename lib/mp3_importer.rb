class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
  end
  def files
    @files = []
    file_list = Dir.glob("#{@path}/*.mp3")
    file_list.each do |mp3|
      @files << File.basename(mp3)
    end
  end
  def import
    @files.each do |song|
      Song.new_by_filename(song)
    end
  end
end
