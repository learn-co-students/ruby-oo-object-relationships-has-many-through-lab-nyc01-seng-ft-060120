require_relative './appointment.rb'
require_relative './doctor.rb'

class Patient
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select{|appt| appt.patient == self}
  end

  def doctors
    Appointment.all.map{|appt| appt.doctor if appt.patient == self}
  end

end