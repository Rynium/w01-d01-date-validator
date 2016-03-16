def month_day_year_valid?(month, day, year)
  out = true
  out = false if year < 1880 || year > 2280
  out = false if day < 1
  out = false if month < 1 || month > 12
  out
end

def leap_year?(year)
  out = false if !(year % 4 == 0 && year % 100 != 0 || year % 400 == 0)
  out
end

def day_validating_month_router(month, day, year)
  out = day_validator(day,32) if [1,3,5,7,8,10,12].include? month
  out = day_validator(day,31) if [4,6,9,11].include? month
  out = day_validator(day,30) if month = 2 && leap_year?(year) == true
  out = day_validator(day,29) if month = 2 && leap_year?(year) == false
  out
end

def day_validator(day,limit)
  !(day < limit)? false : true
end


def valid_date?(month,day,year)
  out = true
  out = false if month_day_year_valid?(month, day, year) == false
  out = false if day_validating_month_router(month, day, year) == false
  out
end
