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


puts list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}, {name: 'Homer'} ])
=begin
list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'

list([])
# returns ''
=end
