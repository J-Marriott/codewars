=begin
When a minute is evenly divisible by three, the clock will say the word "Fizz".
When a minute is evenly divisible by five, the clock will say the word "Buzz".
When a minute is evenly divisible by both, the clock will say "Fizz Buzz", with two exceptions:
On the hour, instead of "Fizz Buzz", the clock door will open, and the cuckoo bird will come out and "Cuckoo" between one and twelve times depending on the hour.
On the half hour, instead of "Fizz Buzz", the clock door will open, and the cuckoo will come out and "Cuckoo" just once.
With minutes that are not evenly divisible by either three or five, at first you had intended to have the clock just say the numbers ala Fizz Buzz, but then you decided at least for version 1.0 to just have the clock make a quiet, subtle "tick" sound for a little more clock nature and a little less noise.
=end

def fizz_buzz_cuckoo_clock(time)
  sound = "Cuckoo"
  timesound = time[3..5].to_i
  hour = time[0..2].to_i
  hour -= 12 if hour > 12
  hour = 12 if hour == 00
  if timesound == 00
    ((sound+' ')* hour).strip
  elsif timesound == 30
    sound
  elsif (timesound%3==0) && (timesound%5==0)
    "Fizz Buzz"
  elsif timesound%5 == 0
    "Buzz"
  elsif timesound%3 == 0
    "Fizz"
  else
    "tick"
  end
end

time = "12:15"
fizz_buzz_cuckoo_clock(time)

=begin

Best solutions on codewars

user: tachyonlabs

def fizz_buzz_cuckoo_clock(time)
  hours, minutes = time.split(":").map(&:to_i)
  sounds = {0 => (["Cuckoo"] * (hours % 12 == 0 ? 12 : hours % 12)).join(" "), 15 => "Fizz Buzz", 30 => "Cuckoo", 45 => "Fizz Buzz"}
  if sounds.include? minutes
    return sounds[minutes]
  end

  return minutes % 3 == 0 ? "Fizz" : minutes % 5 == 0 ? "Buzz" : "tick"
end

=end
