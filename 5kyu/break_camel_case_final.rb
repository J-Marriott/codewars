=begin
Complete the solution so that the function will break up camel casing, using a space between words.
Example
solution('camelCasing') # => should return 'camel Casing'
=end

def solution(string)
  result = ""
  string.split(//).each {|x| x == x.upcase ? result += " " + x : result += x}
  result
end

string = "camelCasing"
solution(string)

=begin

Best solution on codewars

users: genebot, JNG, lofty, penkar, doekia, Tearff (plus 28 more warriors)

def solution(string)
  string.gsub /([A-Z])/, ' \1'
end

=end
