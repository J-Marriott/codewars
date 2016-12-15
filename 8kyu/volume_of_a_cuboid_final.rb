=begin

Bob needs a fast way to calculate the volume of a cuboid with three values: length, width and the height of the cuboid. Write a function to help Bob with this calculation.
Ruby: def get_volume_of_cuboid(length, width, height)

=end

def get_volume_of_cuboid(length, width, height)
  length*width*height
end

length, width, height = 7, 14, 26
p get_volume_of_cuboid(length, width, height)

=begin

Best solution on codewars

user: RubyGemDrew

def get_volume_of_cuboid(*dimensions)
  dimensions.inject(:*)
end

=end
