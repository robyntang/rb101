# 01_cute_angles.rb

# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees
# and returns a String that represents that angle in degrees, minutes and seconds. 
# You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a
# double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

DEGREE = "\xC2\xB0"


def dms(number)
  degrees, remainder = number.divmod(1)
  minutes, seconds = (remainder * 60).divmod(1)
  seconds *= 60
  
  p %(#{degrees}#{DEGREE}#{format('%02d', minutes)}'#{format('%02d', seconds)}")
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")