# This method takes three arguments: month, date, and year, and returns either TRUE
# or FALSE (the boolean values, not the string representation of those boolean
# values) depending on whether the date is valid (i.e. does exist on the calendar)
# or is not valid (i.e. does not exist on the calendar).
#
# Here are the rules:
#
# + The month must be between 1 and 12 (inclusive)
# + The year must be between 1880 and 2280 (inclusive)
# + The day must exist within the month
# + You must account for leap years (look up how leap years work)
# + No using the `Date` class (we'll refactor to allow the `Date` class later this week)
# + Only worry about integer inputs (no floats, strings, etc.)
#
# This method should, in its final form, not do any output.

require 'pry'

def valid_date?(month, day, year)
  months_31 = [1,3,4,5,7,8,10,12]


  #validate month is an integer between 1 and 12
  if month < 1 || month > 12
    return FALSE
  end

  # validate year is an integer between 1880 and 2280
  if year < 1880 || year > 2280
    return FALSE
  end

  return true
end

def valid_date?(num1,num2)
binding.pry
