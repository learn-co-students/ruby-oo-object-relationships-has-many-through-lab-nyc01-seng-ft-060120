# A Doctor has many Patients through its Appointments and a Patient has many Doctors through its Appointments.


        # - The `Doctor` class needs a class variable `@@all` that begins as an empty array.

        # - The `Doctor` class needs a class method `.all` that lists each doctor in the
        #   class variable.

        # - A doctor should be initialized with a name and be saved in the `@@all` array.

        # - The `Doctor` class needs an instance method, `#new_appointment`, that takes in a
        #   an instance of the `Patient` class and a date, and creates a new `Appointment`. That
        #   `Appointment` should know that it belongs to the doctor

        # - The `Doctor` class needs an instance method, `#appointments`, that iterates
        #   through all `Appointment`s and finds those belonging to this doctor.

        # - The `Doctor` class needs an instance method, `#patients`, that iterates over
        #   that doctor's `Appointment`s and collects the patient that belongs to each
        #   `Appointment`s.


class Doctor

    attr_reader :name
    # class variable containing each instantiate doctor in an array.
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    # class method to return array of each Doctor instance.
    def self.all
        @@all
    end
    # creates a new `Appointment`.
    def new_appointment(patient, date)
        # creates new appointment from arguments passed in and self where self is the Dr instance calling the method.
        Appointment.new(date, patient, self)
    end
    # iterates through all `Appointment`s and finds those belonging to this doctor.
    def appointments
        Appointment.all.select { |appointment| appointment.doctor == self }
    end
    
    # collects the patient that belongs to each `Appointment`.
    def patients
        appointments.map { |appointment| appointment.patient }
    end

end # end of Doctor class