# 2_what_century_is_that.rb

# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01.
# So, the years 1901-2000 comprise the 20th century

# ls_method

# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year & 100 = 0 
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century & 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end

# sam_method

def century(year)
  suffixes = ['th', 'st', 'nd', 'rd']
  n = (year.abs + 99).to_s[0..-3]
  result = case
    when n.end_with?('1', '2', '3') && !n.end_with?('11', '12', '13')
    then n + suffixes[n[-1].to_i]
    else n + suffixes[0]
  end
  result << "BC" if year.negative?
  result
end