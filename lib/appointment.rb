class Appointment
    attr_accessor :doctor, :patient, :date
    @@all = []
    def initialize(date, patient, doctor)
        self.doctor = doctor
        self.patient = patient
        self.date = date
        @@all << self
    end

    def self.all
        @@all
    end
end
