# Codebook

This document contains information about the [./secondary.data.set.csv](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/secondary.data.set.csv) and [./secondary.data.set.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/secondary.data.set.txt) files.

Labels were taken from [./UCI HAR Dataset/features.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/UCI%20HAR%20Dataset/features.txt) file.  An attempt was made to clean-up the Variable names by first by making lower case, removing non alpha numeric characters, converting spaces to underscores.

## about this data set
The subject number and activity were put in the first two columns for easy reading.
All of the Mean and Standard deviation observations were extracted from the main data source (per the instructions from the class).  We ignored "angle" columns as they are made up of other observations and are not part of the raw observations.  
This data set is the average of the variables for each test run by the subject.  The data collected from the raw data set was grouped by subject number and then by activity (test performed).

|Column index|Variable name|Description|
|-----|-----|-----|
|1|subjectnum|Subjects assigned number|
|2|activitylabel|Activity related to the test|
|3|1_tbodyaccmeanx|Mean for all time body acceleration signal mean x axis tests performed by test subject|
|4|2_tbodyaccmeany|Mean for all time body acceleration signal mean y axis tests performed by test subject|
|5|3_tbodyaccmeanz|Mean for all time body acceleration signal mean z axis tests performed by test subject|
|6|4_tbodyaccstdx|Mean for all time body acceleration signal standard deviation x axis tests performed by test subject|
|7|5_tbodyaccstdy|Mean for all time body acceleration signal standard deviation y axis tests performed by test subject|
|8|6_tbodyaccstdz|Mean for all time body acceleration signal standard deviation z axis tests performed by test subject|
|9|41_tgravityaccmeanx|Mean for all time gravity acceleration signal mean x axis tests performed by test subject|
|10|42_tgravityaccmeany|Mean for all time gravity acceleration signal mean y axis tests performed by test subject|
|11|43_tgravityaccmeanz|Mean for all time gravity acceleration signal mean z axis tests performed by test subject|
|12|44_tgravityaccstdx|Mean for all time gravity acceleration signal standard deviation x axis tests performed by test subject|
|13|45_tgravityaccstdy|Mean for all time gravity acceleration signal standard deviation y axis tests performed by test subject|
|14|46_tgravityaccstdz|Mean for all time gravity acceleration signal standard deviation z axis tests performed by test subject|
|15|81_tbodyaccjerkmeanx|Mean for all time body acceleration signal jerk mean x axis tests performed by test subject|
|16|82_tbodyaccjerkmeany|Mean for all time body acceleration signal jerk mean y axis tests performed by test subject|
|17|83_tbodyaccjerkmeanz|Mean for all time body acceleration signal jerk mean z axis tests performed by test subject|
|18|84_tbodyaccjerkstdx|Mean for all time body acceleration signal jerk standard deviation x axis tests performed by test subject|
|19|85_tbodyaccjerkstdy|Mean for all time body acceleration signal jerk standard deviation y axis tests performed by test subject|
|20|86_tbodyaccjerkstdz|Mean for all time body acceleration signal jerk standard deviation z axis tests performed by test subject|
|21|121_tbodygyromeanx|Mean for all time body gyroscope signal mean x axis tests performed by test subject|
|22|122_tbodygyromeany|Mean for all time body gyroscope signal mean y axis tests performed by test subject|
|23|123_tbodygyromeanz|Mean for all time body gyroscope signal mean z axis tests performed by test subject|
|24|124_tbodygyrostdx|Mean for all time body gyroscope signal standard deviation x axis tests performed by test subject|
|25|125_tbodygyrostdy|Mean for all time body gyroscope signal standard deviation y axis tests performed by test subject|
|26|126_tbodygyrostdz|Mean for all time body gyroscope signal standard deviation z axis tests performed by test subject|
|27|161_tbodygyrojerkmeanx|Mean for all time body gyroscope signal jerk mean x axis tests performed by test subject|
|28|162_tbodygyrojerkmeany|Mean for all time body gyroscope signal jerk mean y axis tests performed by test subject|
|29|163_tbodygyrojerkmeanz|Mean for all time body gyroscope signal jerk mean z axis tests performed by test subject|
|30|164_tbodygyrojerkstdx|Mean for all time body gyroscope signal jerk standard deviation x axis tests performed by test subject|
|31|165_tbodygyrojerkstdy|Mean for all time body gyroscope signal jerk standard deviation y axis tests performed by test subject|
|32|166_tbodygyrojerkstdz|Mean for all time body gyroscope signal jerk standard deviation z axis tests performed by test subject|
|33|201_tbodyaccmagmean|Mean for all time body acceleration signal magnitude mean|
|34|202_tbodyaccmagstd|Mean for all time body acceleration signal magnitude standard deviation|
|35|214_tgravityaccmagmean|Mean for all time gravity acceleration signal magnitude mean|
|36|215_tgravityaccmagstd|Mean for all time gravity acceleration signal magnitude standard deviation|
|37|227_tbodyaccjerkmagmean|Mean for all time body acceleration signal jerk magnitude mean|
|38|228_tbodyaccjerkmagstd|Mean for all time body acceleration signal jerk magnitude standard deviation|
|39|240_tbodygyromagmean|Mean for all time body gyroscope signal magnitude mean|
|40|241_tbodygyromagstd|Mean for all time body gyroscope signal magnitude standard deviation|
|41|253_tbodygyrojerkmagmean|Mean for all time body gyroscope signal jerk magnitude mean|
|42|254_tbodygyrojerkmagstd|Mean for all time body gyroscope signal jerk magnitude standard deviation|
|43|266_fbodyaccmeanx|Mean for all frequency body acceleration signal mean x axis tests performed by test subject|
|44|267_fbodyaccmeany|Mean for all frequency body acceleration signal mean y axis tests performed by test subject|
|45|268_fbodyaccmeanz|Mean for all frequency body acceleration signal mean z axis tests performed by test subject|
|46|269_fbodyaccstdx|Mean for all frequency body acceleration signal standard deviation x axis tests performed by test subject|
|47|270_fbodyaccstdy|Mean for all frequency body acceleration signal standard deviation y axis tests performed by test subject|
|48|271_fbodyaccstdz|Mean for all frequency body acceleration signal standard deviation z axis tests performed by test subject|
|49|345_fbodyaccjerkmeanx|Mean for all frequency body acceleration signal jerk mean x axis tests performed by test subject|
|50|346_fbodyaccjerkmeany|Mean for all frequency body acceleration signal jerk mean y axis tests performed by test subject|
|51|347_fbodyaccjerkmeanz|Mean for all frequency body acceleration signal jerk mean z axis tests performed by test subject|
|52|348_fbodyaccjerkstdx|Mean for all frequency body acceleration signal jerk standard deviation x axis tests performed by test subject|
|53|349_fbodyaccjerkstdy|Mean for all frequency body acceleration signal jerk standard deviation y axis tests performed by test subject|
|54|350_fbodyaccjerkstdz|Mean for all frequency body acceleration signal jerk standard deviation z axis tests performed by test subject|
|55|424_fbodygyromeanx|Mean for all frequency body gyroscope signal mean x axis tests performed by test subject|
|56|425_fbodygyromeany|Mean for all frequency body gyroscope signal mean y axis tests performed by test subject|
|57|426_fbodygyromeanz|Mean for all frequency body gyroscope signal mean z axis tests performed by test subject|
|58|427_fbodygyrostdx|Mean for all frequency body gyroscope signal standard deviation x axis tests performed by test subject|
|59|428_fbodygyrostdy|Mean for all frequency body gyroscope signal standard deviation y axis tests performed by test subject|
|60|429_fbodygyrostdz|Mean for all frequency body gyroscope signal standard deviation z axis tests performed by test subject|
|61|503_fbodyaccmagmean|Mean for all frequency body acceleration signal magnitude mean|
|62|504_fbodyaccmagstd|Mean for all frequency body acceleration signal magnitude standard deviation|
|63|516_fbodyaccjerkmagmean|Mean for all frequency body acceleration signal jerk magnitude mean|
|64|517_fbodyaccjerkmagstd|Mean for all frequency body acceleration signal jerk magnitude standard deviation|
|65|529_fbodygyromagmean|Mean for all frequency body gyroscope signal magnitude mean|
|66|530_fbodygyromagstd|Mean for all frequency body gyroscope signal magnitude standard deviation|
|67|542_fbodygyrojerkmagmean|Mean for all frequency body gyroscope signal jerk magnitude mean|
|68|543_fbodygyrojerkmagstd|Mean for all frequency body gyroscope signal jerk magnitude standard deviation|
