=begin

Jenny has written a function that returns a greeting for a user. However, she's in love with Johnny, and would like to greet him slightly different. She added a special case to her function, but she made a mistake.

Can you help her?

=end

def greet(name)
  return "Hello, #{name}!" if name != "Johnny"
  return "Hello, my love!" if name == "Johnny"
end

greet(name)

=begin

Best solutions on codewars

users: zishe, beaugaines, GiacomoSorbi, Anseltis, malkoring, mwallba (plus 225 more warriors)

def greet(name)
  name == 'Johnny' ? "Hello, my love!" : "Hello, #{name}!"
end

=end
