=begin

A square of squares
You like building blocks. You especially like building blocks that are squares. And what you even like more, is to arrange them into a square of square building blocks!
However, sometimes, you can't arrange them into a square. Instead, you end up with an ordinary rectangle! Those blasted things! If you just had a way to know, whether you're currently working in vain… Wait! That's it! You just have to check if your number of building blocks is a perfect square.

Task

Given an integral number, determine if it's a square number:
In mathematics, a square number or perfect square is an integer that is the square of an integer; in other words, it is the product of some integer with itself.
The tests will always use some integral number, so don't worry about that in dynamic typed languages.

=end

def is_square(x)
  if x < 0
    false
  elsif Math.sqrt(x) == Math.sqrt(x).floor
    true
  else
    false
  end
end

=begin

Best solutions on codewars

users: MikeW, longh957, talks2rocks, rlubinsky, Lasha Tsintsabadze, pikpok (plus 26 more warriors)

def is_square(x)
  x < 0 ? false : Math.sqrt(x) % 1 == 0
end

users: beaugaines, mephody-bro, pchellovod, dpatterson

def is_square(x)
  return false if x < 0
  (x ** 0.5) % 1 == 0
end

=end
