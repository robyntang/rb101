# 07_unlucky_days.rb

# require 'date'

# def friday_13th(year)
#   unlucky_days = 0
#   (1..12).each do |month|
#      unlucky_days += 1 if Date.new(year, month, 13).friday?
#     end
#   unlucky_days
# end


require 'date'

def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.civil(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2