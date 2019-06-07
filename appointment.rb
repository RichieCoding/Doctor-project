class Appointment
@@all=[]
attr_accessor :doctor, :patient , :month

    def initialize (doctor,patient,month)
        @doctor=doctor
        @patient=patient
        @month=month
        @@all << self
    end

    def self.all
        @@all
    end
end