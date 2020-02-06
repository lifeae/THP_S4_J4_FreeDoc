class CreateAppointment < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :Appointment
    end
  end
end
