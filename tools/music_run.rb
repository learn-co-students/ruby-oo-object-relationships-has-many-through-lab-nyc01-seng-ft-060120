require 'pry'
# `Artist`/`Song`/`Genre` domain.
require_relative '/Users/bearinawolfpack/Documents/FlatIron/SE/Development/code/Mod1/has_many_through_relations/lib/artist.rb'
require_relative '/Users/bearinawolfpack/Documents/FlatIron/SE/Development/code/Mod1/has_many_through_relations/lib/genre.rb'
require_relative '/Users/bearinawolfpack/Documents/FlatIron/SE/Development/code/Mod1/has_many_through_relations/lib/song.rb'

madonna = Artist.new("Madonna")
pop = Genre.new("pop")
into_the_groove = Song.new("Into the Groove", madonna, pop)

brandnew = Artist.new("Brand New")
rock = Genre.new("Rock")
out_of_mana = Song.new("Out Of Mana", brandnew, rock)
at_the_bottom = Song.new("At the Bottom", brandnew, rock)

binding.pry