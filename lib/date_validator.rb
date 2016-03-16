require 'pry'

out = ''
tru = true

def year_valid?(year)
  tru = false if year < 1880 || year > 2280
  tru
end

def month_valid?(month)
  tru = true
  out = false if month < 1 || month > 12
  out
end

def leap_year?(year)
  tru = false if !(year % 4 == 0 && year % 100 != 0 || year % 400 == 0)
  tru
end

def day_validating_month_router(month, day, year)
  out = validator_31(day) if [1,3,5,7,8,10,12].include? month
  out = validator_30(day) if [4,6,9,11].include? month
  out = validator_29(day) if month = 2 && leap_year?(year)
  out = validator_28(day) if month = 2 && !leap_year?(year)
  out
end

def validator_31(day)
  !(day < 32 && day > 0)? false : true
end

def validator_30(day)
  !(day < 31 && day > 0)? false : true
end

def validator_29(day)
  !(day < 30 && day > 0)? false : true
end

def validator_28(day)
  !(day < 29 && day > 0)? false : true
end
binding.pry

def date_validator(month,day,year)
  year_valid?(year)
  month_valid?(month)
  day_validating_month_router(month, day, year)
end
