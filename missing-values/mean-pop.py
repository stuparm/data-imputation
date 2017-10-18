# -*- coding: utf-8 -*-
"""
Created on Wed Jun 14 00:10:25 2017

@author: stuparm
"""
from util import files
import numpy as np
from numpy import genfromtxt

data = genfromtxt("dataset/breast-cancer/data-reduced.csv", delimiter=",")

shape = data.shape
rows = shape[0]
cols = shape[1]

for col in range(0, cols):
    y = data[:,col]
    nan_indexes = np.where(np.isnan(y))
    mean = np.nanmean(y)
    y[nan_indexes] = mean
    data[:,col] = y

files.write("dataset/breast-cancer/data-populated-mean.csv",data)

