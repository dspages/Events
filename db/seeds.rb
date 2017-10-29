# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'byebug'

Event.delete_all
Attendance.delete_all
Person.delete_all

def parse_line(line)
  line = line
  line.tr!("$", "")
  line = line.split(",")
  line
end

def create_obj(headers, line, type)
  return if line.length < 3
  line = parse_line(line)
  obj = {}
  headers.each.with_index do |header, idx|
    if header != "id"
      obj[header] = line[idx]
    else
      obj["uniq_id"] = line[idx]
    end
  end
  type.create(obj)
end

def fill_data(filename, type, merged, assoc)
  File.open(filename,
  'r') do |file|
    #byebug
    if merged
      lines = file.gets
      lines = lines.split("\r")
      headers = lines.shift.split(",")
      until lines.empty?
        line = lines.shift
        create_obj(headers, line, type)
      end
    else
      headers = file.gets.chomp.split(",")
      while line = file.gets
        create_obj(headers, line, type)
      end
    end
  end
end

fill_data('./db/csv/events.csv', Event, false, false)
fill_data('./db/csv/people.csv', Person, true, false)
fill_data('./db/csv/assistance.csv', Attendance, true, true)
