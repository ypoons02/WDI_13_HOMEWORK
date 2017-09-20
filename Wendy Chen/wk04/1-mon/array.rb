#1. Create an array of the days of the week
#Create a variable named days_of_the_week as an array of the following:
#Monday
#Tuesday
#Wednesday
#Thursday
#Friday
#Saturday
#Sunday

days_of_the_week = ["Monday", "Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]

#puts days_of_the_week

#2. My calendar says the first day is Sunday...
#Remove Sunday from the last postion and move it to the first position. Use array methods.

#days_of_the_week.rotate!(6)
#puts days_of_the_week

#3. Create a new array of the days of the week:
#The first inner array should be the weekdays
#The second inner array should be the weekend days

daysOfTheWeek = [["Monday","Tuesday","Wednesday","Thursday","Friday"],["Saturday","Sunday"]]
#puts daysOfTheWeek

#4. Remove either the weekdays or the weekends
#Your choice...

daysOfTheWeek.delete_at(1);

#5. Sort the remaining days alphabetically

puts daysOfTheWeek.sort {|a,b| a[1] <=> b[1]}

#puts daysOfTheWeek;
