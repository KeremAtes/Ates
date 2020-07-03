clear all
clc

load parsed_P08T

Label=Labels;
Train_Data=RawEEGData;

for i=1:size(Train_Data,1)
    
    Trial=Train_Data(i,12,:);
    Trial2=Train_Data(i,7,:);
     
    FV1(i,:)=[    moment(Trial,2)  sqrt(var(Trial)) prctile(Trial,5)     ]; 
    FV2(i,:)=[    var(diff(Trial2))   rms(Trial2)   std(Trial2)    ];
end
FV_Train=[FV1 FV2];
clear FV1 FV2 

clear RawEEGData
load parsed_P08E

Test_Data=RawEEGData;

for i=1:size(Test_Data,1)
    
     Trial=Test_Data(i,12,:); 
     Trial2=Test_Data(i,7,:);
               
     FV1(i,:)=[   moment(Trial,2)  sqrt(var(Trial))   prctile(Trial,5)  ]; 
     FV2(i,:)=[   var(diff(Trial2))   rms(Trial2)   std(Trial2)    ]; 
   
end
FV_Test=[FV1 FV2];

Det_test_class = knnclassify(FV_Test,FV_Train,Label,1,'euclidean','nearest');

