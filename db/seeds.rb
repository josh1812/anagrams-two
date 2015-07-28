File.open('words') do |file|
  file.each do |line|
    Word.create(dictionary: line.chomp)
  end
end