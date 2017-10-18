function [ ConfusionMatrix, TP, FP, FN, TN ] = make_confusionmatrix( ActualY, EstimatedY )
%MAKE_CONFUSIONMATRIX Make confusion matrix

TP = length( find( ActualY==1 & EstimatedY==1 ) );
FP = length( find( ActualY==-1 & EstimatedY==1 ) );
FN = length( find( ActualY==1 & EstimatedY==-1 ) );
TN = length( find( ActualY==-1 & EstimatedY==-1 ) );
ConfusionMatrix = [TP FN ; FP TN ];

end

