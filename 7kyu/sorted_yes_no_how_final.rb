=begin

Implement the method isSortedAndHow, which accepts an array of integers, and returns one of the following:

'yes, ascending' - if the numbers in the array are sorted in an ascending way
'yes, descending' - if the numbers in the array are sorted in a descending way
'no'
You can assume the array will always be valid, and there will always be one correct answer.

=end

def is_sorted_and_how(arr)
    if arr.sort == arr
    return 'yes, ascending'
    elsif arr.sort.reverse == arr
    return 'yes, descending'
    else return 'no'
    end
end

arr = [15, 7, 3, -8]
is_sorted_and_how(arr)

=begin

Best solutions on codewars

users: thunderenlight, khoa24988, Dimanus, narayanswa30663, Tetrail

def is_sorted_and_how(arr)
    # your code here
    arr == arr.sort ? 'yes, ascending' : arr == arr.sort.reverse ? 'yes, descending' : 'no'

end
