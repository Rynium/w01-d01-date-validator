def valid_date?(month, day, year)

    #validates the year is 1880 to 2280 inc and month 1 to 12 inc.
    return false if  (year < 1880 || year > 2280)  ||  (month < 1 || month > 12)

    #validates the day for each month.
    case month

        #validates day for 31 day months.
        when 1,3,5,7,8,10,12
            return false if !(day < 32 && day > 0)

        #validates day for 30 day months.
        when 4,6,9,11
            return false if !(day < 31 && day > 0)

        #validates day for FEB
        when 2
          if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
            return false if !(day > 0 && day < 30)

          else
            return false if !(day > 0 && day < 29)

        end
  end
  return true
end
