class Patient

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments   
        Appointment.all.select { |appt|
            appt.patient == self
        }
    end

    def new_appointment(doctor, date)
        appt = Appointment.new(date, self, doctor)
    end

    def doctors
        appts = self.appointments
        appts.map { |appt|
            appt.doctor
        }
    end

    def self.all
        @@all
    end
end
