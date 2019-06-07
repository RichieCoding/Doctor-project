
class Doctor
    @@all=[]
    attr_accessor :name ,:field

    def initialize(name,field)
        @name=name
        @field=field
        @@all<< self
    end

    def self.all
        @@all
    end

    def patient_list
        Appointment.all.select{|appointment_instance| appointment_instance.doctor==self}
    end

    def patient
        self.patient_list.map{|instance| instance.patient}
    end
end