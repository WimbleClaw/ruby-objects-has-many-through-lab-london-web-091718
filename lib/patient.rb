require 'pry'

class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |app|
      app.patient == self
    end
  end

  def doctors
    appointments.map {|appointment| appointment.doctor}
  end

end
