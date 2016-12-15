=begin

Given a string, you need to write a method that order every letter in this string in ascending order.

Also, you should validate that the given string is not empty or null. If so, the method should return:

"Invalid String!"
Examples

order_word("hello world") => " dehllloorw"
order_word("bobby") => "bbboy"
order_word("") => "Invalid String!"

=end

def order_word(s)
  if s == nil
    "Invalid String!"
  elsif s == ""
    "Invalid String!"
  else
    s.chars.sort.join
  end
end

s = "i\"d][@z!$r(^a&world%"
order_words(s)

=begin

Best solutions on codewars

users: Ethane, Iron Fingers, calllmehvogel, A/Z, ARPerry87, TenSaga

def order_word(s)
  s.nil? || s.empty? ? 'Invalid String!' : s.chars.sort.join
end

users: Biggless, Unnamed, c0nspiracy, asom, desikid101

def order_word(s)
  return 'Invalid String!' if s.nil? || s.empty?
  s.chars.sort.join
end

=end
