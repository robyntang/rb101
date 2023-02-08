#02_after_midnight_1.rb

def time_display(time)
  sprintf('%02d', time)
end

def time_of_day(number)
  hours, all_minutes = number.divmod(60)
  if number >= 0
    hours_in_day = hours.remainder(24)
  else
    hours_in_day = hours.remainder(24) == 0 ? 0 : 24 - hours.remainder(24).abs
  end
  "#{time_display(hours_in_day)}:#{time_display(all_minutes)}"
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)