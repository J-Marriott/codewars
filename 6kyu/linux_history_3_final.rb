=begin

In this kata you should complete a function that take in an integer that correspond to n, and an history with the following format:
and that should return the nth executed command line, for example with n=4 and the above history it should return touch me. If user ask for a n without any know entry for exampl n=12 here, the function should return !12: event not found.

=end

def bang_minus_n(n, history)
  p history
  array = []
  array << history.split(/\s\s\d{1,}\s\s/)
  if array.flatten[-n] == nil
    "!#{-n}: event not found"
  else
    array.flatten[-n].gsub("\n", "").strip
  end
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

bang_minus_n(n, history)

=begin

Best solution on codewars

user: wRadion

def bang_minus_n(n, history)
  return "!-#{n}: event not found" if history.lines.length < n
  history.lines[-n].split('  ').last.chomp
end

user: KSTNR

def bang_minus_n(n,history)
  h = history.lines.reverse[n-1]
  h.nil? ? "!-#{n}: event not found" : h.split("  ").last.strip
end

=end
