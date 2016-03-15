require 'pry'


#validates the year is 1880 to 2280
#takes year as a parameter that is a 4-digit integer
#true is returned if the year parameter is between 1880 and 2280 inclusive.
def year_valid?(year)
  return false if year < 1880 || year > 2280
end
binding.pry

#validates the month is between 1 and 12
#takes the integer month as a parameter
#true is returned if the month integer parameter is between 1 and 12 inclusive.
def month_valid?(month)
  return false if month < 1 || month > 12
end
binding.pry

#method takes in year and determines if it is a leap year.
#takes the integer year as a parameter
#true is returned if the year is a leap year.
def leap_year?(month)
  return false if !(year % 4 == 0 && year % 100 != 0 || year % 400 == 0)
end
binding.pry

#takes month and retruns validator_31_day_month, validator_30_day_month, or validator_febrary
#takes month integer as a parameter
#true is returned if the year parameter is between 1880 and 2280 inclusive.
def month_route(month)
  case month
        when 1,3,5,7,8,10,12
            return validator_31_day_month
        when 4,6,9,11
            return validator_30_day_month
        when 2
            return validator_febrary
  end
end
binding.pry
