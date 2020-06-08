require_relative './artist.rb'
require_relative './genre.rb'
require 'pry'

class Song
    attr_reader :name, :artist, :genre
    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end


    def self.all
        @@all
    end

end

pop = Genre.new("Pop")
hip_hop = Genre.new("Hip Hop")
rnb = Genre.new("RnB")

adele = Artist.new("Adele")
drake = Artist.new("Drake")
katy = Artist.new("Katy Perry")
seal = Artist.new("Seal")
britney = Artist.new("Britney Spears")

hello = Song.new("Hello",adele,rnb)
firework = Song.new("Firework",katy,pop)
hotline = Song.new("Hotline Bling",drake,hip_hop)
rose = Song.new("Kissed by a Rose",seal,rnb)
toxic = Song.new("Toxic",britney,pop)
roar = Song.new("Roar",katy,hip_hop)



# binding.pry


