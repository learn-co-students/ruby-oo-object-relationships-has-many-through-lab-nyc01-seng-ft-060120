# A Doctor has many Patients through its Appointments and a Patient has many Doctors through its Appointments.


        # - The `Patient` class needs a class variable `@@all` that begins as an empty array.

        # - The `Patient` class needs a class method `.all` that lists each patient in the
        #   class variable.

        # - A patient is instantiated with a name and be saved in the `@@all` array.

        # - The `Patient` class needs an instance method, `#new_appointment`, that takes in
        #   an argument of a doctor and a date and creates a new `Appointment`. The
        #   `Appointment` should know that it belongs to the patient.

        # - The `Patient` class needs an instance method, `#appointments`, that iterates
        #   through the `Appointment`s array and returns `Appointment`s that belong to the
        #   patient.

        # - The `Patient` class needs an instance method, `#doctors`, that iterates over
        #   that patient's `Appointment`s and collects the doctor that belongs to each
        #   `Appointment`.

  
class Patient

    attr_reader :name
    # class variable containing each Patient instantiated
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    # returns array all all Patients instantiated
    def self.all
        @@all
    end
    # creates a new `Appointment`.
    def new_appointment(doctor, date)
        # the appointment belongs to the instance calling it (self)
        Appointment.new(date, self, doctor)
    end
    # returns `Appointment`s that belong to the patient.
    def appointments
        Appointment.all.select { |appointment| appointment.patient == self }
    end
    # collects the doctor that belongs to each patient's `Appointment`s
    def doctors
        appointments.map { |appointment| appointment.doctor }
    end
end # end of Patient class