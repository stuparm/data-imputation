
from sklearn import neural_network
import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import confusion_matrix


data = np.genfromtxt('C:\\Users\\stuparm\\Desktop\\master\\dataset_cleared.csv', delimiter=',')

#data = pd.read_csv('C:\\Users\\stuparm\\Desktop\\master\\dataset_cleared.csv')
X = data[:,0:9]
Y = data[:,9]

nn = neural_network.MLPClassifier(solver='lbfgs', alpha=1e-5,hidden_layer_sizes=(10,10), random_state=1)


nn.fit(X,Y)

#w = lr.predict_proba(X)
#print(w)
#print(X)
#print(Y)

#boston = datasets.load_boston()
#y = boston.target

Z = nn.predict(X)
#predicted = cross_val_predict(lr, X, Y, cv=10)
m = confusion_matrix(Y, Z)
print(m)
