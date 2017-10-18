#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Apr 16 23:06:10 2017

@author: miha
"""

from util import files
#from util import kmeans
import kmeans
from util import dataset
import numpy as np
import time
#import pandas as pd
#from matplotlib import pyplot as plt
#from sklearn.cluster import KMeans



data = files.read_numpy("dataset/breast-cancer/data.csv")

dataset = dataset(data)
dataset.reduce(5)

reduced = dataset.reduced_data

files.write("dataset/breast-cancer/data-reduced.csv",dataset.reduced_data)


row_count = dataset.row_count()
column_count = dataset.column_count()

populated = np.array((row_count,column_count))

def addPopulatedColumn(column, data, closest):
    print(closest)

for col in range(0,column_count):
    removed = dataset.remove_column(col)
    y = removed[0]
    X = removed[1]    
    k = kmeans.get_centroid_count(y)
    
#    print(col)
#    centroids, closest = kmeans.cluster(dataset.reduced_data, k)
    centroids, closest = kmeans.cluster(X, k)
    
    
    for cur in range(0,k):
        indexes = np.where(closest == cur)
        cluster = y[indexes]
        nan_indexes = np.where(np.isnan(cluster))
        mean = np.nanmean(cluster)
        cluster[nan_indexes] = mean
        reduced[indexes,col] = cluster        

files.write("dataset/breast-cancer/data-populated.csv",reduced)
    
#    addPopulatedColumn(col, dataset.reduced_data, closest)
    
    

    
x = dataset.remove_column(2)
print(x[0].shape)
print(x[1].shape)







