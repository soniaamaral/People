require_relative 'file_people_repository'
require_relative 'person'
require_relative 'person_list_printer'
require_relative 'person_printer'

printer = PersonPrinter.new

list_printer = PersonListPrinter.new printer

repository = FilePeopleRepository.new "people.dat"

people = repository.load_people.sort_by {|person| [person.last_name, person.name]}

list_printer.print_all people
