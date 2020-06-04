require_relative './song.rb'
require_relative './genre.rb'

class Artist
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    Song.all.map{|song| song.genre if song.artist == self}
  end
  
  def self.all
    @@all
  end

end