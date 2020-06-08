class Artist

attr_reader :name, :genre
@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

   
    def new_song (name, genre)
        Song.new(name,self,genre)
    end

    
    def songs 
        Song.all.select{|songs_obj| songs_obj.artist == self} 
     
    end


    def genres
        self.songs.map{|song_obj| song_obj.genre}
    end

end



