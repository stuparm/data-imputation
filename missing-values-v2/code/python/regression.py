import numpy as np
from sklearn import  linear_model



# Load
training_file = '../../dataset/diabetes/training/training.csv'
test_file = '../../dataset/diabetes/test/test.csv'
training = np.genfromtxt(training_file, delimiter = ',')
test = np.genfromtxt(test_file, delimiter = ',')

X = training[:,:-1]
Y = training[:,-1]
# Linear regression
regr = linear_model.LinearRegression()
regr.fit(X, Y)

print('---------------------------------------------------')
print('Coefficients:')
print(regr.coef_)

# Test
X_test = test[:,:-1]
Y_test = test[:,-1]
print('---------------------------------------------------')
print('Mean squared error:')
print(np.mean((regr.predict(X_test) - Y_test) ** 2))
print('---------------------------------------------------')
print('Variance score:')
print(regr.score(X_test, Y_test))



