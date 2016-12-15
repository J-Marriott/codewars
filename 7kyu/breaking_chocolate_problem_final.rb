=begin

Your task is to split the chocolate bar of given dimension n x m into small squares. Each square is of size 1x1 and unbreakable. Implement a function that will return minimum number of breaks needed.
For example if you are given a chocolate bar of size 2 x 1 you can split it to single squares in just one break, but for size 3 x 1 you must do two breaks.
If input data is invalid you should return 0 (as in no breaks are needed if we do not have any chocolate to split). Input will always be a non-negative integer.

=end

def break_chocolate(n, m)
  if n*m > 1
    n*m-1
  else
    0
  end
end

n = 7
m = 4
break_chocolate(n, m)

=begin

Best solutions on codewars

users: viorel, wst07261144, azzy-xiii, tomkat, bellmyer, sdanthony (plus 35 more warriors)

def break_chocolate(n, m)
  n == 0 || m == 0 ? 0 : n * m - 1
end

users: floum, mmmm, brownmike, mat, Dr Phil, mike135 (plus 16 more warriors)

def break_chocolate(n, m)
  [n * m - 1, 0].max
end

=end
