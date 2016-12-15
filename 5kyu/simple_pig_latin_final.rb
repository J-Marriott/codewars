=begin

Move the first letter of each word to the end of it, then add 'ay' to the end of the word.
pig_it('Pig latin is cool') # igPay atinlay siay oolcay

=end

def pig_it text
  results = []
  array = text.split
  array.each do |x|
    if x.match(/^[[:alpha:]]+$/)
      subarray = x.split(//)
      character = subarray[0]
      x[0] = ''
      results << x + character + "ay"
    else
      results << x
    end
  end
  p results.join(' ')
end

text = "Quis custodiet ipsos custodes ?"
pig_it(text)

=begin

Best solution on codewars

users: JasonGoff, omitobi, expensivestephen

def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end

users: nhattan, tjgfernandes, f477

def pig_it text
  text.split.map{|word| word =~ /\w/ ? "#{word[1..-1]}#{word[0]}ay" : word}.join(" ")
end

=end
