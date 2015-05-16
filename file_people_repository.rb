class FilePeopleRepository
  def initialize file_name
    @file_name = file_name
  end
  def store_people people
    File.open(@file_name, "wb") {|f| f.write(Marshal.dump(people))}
  end
  def load_people
    Marshal.load(File.read(@file_name, mode:"rb"))
  end
end
