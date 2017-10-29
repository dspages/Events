class Attendance < ApplicationRecord

  belongs_to :person,
    primary_key: :uniq_id,
    foreign_key: :person_id,
    class_name: :Person

  belongs_to :event,
    primary_key: :uniq_id,
    foreign_key: :event_id,
    class_name: :Event

end
