% Load data.csv
% X is data set and SampleName is the sample names.

X = csvread( 'data.csv', 1, 1);
[SampleNametmp,SampleName] = xlsread( 'data.csv', ['A2:A' num2str(size(X,1)+1)] );
if isempty(SampleName)
    SampleName = cellstr(num2str(SampleNametmp));
end