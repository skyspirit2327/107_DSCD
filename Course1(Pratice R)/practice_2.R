### practice_2
### course_grade


# Create a vector called course.students.number, with data: c(1, 30)
course.student.number <- c(1, 30)

# Create a variable csn, with data: length of course.student.number
csn <- length(course.student.number)

# Create a vector course.student.grade, with sample() function: x = c(55:100), size = csn
course.student.grade <- sample(c(55:100),csn)

# Assign course.student.number as names of the course.student.grade
names(course.student.grade) <-course.student.number

# Create csg.mean, with the mean value of course.student.grade
csg.mean <- mean(course.student.number)
  
# Create csg.max with the max value of course.student.grade
csg.max <- max(course.student.number)

# Create csg.min with the min value of course.student.grade
csg.min <- min(course.student.number)

# Create a vector csg.over.80, with the logical result of course.student.grade over 80
csg.over.80 <- course.student.number>=80

# Check csg.over.mean
csg.over.mean

# Filter the course.student.grade with csg.over.mean
course.student.grade[csg.over.80]

# Print course information
print(paste("全班人數:", csn))
print(paste("全班平均：", csg.mean))
print(paste("全班最高：", csg.max))
print(paste("全班最低：", csg.min))

# Print over 80 details
# print(paste("高於80分總人數：", ____________________))
# print(paste("高於80分座號：", ______________________))
print(paste("高於80分總人數：", length(csg.over.80)))
print(paste("高於80分座號：", csg.over.80))
