# A Doctor has many Patients through its Appointments and a Patient has many Doctors through its Appointments.


        # - The `Appointment` class needs a class variable `@@all` that begins as an empty array.


        # - The `Appointment` class needs a class method `.all` that lists each `Appointment`
        #   in the class variable.


        # - An `Appointment` should be initialized with a date (as a string, like `"Monday, August 1st"`), a patient, and a doctor. The `Appointment` should be saved in the `@@all` array.


class Appointment
    
    attr_reader :date, :patient, :doctor
    # class variable containing each instantiate appointment
    @@all = []
    
    def initialize(date, patient, doctor)
        @date    = date
        @patient = patient
        @doctor  = doctor
        @@all << self
    end
    # returns each instantiated Appointment
    def self.all
        @@all
    end
end # end of Appointment class