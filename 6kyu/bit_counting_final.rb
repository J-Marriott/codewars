def count_bits(n)
  n.to_s(2).count "1"
end

n = 10
p count_bits(n)

=begin
best solution same
=end
