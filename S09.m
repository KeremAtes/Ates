clear all
clc

load parsed_P01T      
Label1=Labels;
TrainData1=RawEEGData;

load parsed_P02T
Label2=Labels;
TrainData2=RawEEGData;

load parsed_P03T
Label3=Labels;
TrainData3=RawEEGData;

load parsed_P04T
Label4=Labels;
TrainData4=RawEEGData;

load parsed_P05T      
Label5=Labels;
TrainData5=RawEEGData;

load parsed_P06T
Label6=Labels;
TrainData6=RawEEGData;

load parsed_P07T
Label7=Labels;
TrainData7=RawEEGData;

load parsed_P08T
Label8=Labels;
TrainData8=RawEEGData;

Label=[Label1; Label2; Label3; Label4; Label5; Label6; Label7; Label8];
Train_Data=[TrainData1; TrainData2; TrainData3; TrainData4; TrainData5; TrainData6; TrainData7; TrainData8];

for i=1:size(Train_Data,1)
    
    Trial=Train_Data(i,12,:);
    Trial2=Train_Data(i,7,:);
     
    FV1(i,:)=[    moment(Trial,2)  sqrt(var(Trial)) prctile(Trial,5)     ]; 
    FV2(i,:)=[    var(diff(Trial2))   rms(Trial2)   std(Trial2)    ];
end
FV_Train=[FV1 FV2];
clear FV1 FV2 

clear RawEEGData
load parsed_P09E

Test_Data=RawEEGData;

for i=1:size(Test_Data,1)
    
     Trial=Test_Data(i,12,:); 
     Trial2=Test_Data(i,7,:);
               
     FV1(i,:)=[   moment(Trial,2)  sqrt(var(Trial))   prctile(Trial,5)  ]; 
     FV2(i,:)=[   var(diff(Trial2))   rms(Trial2)   std(Trial2)    ]; 
   
end
FV_Test=[FV1 FV2];

Det_test_class = knnclassify(FV_Test,FV_Train,Label,1,'euclidean','nearest');

