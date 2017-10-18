# -*- coding: utf-8 -*-
import numpy as np
from random import randint
import sys
"""
Created on Wed Feb 22 20:43:36 2017

@author: stuparm
"""
class DataSet:
    
    
    def __init__(self, path):
        self.data = np.genfromtxt(path, delimiter=',')
        self.full = np.genfromtxt(path, delimiter=',')
    
    def empty(self, percentage):
        self.rowCount = len(self.data)
        self.colCount = len(self.data[0])
        self.total = self.rowCount * self.colCount
        self.nullCount = (self.total * 1.0)/100 * percentage
        temp = self.nullCount  
        while temp > 0:
            r = randint(0,self.rowCount-1)
            c = randint(0,self.colCount-1)
            if (self.data[r][c] != np.NaN):
                self.data[r,c] = np.NaN
                temp = temp - 1

    def printData(self):
        print(self.data)

    def splitDataSet(self, column):
        X = np.delete(self.data, (column), axis=1) #data without the n-th column
        Y = self.data[:,column] #nth column only
        
        I = np.squeeze(np.asarray(np.argwhere(np.isnan(Y)))) #inidices where the column is nan
        
        X_ = np.delete(X, (I), axis=0) #remaining data without the nan values in output column
        Y_ = np.delete(Y, (I), axis=0) #column without nan values
        
        X_X = X[I,:]
        
        return X, Y, I, X_, Y_, X_X
    
    