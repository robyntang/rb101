#03_after_midnight_2.rb

MINUTES_PER_DAY = 1440


def before_midnight(string)
  hours, minutes = string.split(':')
  (MINUTES_PER_DAY - ((hours.to_i * 60) + minutes.to_i)) % MINUTES_PER_DAY
end

def after_midnight(string)
  hours, minutes = string.split(':')
  ((hours.to_i * 60) + minutes.to_i) % MINUTES_PER_DAY
end


p  after_midnight('00:00') == 0
p  before_midnight('00:00') == 0
p  after_midnight('12:34') == 754
p  before_midnight('12:34') == 686
p  after_midnight('24:00') == 0
p  before_midnight('24:00') == 0