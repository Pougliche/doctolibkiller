class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :date_time
      t.belongs_to :doctor, index: true 
      t.belongs_to :patient, index: true
      t.belongs_to :city, index: true
      t.belongs_to :specialty, index: true
      t.timestamps
    end
  end
end
