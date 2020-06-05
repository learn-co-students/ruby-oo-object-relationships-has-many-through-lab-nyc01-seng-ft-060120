class Genre
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select { |tune|
            tune.genre == self
        }
    end

    def artists
        songs = self.songs

        songs.map { |song|
            song.artist
        }
    end

    def self.all
        @@all
    end

end
