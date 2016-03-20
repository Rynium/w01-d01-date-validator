def month_day_year_valid?(month, day, year)
  !(year < 1880 || year > 2280)  ||  (day < 1)  ||  (month < 1 || month > 12)
end

def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0 || year % 400 == 0)
end

def day_validating_month_router(month, day, year)
  route = day_validator(day,32) if [1,3,5,7,8,10,12].include? month
  route = day_validator(day,31) if [4,6,9,11].include? month
  route = day_validator(day,30) if month = 2 && leap_year?(year) == true
  route = day_validator(day,29) if month = 2 && leap_year?(year) == false
  route
end

def day_validator(day,limit)
  day < limit
end

def valid_date?(month,day,year)
  day_validating_month_router(month, day, year) && month_day_year_valid?(month, day, year)
end
