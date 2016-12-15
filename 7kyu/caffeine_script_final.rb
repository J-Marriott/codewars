=begin

Complete the function caffeineBuzz, which takes a non-zero integer as it's one argument.
If the integer is divisible by 3, return the string "Java".
If the integer is divisible by 3 and divisible by 4, return the string "Coffee"
If the integer is one of the above and is even, add "Script" to the end of the string.
Otherwise, return the string "mocha_missing!"

=end

def caffeineBuzz(n)
  if n % 3 == 0
    if n % 4 == 0
      if n % 2 == 0
        "CoffeeScript"
      else
        "Coffee"
      end
    else
      if n % 2 == 0
       "JavaScript"
     else
       "Java"
     end
    end
  else
    "mocha_missing!"
  end
end

n = 12
p caffeineBuzz(n)

=begin

Best solutions on codewars

user: yckmciaiy

def caffeineBuzz(n)
  str = ""
  str = "Java" if n%3==0
  str = "Coffee" if n%4==0 && n%3==0
  return "mocha_missing!" if str.empty?
  str += "Script" if n.even?
  str
end

user: AntonTkachov

def caffeineBuzz(n)
  if n % 12 == 0
    return "CoffeeScript"
  elsif n % 3 == 0
    return n.even? ? "JavaScript" : "Java"
  else
    return "mocha_missing!"
  end
end

=end
