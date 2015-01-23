# File tidy.txt consists of 68 columns

# column 1
"Subject"      
the individual on which the measurements were taken.  Coded as an integer between 1 and 30

# column 2
"Activity"     
the activity which the individual was engaged in when the measurement was taken.  Coded as a character variable with one of 6 values
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

# columns 3 to 68
Mean values of measured features for each combination of subject and activity. The labels in the file relate to the labelling of the original
features in the originally downloaded data, detailed below as column number, name in file, original feature label (with minor adjustment to produce a
unique name legal in R by replacing - with . and removing() ).  The original feature measures have been standardised on to a scale from -1 to 1
and so have no units.

1. "Subject" (described above)
2. "Activity" (described above)
3. "Subj.Activity.Mean.of...Time.Domain.Body.Accel.mean...X"      mean by subject and activity from the original feature called "tBodyAcc.mean...X"
4. "Subj.Activity.Mean.of...Time.Domain.Body.Accel.mean...Y"      mean by subject and activity from the original feature called "tBodyAcc.mean...Y"
5. "Subj.Activity.Mean.of...Time.Domain.Body.Accel.mean...Z"      mean by subject and activity from the original feature called "tBodyAcc.mean...Z"
6. "Subj.Activity.Mean.of...Time.Domain.Gravity.Accel.mean...X"      mean by subject and activity from the original feature called "tGravityAcc.mean...X"
7. "Subj.Activity.Mean.of...Time.Domain.Gravity.Accel.mean...Y"      mean by subject and activity from the original feature called "tGravityAcc.mean...Y"
8. "Subj.Activity.Mean.of...Time.Domain.Gravity.Accel.mean...Z"      mean by subject and activity from the original feature called "tGravityAcc.mean...Z"
9. "Subj.Activity.Mean.of...Time.Domain.Body.AccelJerk.mean...X"      mean by subject and activity from the original feature called "tBodyAccJerk.mean...X"
10. "Subj.Activity.Mean.of...Time.Domain.Body.AccelJerk.mean...Y"      mean by subject and activity from the original feature called "tBodyAccJerk.mean...Y"
11. "Subj.Activity.Mean.of...Time.Domain.Body.AccelJerk.mean...Z"      mean by subject and activity from the original feature called "tBodyAccJerk.mean...Z"
12. "Subj.Activity.Mean.of...Time.Domain.Body.Gyro.mean...X"      mean by subject and activity from the original feature called "tBodyGyro.mean...X"
13. "Subj.Activity.Mean.of...Time.Domain.Body.Gyro.mean...Y"      mean by subject and activity from the original feature called "tBodyGyro.mean...Y"
14. "Subj.Activity.Mean.of...Time.Domain.Body.Gyro.mean...Z"      mean by subject and activity from the original feature called "tBodyGyro.mean...Z"
15. "Subj.Activity.Mean.of...Time.Domain.Body.GyroJerk.mean...X"      mean by subject and activity from the original feature called "tBodyGyroJerk.mean...X"
16. "Subj.Activity.Mean.of...Time.Domain.Body.GyroJerk.mean...Y"      mean by subject and activity from the original feature called "tBodyGyroJerk.mean...Y"
17. "Subj.Activity.Mean.of...Time.Domain.Body.GyroJerk.mean...Z"      mean by subject and activity from the original feature called "tBodyGyroJerk.mean...Z"
18. "Subj.Activity.Mean.of...Time.Domain.Body.AccelMag.mean.."      mean by subject and activity from the original feature called "tBodyAccMag.mean.."
19. "Subj.Activity.Mean.of...Time.Domain.Gravity.AccelMag.mean.."      mean by subject and activity from the original feature called "tGravityAccMag.mean.."
20. "Subj.Activity.Mean.of...Time.Domain.Body.AccelJerkMag.mean.."      mean by subject and activity from the original feature called "tBodyAccJerkMag.mean.."
21. "Subj.Activity.Mean.of...Time.Domain.Body.GyroMag.mean.."      mean by subject and activity from the original feature called "tBodyGyroMag.mean.."
22. "Subj.Activity.Mean.of...Time.Domain.Body.GyroJerkMag.mean.."      mean by subject and activity from the original feature called "tBodyGyroJerkMag.mean.."
23. "Subj.Activity.Mean.of...Freq.Domain.Body.Accel.mean...X"      mean by subject and activity from the original feature called "fBodyAcc.mean...X"
24. "Subj.Activity.Mean.of...Freq.Domain.Body.Accel.mean...Y"      mean by subject and activity from the original feature called "fBodyAcc.mean...Y"
25. "Subj.Activity.Mean.of...Freq.Domain.Body.Accel.mean...Z"      mean by subject and activity from the original feature called "fBodyAcc.mean...Z"
26. "Subj.Activity.Mean.of...Freq.Domain.Body.AccelJerk.mean...X"      mean by subject and activity from the original feature called "fBodyAccJerk.mean...X"
27. "Subj.Activity.Mean.of...Freq.Domain.Body.AccelJerk.mean...Y"      mean by subject and activity from the original feature called "fBodyAccJerk.mean...Y"
28. "Subj.Activity.Mean.of...Freq.Domain.Body.AccelJerk.mean...Z"      mean by subject and activity from the original feature called "fBodyAccJerk.mean...Z"
29. "Subj.Activity.Mean.of...Freq.Domain.Body.Gyro.mean...X"      mean by subject and activity from the original feature called "fBodyGyro.mean...X"
30. "Subj.Activity.Mean.of...Freq.Domain.Body.Gyro.mean...Y"      mean by subject and activity from the original feature called "fBodyGyro.mean...Y"
31. "Subj.Activity.Mean.of...Freq.Domain.Body.Gyro.mean...Z"      mean by subject and activity from the original feature called "fBodyGyro.mean...Z"
32. "Subj.Activity.Mean.of...Freq.Domain.Body.AccelMag.mean.."      mean by subject and activity from the original feature called "fBodyAccMag.mean.."
33. "Subj.Activity.Mean.of...Freq.Domain.Body.AccelJerkMag.mean.."      mean by subject and activity from the original feature called "fBodyBodyAccJerkMag.mean.."
34. "Subj.Activity.Mean.of...Freq.Domain.Body.GyroMag.mean.."      mean by subject and activity from the original feature called "fBodyBodyGyroMag.mean.."
35. "Subj.Activity.Mean.of...Freq.Domain.Body.GyroJerkMag.mean.."      mean by subject and activity from the original feature called "fBodyBodyGyroJerkMag.mean.."
36. "Subj.Activity.Mean.of...Time.Domain.Body.Accel.stdev...X"      mean by subject and activity from the original feature called "tBodyAcc.std...X"
37. "Subj.Activity.Mean.of...Time.Domain.Body.Accel.stdev...Y"      mean by subject and activity from the original feature called "tBodyAcc.std...Y"
38. "Subj.Activity.Mean.of...Time.Domain.Body.Accel.stdev...Z"      mean by subject and activity from the original feature called "tBodyAcc.std...Z"
39. "Subj.Activity.Mean.of...Time.Domain.Gravity.Accel.stdev...X"      mean by subject and activity from the original feature called "tGravityAcc.std...X"
40. "Subj.Activity.Mean.of...Time.Domain.Gravity.Accel.stdev...Y"      mean by subject and activity from the original feature called "tGravityAcc.std...Y"
41. "Subj.Activity.Mean.of...Time.Domain.Gravity.Accel.stdev...Z"      mean by subject and activity from the original feature called "tGravityAcc.std...Z"
42. "Subj.Activity.Mean.of...Time.Domain.Body.AccelJerk.stdev...X"      mean by subject and activity from the original feature called "tBodyAccJerk.std...X"
43. "Subj.Activity.Mean.of...Time.Domain.Body.AccelJerk.stdev...Y"      mean by subject and activity from the original feature called "tBodyAccJerk.std...Y"
44. "Subj.Activity.Mean.of...Time.Domain.Body.AccelJerk.stdev...Z"      mean by subject and activity from the original feature called "tBodyAccJerk.std...Z"
45. "Subj.Activity.Mean.of...Time.Domain.Body.Gyro.stdev...X"      mean by subject and activity from the original feature called "tBodyGyro.std...X"
46. "Subj.Activity.Mean.of...Time.Domain.Body.Gyro.stdev...Y"      mean by subject and activity from the original feature called "tBodyGyro.std...Y"
47. "Subj.Activity.Mean.of...Time.Domain.Body.Gyro.stdev...Z"      mean by subject and activity from the original feature called "tBodyGyro.std...Z"
48. "Subj.Activity.Mean.of...Time.Domain.Body.GyroJerk.stdev...X"      mean by subject and activity from the original feature called "tBodyGyroJerk.std...X"
49. "Subj.Activity.Mean.of...Time.Domain.Body.GyroJerk.stdev...Y"      mean by subject and activity from the original feature called "tBodyGyroJerk.std...Y"
50. "Subj.Activity.Mean.of...Time.Domain.Body.GyroJerk.stdev...Z"      mean by subject and activity from the original feature called "tBodyGyroJerk.std...Z"
51. "Subj.Activity.Mean.of...Time.Domain.Body.AccelMag.stdev.."      mean by subject and activity from the original feature called "tBodyAccMag.std.."
52. "Subj.Activity.Mean.of...Time.Domain.Gravity.AccelMag.stdev.."      mean by subject and activity from the original feature called "tGravityAccMag.std.."
53. "Subj.Activity.Mean.of...Time.Domain.Body.AccelJerkMag.stdev.."      mean by subject and activity from the original feature called "tBodyAccJerkMag.std.."
54. "Subj.Activity.Mean.of...Time.Domain.Body.GyroMag.stdev.."      mean by subject and activity from the original feature called "tBodyGyroMag.std.."
55. "Subj.Activity.Mean.of...Time.Domain.Body.GyroJerkMag.stdev.."      mean by subject and activity from the original feature called "tBodyGyroJerkMag.std.."
56. "Subj.Activity.Mean.of...Freq.Domain.Body.Accel.stdev...X"      mean by subject and activity from the original feature called "fBodyAcc.std...X"
57. "Subj.Activity.Mean.of...Freq.Domain.Body.Accel.stdev...Y"      mean by subject and activity from the original feature called "fBodyAcc.std...Y"
58. "Subj.Activity.Mean.of...Freq.Domain.Body.Accel.stdev...Z"      mean by subject and activity from the original feature called "fBodyAcc.std...Z"
59. "Subj.Activity.Mean.of...Freq.Domain.Body.AccelJerk.stdev...X"      mean by subject and activity from the original feature called "fBodyAccJerk.std...X"
60. "Subj.Activity.Mean.of...Freq.Domain.Body.AccelJerk.stdev...Y"      mean by subject and activity from the original feature called "fBodyAccJerk.std...Y"
61. "Subj.Activity.Mean.of...Freq.Domain.Body.AccelJerk.stdev...Z"      mean by subject and activity from the original feature called "fBodyAccJerk.std...Z"
62. "Subj.Activity.Mean.of...Freq.Domain.Body.Gyro.stdev...X"      mean by subject and activity from the original feature called "fBodyGyro.std...X"
63. "Subj.Activity.Mean.of...Freq.Domain.Body.Gyro.stdev...Y"      mean by subject and activity from the original feature called "fBodyGyro.std...Y"
64. "Subj.Activity.Mean.of...Freq.Domain.Body.Gyro.stdev...Z"      mean by subject and activity from the original feature called "fBodyGyro.std...Z"
65. "Subj.Activity.Mean.of...Freq.Domain.Body.AccelMag.stdev.."      mean by subject and activity from the original feature called "fBodyAccMag.std.."
66. "Subj.Activity.Mean.of...Freq.Domain.Body.AccelJerkMag.stdev.."      mean by subject and activity from the original feature called "fBodyBodyAccJerkMag.std.."
67. "Subj.Activity.Mean.of...Freq.Domain.Body.GyroMag.stdev.."      mean by subject and activity from the original feature called "fBodyBodyGyroMag.std.."
68. "Subj.Activity.Mean.of...Freq.Domain.Body.GyroJerkMag.stdev.."      mean by subject and activity from the original feature called "fBodyBodyGyroJerkMag.std.."
