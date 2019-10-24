class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments
    belongs_to :city
    has_many :special_refs
    has_many :specialties, through: :special_refs
end
