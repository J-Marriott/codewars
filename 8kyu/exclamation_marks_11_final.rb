=begin

Replace all vowel to exclamation mark in the sentence. aeiouAEIOU is vowel.
Examples

replace("Hi!") === "H!!"
replace("!Hi! Hi!") === "!H!! H!!"
replace("aeiou") === "!!!!!"
replace("ABCDE") === "!BCD!"

=end

def replace(s)
  s.gsub(/[aeiouAEIOU]/, "!")
end

s = "!Hi! Hi!"
replace(s)

=begin

Best solutions on codewars

users: kwitczak, jvansch1, edytawrobel, nicrausaz, tomanistor

def replace(s)
  s.tr("aeiouAEIOU'","!")
end

=end
