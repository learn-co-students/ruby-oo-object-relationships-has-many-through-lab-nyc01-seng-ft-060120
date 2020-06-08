# An artist has many genres through its songs and a genre has many artists through its songs.


        # - The `Song` class needs a class variable `@@all` that begins as an empty array.

        # - The `Song` class needs a class method `.all` that lists each song in the class
        #   variable.

# - A song should be initialized with a name, an artist, and a genre, and be saved
#   in the `@@all` array.

class Song

    attr_reader :name, :artist, :genre

    # class variable that contains each song instance
    @@all = []

    def initialize(name, artist, genre)
        @name   = name
        @artist = artist
        @genre  = genre
        # adds each song instance to all class variable
        @@all << self
    end

    def self.all
        @@all
    end

end # end of Song class