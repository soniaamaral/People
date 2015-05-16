class PersonListPrinter
  def initialize person_printer
    @person_printer = person_printer
  end
  def print_all people
    people.each do |person|
      @person_printer.print_person person
    end
  end
end
