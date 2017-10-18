from  DataSet import DataSet
from sklearn.ensemble import RandomForestClassifier
from sklearn.preprocessing import Imputer

ds = DataSet('C:\\Users\\stuparm\\Desktop\\master\\dataset_cleared.csv')
ds.empty(20)

colCount = ds.colCount
resultMatrix = []

for c in range(0,colCount-1):    
    X,Y,I,X_,Y_,X_X = ds.splitDataSet(c)
    # X  - data set without single column, contains null values
    # Y  - single column (missing one)
    # I  - indices (positions) of null values in column Y (missing one)
    # X_ - data without rows I, without row numbers found in I
    # Y_ - missing column without rows I
    # X_X_ - data at the rows I, calculated from X (also without column number c)

    clf = RandomForestClassifier(n_estimators=10)
    
    
    
    imp = Imputer(missing_values='NaN', strategy='mean', axis=0)
    X_ = imp.fit_transform(X_)
    Y_ = imp.fit_transform(Y_)
    X_X = imp.fit_transform(X_X)
    
   
    Y_ = Y_.transpose()
    
    clf = clf.fit(X_,Y_)
    Y_Y = clf.predict(X_X)
    
    Z_Z = ds.full[I,c]
    M = [Z_Z.t,Y_Y]
    print(M)
    
    break
    
#print(ds.data)
#print('')
#print(X)
#print('')
#print(Y)
#print('')
#print(I)
#print('')
#print(X_)
#print('')
#print(Y_)
#print('')
#print(X_X)

