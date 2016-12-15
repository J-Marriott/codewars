=begin

In this kata you should complete a function that take in argument an history with the following format:
and that should return the last executed command line, in this case it will be history.

=end


def bang_bang(n, history)
  array = []
  array << history.split(/\s\s\d\s\s/)
  array.flatten[n].gsub!("\n", "")
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

user: c0nspiracy

def bang_bang(history)
  history.lines.last.split(" ", 2).last
end

user: lambda4fun

def bang_bang(history)
  history.lines.last.match(/\s*?\d+\s+(.+)/)[1]
end


=end
