trainingPath = '../dataset/diabetes/training/training.csv';
testPath = '../dataset/diabetes/test/test.csv';

training = dlmread(trainingPath);
test = dlmread(testPath);

X = training(:, 1:10); 
Y = training(:, 11); 

Xtest = test(:, 1:10);
Ytest = test(:, 11);

d = size(X,2); % Number of features.

n = length(Y);    % Number of training examples
m = length(Ytest);% Number of test examples

Xo = ones(n,1);
XoTest = ones(m,1);

X = [Xo X];
Xtest = [XoTest Xtest];

theta = (pinv(X' * X) * X' * Y)'

Ypredict = sum((Xtest.*theta)')';
MSE = mean((Ypredict-Ytest).^2)
MSRE = sqrt(MSE)
