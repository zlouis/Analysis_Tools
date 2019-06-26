using CSV


global splitarray=""
global newmonth=""
global output_file_name = "test.txt"              #adjust file names
global output_file = open(output_file_name,"w")   #adjust file names
 
function month_map(d_month)

  month="00"

if d_month == "Jan"

  return month="01"

elseif d_month == "Feb"

   return month="02"

  elseif d_month == "Mar"

   return month="03"

  elseif d_month == "Apr"

  return  month="04"

  elseif d_month == "May"

  return month="05"

  elseif d_month == "Jun"

     return month="06"

  elseif d_month == "Jul"

    return month="07"

   elseif d_month == "Aug"

   return month="8"

  elseif d_month == "Sep"

   return month="9"

  elseif d_month == "Oct"

   return month="10"

  elseif d_month == "Nov"

   return month="11"

  elseif d_month == "Dec"

   return month="12"
end
return month
end

#adjust file input
readfile=CSV.read("C:\\Users\\louis\\Desktop\\script1\\test.csv")

#adjust file input
for row in CSV.File("C:\\Users\\louis\\Desktop\\script1\\test.csv", header=1)

    narray=split(String(row.a), "")

    println("$narray")


#joins the day
day1=narray[1]
day2=narray[2]

day=join([day1,day2])

#grab dash
dash1=narray[3]

#joins the month
month1=narray[4]
month2=narray[5]
month3=narray[6]

month=String(join([month1,month2,month3]))

months=month_map(month)


#grabs dash
dash2=narray[7]

#joins the year
year1=narray[8]
year2=narray[9]

year=join([year1,year2])

fdate=String(join([months, dash1, day, dash2, year]))
println("$fdate")

write(output_file, "$fdate\r\n")

end

