class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :patient_appointments, :class_name => 'Appointment', :foreign_key => 'patient_id', dependent: :destroy
  has_many :doctor_appointments, :class_name => 'Appointment', :foreign_key => 'doctor_id', dependent: :destroy


end




  
