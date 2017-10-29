class Event < ApplicationRecord

  has_many :attendances,
    primary_key: :uniq_id,
    foreign_key: :event_id,
    class_name: :Attendance

  has_many :people,
    through: :attendances,
    source: :person

end
