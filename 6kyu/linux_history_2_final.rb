=begin

In this kata you should complete a function that take in an integer that correspond to n, and an history with the following format:
and that should return the nth executed command line, for example with n=4 and the above history it should return ls. If user ask for a n without any know entry for example n=12 here, the function should return !12: event not found. Note: For this kata we will assume that n >= 1.

=end

def bang_n(n, history)
  p history
  array = []
  array << history.split(/\s\s\d\s\s/)
  if array.flatten[n] == nil
    "!#{n}: event not found"
  else
    array.flatten[n].gsub("\n", "").strip
  end
end


history =
"   1  cd /pub
  2  more beer
  3  lost
  4  ls
  5  touch me
  6  chmod 000 me
  7  more me
  8  history"


bang_bang(n, history)

=begin

Best solutions on codewars

user: GiacomoSorbi

def bang_n(n,history)
  lambda{|h| h.size<n ? "!#{n}: event not found" : h[n-1].split(/\s+/).slice(2,h.size+1).join(" ")}.(history.split("\n"))
end

user: bejczib

def bang_n(n,history)
  history.split("\n").each do |event|
    if  event.include?(n.to_s)
      return event.sub(/([^a-zA-Z\s]+)(\s+)([a-zA-Z\s]+)/, '\3').lstrip
    end
  end
  "!#{n}: event not found"
end

=end
