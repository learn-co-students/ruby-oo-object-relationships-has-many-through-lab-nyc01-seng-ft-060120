require_relative './artist.rb'
require_relative './song.rb'

class Genre
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    Song.all.map{|song| song.artist if song.genre==self }
  end

  def self.all
    @@all
  end
  
end