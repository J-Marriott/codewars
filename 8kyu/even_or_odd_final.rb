=begin

Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

=end

def even_or_odd(number)
  if (number % 2) == 0
    "Even"
  else
    "Odd"
  end
end

number = 9
even_or_odd(number)

=begin

Best solution on codewars

users: smepple, richardhsu, mmmm, alder, HVRMAN, rmulligan (plus 428 more warriors)

def even_or_odd(number)
  number.even? ? "Even" : "Odd"
end

users: mlabrum, tschmidt, tzumby, tatersnakes, Benky, Henry-L (plus 15 more warriors)

def even_or_odd(number)
  (number % 2 == 0) ? "Even" : "Odd"
end

=end
