=begin

Write a function getMean that takes as parameters an array (arr) and 2 integers (x and y). The function should return the mean between the mean of the the first x elements of the array and the mean of the last y elements of the array.
The mean should be computed if both x and y have values higher than 1 but less or equal to the array's length. Otherwise the function should return -1.
getMean([1,3,2,4], 2, 3) should return 2.5 because: the mean of the the first 2 elements of the array is (1+3)/2=2 and the mean of the last 3 elements of the array is (4+2+3)/3=3 so the mean of those 2 means is (2+3)/2=2.5.
getMean([1,3,2,4], 1, 2) should return -1 because x is not higher than 1.
getMean([1,3,2,4], 2, 8) should return -1 because 8 is higher than the array's length.


=end


def get_mean(arr,x,y)
  result = 0
  total1 = 0
  total2 = 0
  if (x > 1 && y > 1) && (x<= arr.length && y <= arr.length)
    array1 = arr[0...x]
    array1.each do |s|
      total1 += s.to_f
    end
    mean1 = total1/x
    array2 = arr[-y..-1]
    array2.each do |t|
      total2 += t.to_f
    end
    mean2 = (total2/y).to_f
    result = (mean1 + mean2) / 2.0
  else
    return -1
  end
end

arr = [1,3,2,4]
x = 2
y = 3
get_mean(arr,x,y)

=begin

Best solutions on codewars

user: glonnon

def get_mean(arr,x,y)
  return -1 if arr.length < x || arr.length < y || x <= 1 || y <= 1
   (arr[0...x].reduce(:+)/x.to_f + arr[-y..-1].reduce(:+)/y.to_f)/2
end

user: Jack-Barry

def get_mean(arr,x,y)
  return -1 if x < 2 or y < 2 or x > arr.count or y > arr.count

  ((arr[0..x-1].reduce(:+) / x.to_f) + (arr[-y..-1].reduce(:+) / y.to_f)) / 2
end

=end
