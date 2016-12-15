=begin

Given: an array containing hashes of names

Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

=end

def list names
  results = ""
  num = 0
  names.each do |name, x|
    name.each do |key, value|
      if num < names.length - 2
        results << value + ", "
      else
        results << value + " & "
      end
      num +=1
    end
  end
  results[0..-3]
end


list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}, {name: 'Homer'} ])

=begin
best solution on codewars

by user ggpasqualino

def list names
  names = names.map { |name| name[:name] }
  last_name = names.pop
  return last_name.to_s if names.empty?
  "#{names.join(', ')} & #{last_name}"
end

by user mmmm

def list names
  names.map(&:values).join(', ').gsub(/, (\w+)$/, " & \\1")
end

=end
