=begin

convertFracs [(1, 2), (1, 3), (1, 4)] `shouldBe` [(6, 12), (4, 12), (3, 12)]

=end

def convertFracts(lst)
  s = 0
  cm = 1
  lst.each_with_index do |x,i|
    cm = cm.lcm(lst[i][1])
  end
  multiple = 1
  lst.each_with_index do |x, i|
    lst[i][0] = cm/(lst[i][1])*(lst[i][0])
    lst[i][1] = cm
  end
  p lst
end

lst = [[1, 2], [1, 3], [1, 4]]
convertFracts(lst)

=begin

Best solutions on codewars

user: mateusdelbianco

def convertFracts(lst)
  lcm = lst.reduce(1) { |x,y| x.lcm(y[1]) }
  lst.map { |x| [lcm/x[1]*x[0], lcm] }
end

=end
