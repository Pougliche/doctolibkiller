class Specialty < ApplicationRecord
    has_many :special_refs
    has_many :doctors, through: :special_refs
    has_many :appointments
end
