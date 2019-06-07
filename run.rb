require_relative './doctor.rb'
require_relative './patient.rb'
require 'pry'
require_relative './appointment.rb'

doc1=Doctor.new("samip","gynocologist")
doc2=Doctor.new("hamza", "cancer")
doc3=Doctor.new("david", "skin")

pat1=Patient.new("abc",90,"skin")
pat2=Patient.new("bcd",12,"cancer")

app1=Appointment.new(doc1,pat1,"jan")
app2=Appointment.new(doc1,pat2,"jannn")
app3=Appointment.new(doc3,pat1,"jannnnnn")
pat1.doctor
binding.pry
0