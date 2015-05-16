require_relative 'person'
require_relative 'person_list_printer'
require_relative 'person_printer'
require_relative 'pretty_person_printer'

printer = PrettyPersonPrinter.new

list_printer = PersonListPrinter.new printer

employees = [
  Person.new("Adam", "Smith", 10000),
  Person.new("Wilson", "Jones", 22000),
  Person.new("John", "Smith", 20000)
]

list_printer.print_all employees
