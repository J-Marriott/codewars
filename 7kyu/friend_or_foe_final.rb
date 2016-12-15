=begin
Make a program that filters a list of strings and returns a list with only your friends name in it.
If a name has 4 letters in it, you can be sure that it has to be a friend of yours!
Ex: Input = ["Ryan", "Kieran", "Jason", "Yous"], Output = ["Ryan", "Yous"]
=end

def friend(friends)
  friends.delete_if do |x|
    if v.length == 4?
  end
end

friends = ["Ryan", "Jimmy", "123", "4", "Cool Man"]
friend(friends)

=begin

Best solutions on codewars

users: c0nspiracy, Insti, programmertoni, _andy_, datsalottadimp, artkirienko (plus 20 more warriors)

def friend(friends)
  friends.select { |name| name.length == 4 }
end

=end
