class AddPatientAndDocToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :patient_id, :integer
    add_index :appointments, :patient_id
    add_column :appointments, :doctor_id, :integer
    add_index :appointments, :doctor_id
  end
end
