# 2_what_century_is_that_2.rb

# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01.
# So, the years 1901-2000 comprise the 20th century

def add_suffix(year,suffix)
  (year / 100 + 1).to_s + "#{suffix}"
end

def first(year)
  st_inclusions = [12, 13, 14, 15, 16, 17, 18, 19]
  st_inclusions.to_s.include?(((year / 100 + 1).to_s.reverse)[0..1])
end

def second(year)
  nd_inclusions = [20, 22]
  nd_inclusions.to_s.include?(((year / 100 + 1).to_s.reverse)[0..1])
end

def third(year)
  rd_inclusions = [30, 33]
  rd_inclusions.to_s.include?(((year / 100 + 1).to_s.reverse)[0..1])
end

def century(year)
  if (0..99).include?(year)
    "1st"
  elsif (100..199).include?(year)
    "2nd"
  elsif (200..299).include?(year)
    "3rd"
  elsif (2000..).include?(year) && (first(year) == true)
    add_suffix(year,'st')
  elsif (2000..).include?(year) && (second(year) == true)
    add_suffix(year,'nd')
  elsif (2000..).include?(year) && (third(year) == true)
    add_suffix(year,'rd')
  else
    add_suffix(year,'th')
  end
end

p century(2000) 
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127) 
p century(110000201)