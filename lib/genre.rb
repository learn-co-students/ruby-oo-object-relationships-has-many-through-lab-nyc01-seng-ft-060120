class Genre
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.map{|song| song}
  end
  
  def artists
    Song.all.map{|song| song.artist}
  end
  def self.all
    @@all
  end
end