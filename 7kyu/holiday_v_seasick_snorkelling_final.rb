=begin

Thanks to the effects of El Nino this year my holiday snorkelling trip was akin to being in a washing machine... Not fun at all.
Given a string made up of '~' and '_' representing waves and calm respectively, your job is to check whether a person would become seasick.
Remember, only the process of change from wave to calm (and vice versa) will add to the effect (really wave peak to trough but this will do). Find out how many changes in level the string has and if that figure is more than 20% of the string, return "Throw Up", if less, return "No Problem".

=end

def sea_sick(sea)
  array = sea.split(//)
  counter = -1
  n = 0
  array.each do
    counter += 1 if array[n] != array[n+1]
    n+=1
  end
  if ((counter > 0.2*(sea.length)) && (sea.length > 2))
    "Throw Up"
  else
    "No Problem"
  end
end

sea = "_~~~~~~~_~__~______~~__~~_~~"
sea_sick(sea)

=begin

Best solutions on codewars

user: glonnon

def sea_sick(sea)
     (sea.scan(/~_/).count + sea.scan(/_~/).count) / sea.size.to_f <= 0.20 ? "No Problem" : "Throw Up"
end

user: Jack-Barry

def sea_sick(sea)
  (sea.scan(/~_/)+ sea.scan(/_~/)).count / sea.length.to_f > 0.2 ? 'Throw Up' : 'No Problem'
end

=end
