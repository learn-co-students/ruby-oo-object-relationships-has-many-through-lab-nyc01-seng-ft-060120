require 'pry'
class Genre
    
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    
    def songs
        Song.all.select{|song_obj| song_obj.genre == self} 
    end

    
    def artists
        self.songs.map{|song_obj| song_obj.artist}
    end


end
# binding.pry
