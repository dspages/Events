class Person < ApplicationRecord

  has_many :attendances,
    primary_key: :uniq_id,
    foreign_key: :person_id,
    class_name: :Attendance

  has_many :events,
    through: :attendances,
    source: :event

end
