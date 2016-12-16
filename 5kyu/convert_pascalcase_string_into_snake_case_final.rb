=begin

Complete the function/method so that it takes CamelCase string and returns the string in snake_case notation. Lowercase characters can be numbers. If method gets number, it should return string.

Examples:

# returns test_controller
to_underscore('TestController')

# returns movies_and_books
to_underscore('MoviesAndBooks')

# returns app7_test
to_underscore('App7Test')

# returns "1"
to_underscore(1)

=end

def to_underscore(string)
 result = ""
 string.to_s.split("").each_with_index {|x,i| x == x.upcase && i != 0 && x =~ /[a-zA-Z]/ ? result += "_" + x.downcase : result += x.downcase}
 result
end

string = "TestController"
to_underscore(string)

=begin

Best solution on codewars

users: agram, edallen, liptomek, kusayu, badcarl, nepalez (plus 21 more warriors)

def to_underscore(string)
  string.to_s.split(/(?=[A-Z])/).join('_').downcase
end

=end
