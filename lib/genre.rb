class Genre

  attr_accessor :name, :songs
  @@all = []

  def initialize(name="")
    @name = name
    # @song = songs
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self end
  end

  def artists
    songs.collect do |collection|
      collection.artist end
  end

end
