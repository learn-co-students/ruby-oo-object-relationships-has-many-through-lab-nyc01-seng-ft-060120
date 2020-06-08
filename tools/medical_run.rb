require 'pry'
# `Doctor`/`Appointment`/`Patient` domain model.
require_relative '/Users/bearinawolfpack/Documents/FlatIron/SE/Development/code/Mod1/has_many_through_relations/lib/appointment.rb'
require_relative '/Users/bearinawolfpack/Documents/FlatIron/SE/Development/code/Mod1/has_many_through_relations/lib/doctor.rb'
require_relative '/Users/bearinawolfpack/Documents/FlatIron/SE/Development/code/Mod1/has_many_through_relations/lib/patient.rb'

doogie     = Doctor.new("Doogie Howser")
doctor_who = Doctor.new('The Doctor')

ferris       = Patient.new("Ferris Bueller")
hevydevy     = Patient.new("Hevy Devy")
captain_jack = Patient.new("Cpt. Jack")

new_appointment = Appointment.new('January 1st, 1989', ferris, doogie)
appointment     = Appointment.new('Friday, January 32nd', hevydevy, doctor_who)
bad_wolf     = Appointment.new('June 11, 2005', captain_jack, doctor_who)

binding.pry