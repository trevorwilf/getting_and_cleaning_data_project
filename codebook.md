# Codebook

This document contains information about the [./secondary.data.set.csv](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/secondary.data.set.csv) and [./secondary.data.set.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/secondary.data.set.txt) files.

Labels were taken from [./UCI HAR Dataset/features.txt](https://github.com/trevorwilf/getting_and_cleaning_data_project/blob/master/UCI%20HAR%20Dataset/features.txt) file.  An attempt was made to cleanup the Variable names by first by making lower case, removing non alpha numeric characters, converting spaces to underscores.

The subject number and activity were put in the first two collumns for easy reading.

All of the Mean and Standard deviation observations were extracted from the main data source (per the instructions from the class).


||Variable name |Description|
|-------|---------|---------|
|1|subjectnum|Subjects assigned number|
|2|activitylabel|Activity related to the test: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING|
|3|1_tbodyaccmeanx|time body acceleration signal mean x axis|
|4|2_tbodyaccmeany|time body acceleration signal mean y axis|
|5|3_tbodyaccmeanz|time body acceleration signal mean z axis|
|6|4_tbodyaccstdx|time body acceleration signal standard deviation x axis|
|7|5_tbodyaccstdy|time body acceleration signal standard deviation y axis|
|8|6_tbodyaccstdz|time body acceleration signal standard deviation z axis|
|9|41_tgravityaccmeanx|time gravity acceleration signal mean x axis|
|10|42_tgravityaccmeany|time gravity acceleration signal mean y axis|
|11|43_tgravityaccmeanz|time gravity acceleration signal mean z axis|
|12|44_tgravityaccstdx|time gravity acceleration signal standard deviation x axis|
|13|45_tgravityaccstdy|time gravity acceleration signal standard deviation y axis|
|14|46_tgravityaccstdz|time gravity acceleration signal standard deviation z axis|
|15|81_tbodyaccjerkmeanx|time body acceleration signal jerk mean x axis|
|16|82_tbodyaccjerkmeany|time body acceleration signal jerk mean y axis|
|17|83_tbodyaccjerkmeanz|time body acceleration signal jerk mean z axis|
|18|84_tbodyaccjerkstdx|time body acceleration signal jerk standard deviation x axis|
|19|85_tbodyaccjerkstdy|time body acceleration signal jerk standard deviation y axis|
|20|86_tbodyaccjerkstdz|time body acceleration signal jerk standard deviation z axis|
|21|121_tbodygyromeanx|time body gyroscope signal mean x axis|
|22|122_tbodygyromeany|time body gyroscope signal mean y axis|
|23|123_tbodygyromeanz|time body gyroscope signal mean z axis|
|24|124_tbodygyrostdx|time body gyroscope signal standard deviation x axis|
|25|125_tbodygyrostdy|time body gyroscope signal standard deviation y axis|
|26|126_tbodygyrostdz|time body gyroscope signal standard deviation z axis|
|27|161_tbodygyrojerkmeanx|time body gyroscope signal jerk mean x axis|
|28|162_tbodygyrojerkmeany|time body gyroscope signal jerk mean y axis|
|29|163_tbodygyrojerkmeanz|time body gyroscope signal jerk mean z axis|
|30|164_tbodygyrojerkstdx|time body gyroscope signal jerk standard deviation x axis|
|31|165_tbodygyrojerkstdy|time body gyroscope signal jerk standard deviation y axis|
|32|166_tbodygyrojerkstdz|time body gyroscope signal jerk standard deviation z axis|
|33|201_tbodyaccmagmean|time body acceleration signal magnitude mean|
|34|202_tbodyaccmagstd|time body acceleration signal magnitude standard deviation|
|35|214_tgravityaccmagmean|time gravity acceleration signal magnitude mean|
|36|215_tgravityaccmagstd|time gravity acceleration signal magnitude standard deviation|
|37|227_tbodyaccjerkmagmean|time body acceleration signal jerk magnitude mean|
|38|228_tbodyaccjerkmagstd|time body acceleration signal jerk magnitude standard deviation|
|39|240_tbodygyromagmean|time body gyroscope signal magnitude mean|
|40|241_tbodygyromagstd|time body gyroscope signal magnitude standard deviation|
|41|253_tbodygyrojerkmagmean|time body gyroscope signal jerk magnitude mean|
|42|254_tbodygyrojerkmagstd|time body gyroscope signal jerk magnitude standard deviation|
|43|266_fbodyaccmeanx|frequency body acceleration signal mean x axis|
|44|267_fbodyaccmeany|frequency body acceleration signal mean y axis|
|45|268_fbodyaccmeanz|frequency body acceleration signal mean z axis|
|46|269_fbodyaccstdx|frequency body acceleration signal standard deviation x axis|
|47|270_fbodyaccstdy|frequency body acceleration signal standard deviation y axis|
|48|271_fbodyaccstdz|frequency body acceleration signal standard deviation z axis|
|49|294_fbodyaccmeanfreqx|frequency body acceleration signal mean frequency x axis (Weighted average of the frequency components to obtain a mean frequency)|
|50|295_fbodyaccmeanfreqy|frequency body acceleration signal mean frequency y axis (Weighted average of the frequency components to obtain a mean frequency)|
|51|296_fbodyaccmeanfreqz|frequency body acceleration signal mean frequency z axis(Weighted average of the frequency components to obtain a mean frequency)|
|52|345_fbodyaccjerkmeanx|frequency body acceleration signal jerk mean x axis|
|53|346_fbodyaccjerkmeany|frequency body acceleration signal jerk mean y axis|
|54|347_fbodyaccjerkmeanz|frequency body acceleration signal jerk mean z axis|
|55|348_fbodyaccjerkstdx|frequency body acceleration signal jerk standard deviation x axis|
|56|349_fbodyaccjerkstdy|frequency body acceleration signal jerk standard deviation y axis|
|57|350_fbodyaccjerkstdz|frequency body acceleration signal jerk standard deviation z axis|
|58|373_fbodyaccjerkmeanfreqx|frequency body acceleration signal jerk mean frequency x axis (Weighted average of the frequency components to obtain a mean frequency)|
|59|374_fbodyaccjerkmeanfreqy|frequency body acceleration signal jerk mean frequency y axis (Weighted average of the frequency components to obtain a mean frequency)|
|60|375_fbodyaccjerkmeanfreqz|frequency body acceleration signal jerk mean frequency z axis (Weighted average of the frequency components to obtain a mean frequency)|
|61|424_fbodygyromeanx|frequency body gyroscope signal mean x axis|
|62|425_fbodygyromeany|frequency body gyroscope signal mean y axis|
|63|426_fbodygyromeanz|frequency body gyroscope signal mean z axis|
|64|427_fbodygyrostdx|frequency body gyroscope signal standard deviation x axis|
|65|428_fbodygyrostdy|frequency body gyroscope signal standard deviation y axis|
|66|429_fbodygyrostdz|frequency body gyroscope signal standard deviation z axis|
|67|452_fbodygyromeanfreqx|frequency body gyroscope signal mean frequency x axis (Weighted average of the frequency components to obtain a mean frequency)|
|68|453_fbodygyromeanfreqy|frequency body gyroscope signal mean frequency y axis (Weighted average of the frequency components to obtain a mean frequency)|
|69|454_fbodygyromeanfreqz|frequency body gyroscope signal mean frequency z axis (Weighted average of the frequency components to obtain a mean frequency)|
|70|503_fbodyaccmagmean|frequency body acceleration signal magnitude mean|
|71|504_fbodyaccmagstd|frequency body acceleration signal magnitude standard deviation|
|72|513_fbodyaccmagmeanfreq|frequency body acceleration signal magnitude mean freq|
|73|516_fbodyaccjerkmagmean|frequency body acceleration signal jerk magnitude mean|
|74|517_fbodyaccjerkmagstd|frequency body acceleration signal jerk magnitude standard deviation|
|75|526_fbodyaccjerkmagmeanfreq|frequency body acceleration signal jerk magnitude mean freq|
|76|529_fbodygyromagmean|frequency body gyroscope signal magnitude mean|
|77|530_fbodygyromagstd|frequency body gyroscope signal magnitude standard deviation|
|78|539_fbodygyromagmeanfreq|frequency body gyroscope signal magnitude mean freq|
|79|542_fbodygyrojerkmagmean|frequency body gyroscope signal jerk magnitude mean|
|80|543_fbodygyrojerkmagstd|frequency body gyroscope signal jerk magnitude standard deviation|
|81|552_fbodygyrojerkmagmeanfreq|frequency body gyroscope signal jerk magnitude mean freq|
|82|555_angletbodyaccmeangravity|angle time body acceleration signal mean gravit y axis|
|83|556_angletbodyaccjerkmeangravitymean|angle time body acceleration signal jerk mean gravity mean|
|84|557_angletbodygyromeangravitymean|angle time body gyroscope signal mean gravity mean|
|85|558_angletbodygyrojerkmeangravitymean|angle time body gyroscope signal jerk mean gravity mean|
|86|559_anglexgravitymean|angle x axis gravity mean|
|87|560_angleygravitymean|angleygravity mean|
|88|561_anglezgravitymean|anglezgravity mean|
