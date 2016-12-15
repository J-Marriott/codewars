=begin

In this kata you should complete a function that take in an string that correspond to s, and an history with the following format:
and that should return the most recent command line that start with s, for example with s="more" and the above history it should return more me. If user ask for a s without any know entry for example n=mkdir here, the function should return !mkdir: event not found.


=end


def bang_start_string(s, history)
  return "! : event not found" if s == " "
  array = []
  array << history.split(/\s\s\d{1,}\s\s/)
  array = array.flatten
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


bang_start_string(s, history)

=begin

Best solutions on codewars

user: Iron Fingers

def bang_start_string(s, history)
  ret = history.scan(/\d\s+(.*)/).flatten.reverse.find{ |cm| cm.start_with?(s) }
  ret ? ret : "!#{s}: event not found"
end

user: KSTNR

def bang_start_string(s,history)
  h = history.lines.map{ |e| e.strip.split(' ',2).last }.map{ |e| e.scan(/^#{s}.*/).join }.delete_if(&:empty?).last
  h.nil? ? "!#{s}: event not found" : h
end

=end
