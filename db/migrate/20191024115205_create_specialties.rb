class CreateSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :specialties do |t|
      t.string :specialty_name
      t.belongs_to :special_ref, index: true
      t.timestamps
    end
  end
end
