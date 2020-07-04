clear all
clc

load parsed_P02T

Label=Labels;
Train_Data=RawEEGData;

for i=1:size(Train_Data,1)
    
    Trial=Train_Data(i,3,:);
     
    FV1(i,:)=[     mean(diff(Trial)) sum(diff(Trial)) max(Trial) mean(Trial)  var(diff(Trial)) ]; 

end
FV_Train=[FV1];
clear FV1 

clear RawEEGData
load parsed_P02E

Test_Data=RawEEGData;

for i=1:size(Test_Data,1)
    
   Trial=Test_Data(i,3,:);
                  
   FV1(i,:)=[    mean(diff(Trial)) sum(diff(Trial)) max(Trial) mean(Trial)  var(diff(Trial)) ]; 
   
end
FV_Test=[FV1];

Det_test_class = knnclassify(FV_Test,FV_Train,Label,7,'euclidean','nearest');

