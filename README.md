## README ##
### Human Activity Recognition Using Smartphones ###
#### Average Means and Standard Deviations ####

The purpose of this project is to reshape the "Human Activity Recognition Using Smartphones Data Set" which is described and provided here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#### Original Data Set Description ####

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

#### This project includes the following files ####

 - 'README.md'
 - 'CodeBook.md': Shows information about the variables used on the feature vector.
 - 'run_analysis.R': The R script used to reshape the source data

#### Summarized Data Set ####

The 'run_analysis.R' reshapes the source data into a single text file containing the following information:
 - An identifier of the subject who carried out the experiment.
 - Its activity label.
 - A 66-feature vector of average mean and standard deviation domain variables. 