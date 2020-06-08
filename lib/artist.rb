# An artist has many genres through its songs and a genre has many artists through its songs.


        # - The `Artist` class needs a class variable `@@all` that begins as an empty array

        # - The `Artist` class needs a class method `.all` that lists each artist in the
        # class variable

        # - An artist is initialized with a name and is saved in the `@@all` array.

        # - The `Artist` class needs an instance method, `#new_song`, that takes in an
        #   argument of a name and genre creates a new song. That song should know that it
        #   belongs to the artist.

        # - The `Artist` class needs an instance method, `#songs`, that iterates through all
        #   songs and finds the songs that belong to that artist. Try using `select` to
        #   achieve this.

# - The `Artist` class needs an instance method, `#genres` that iterates over that
#   artist's songs and collects the genre of each song.

# Artists have Songs. Through an Artist's songs and Artist has a Genre.
class Artist
    attr_reader :name
    
    # stores each Artist instance
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    # self is the Artist class and all reference the class method that stores each instance of Artist
    def self.all
        # return the all array containing each Artist instance
        @@all
    end

    # takes in an argument of a name and genre creates a new song. That song knows that it belongs to the artist.
    def new_song(name, genre)
        # (name, artist, genre) <-- copid from Song class // self is the artist instance in this case. The new_song knows that it belongs to self.
        Song.new(name, self, genre)
    end

    # Iterates through all songs and finds the songs that belong to that artist.
    def songs
        Song.all.select { |song| song.artist == self}
    end

    # - The `Artist` class needs an instance method, `#genres` that iterates over that
    #   artist's songs and collects the genre of each song.
    def genres
        songs.map {|song| song.genre}
    end


end # end of Artist class