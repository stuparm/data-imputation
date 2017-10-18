% Load data.csv and data_prediction1.csv
% originalX and originaly are X and y of training data set, respectively.

data = csvread( 'data.csv', 1, 1);
originalX = data(:,2:end);
originaly = data(:,1);
