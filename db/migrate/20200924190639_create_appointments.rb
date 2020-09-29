class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :category
      t.string :phone
      t.string :email
      t.date :select_date
      t.time :select_time
      t.time :end_time
      t.text :message
      t.integer :doctor_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
