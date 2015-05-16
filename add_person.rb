require_relative 'file_people_repository'
require_relative 'person'

print "Please input the name of the person you would like to add.\n"

name = STDIN.gets.chomp

print "Please input the last name of the person you would like to add.\n"

last_name = STDIN.gets.chomp

print "Please input the salary of the person you would like to add.\n"

salary = STDIN.gets.to_i

new_person = Person.new(name, last_name, salary)

repository = FilePeopleRepository.new "people.dat"

people = repository.load_people

people << new_person

repository.store_people people
