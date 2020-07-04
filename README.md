Within Subject Part:

For this part, one by one (train data and test data for Subject 1,...,8) data was used. (P01T for P01E, etc.)
First, the training data(RawEEGData:80x12x4096) was randomly splitted into two parts. (Training Data: 40x12x4096 and Test Data: 40x12x4096) 
For every subject, the best channel or channels were determined and the best feature extraction method or methods were used.
And For classfication part; different methods were experienced but kNN(k-Nearest Neighbors) classification method gave the best results.
In kNN method, finding the best "k" parameter is the key. For this purpose, random subsampling cross validation was used.
After creating feature vectors and determining the best "k, the classification accuracy was used for the results. 
In the highest classification accuracy case (by percentage), test data(40x12x4096) was classified.

As result, the best parameters were set in MATLAB, so just run the code and see the "Det_test_class" values in program for each Subject.
For example: for Subject 1, just run the S01.m file in MATLAB and see the results. for Subject 2, run the S02.m file, etc.

Cross Subject Part: 
For this part, 8 train data (P01,...,P08) files were used together. So, new training data size was 640x12x4096. 
And this data was randomly splitted into two parts (Training Data: 320x12x4096 and Test Data: 320x12x4096). 
Same methods with the Within Subject Part were used and obtained the best accuracies. 
In the best case, the test data (subject 9 and subject 10) were classified.

As result, the best parameters were set in MATLAB, so just run the code and see the "Det_test_class" values in program for each Subject.
For example: for Subject 9, just run the S09.m file in MATLAB and see the results. for Subject 10, run the S10.m file, etc.

NOTE: In some subjects, different feature extraction methods were used (not occur in MATLAB), So just add all attachment files into same directory.


