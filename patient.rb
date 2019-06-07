class Patient 
    attr_reader :name, :age
    attr_accessor :disease
    @@all = []
    def initialize(name , age , disease)
        @name = name
        @age = age
        @disease = disease
        @@all << self
    end

    def self.all
        @@all
    end 

    def doctor_list 
        Appointment.all.select{|appointment_instance| appointment_instance.patient == self }
    end

    def doctor
        self.doctor_list.map{|instance| instance.doctor}
    end

    def self.by_desease(disease)
        @@all.select {|pat_ins| pat_ins.disease == disease}

    end


end
