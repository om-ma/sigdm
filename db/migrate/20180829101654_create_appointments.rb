class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.date :da
      t.text :reason
      t.text :diagnostics
      t.date :dn
      t.text :prescription
      t.text :comments
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
