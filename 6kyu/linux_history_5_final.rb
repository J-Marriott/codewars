=begin

In this kata you should complete a function that take in an string that correspond to s, and an history with the following format:
and that should return the most recent command line that contains executed command line s, for example with s="me" and the above history it should return more me. If user ask for a s without any know entry for example n=you here, the function should return !you: event not found.

=end


def bang_contain_string(s, history)
  array = []
  array << history.split(/\s\s\d{1,}\s\s/)
  array = array.flatten
  array.shift
  return array[-1].gsub("\n", "") if s == ""
  (array.length-1).downto(0) {|x| return array[x].gsub("\n", "").strip if array[x][0..s.length-1] == s}
  "!#{s}: event not found"
end


history=
"   1  cd /pub
  2  more beer
  3  lost
  4  ls
  5  touch me
  6  chmod 000 me
  7  more me
  8  history"


bang_contain_string(s, history)

=begin

Best solutions on codewars

user: KSTNR

def bang_contain_string(s,history)
  a = history.split("\n").map{ |e| e.scan(/(?<=\d\s\s).+/).join if e.include?(s) }.delete_if(&:nil?)
  a.last.nil? ? "!#{s}: event not found" : a.last
end

user: thisisole

def bang_contain_string(s,history)
  command = ""
  ary = history.split("\n")
  ary.reverse_each do |x|
    if x.include? s
      command = x.strip![x.index(" "), x.size].strip
      break
    end
  end
  command != "" ? command : "!#{s}: event not found"
end

=end
