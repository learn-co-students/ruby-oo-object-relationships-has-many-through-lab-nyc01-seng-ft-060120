require_relative './song.rb'


class Artist
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
end