# 03_lettercase_percentage_ratio.rb


def letter_percentages(string)
  hash = {}

  multiplier = 100.00 / string.size

  hash[:lowercase] = (((string.count('a-z')) * multiplier)).round(2)
  hash[:uppercase] = (((string.count('A-Z')) * multiplier)).round(2)
  hash[:neither] = (((string.count('^A-Za-z')) * multiplier)).round(2)
  hash
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')
