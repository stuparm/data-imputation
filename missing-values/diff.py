# -*- coding: utf-8 -*-
"""
Created on Tue Jun 13 23:32:27 2017

@author: stuparm
"""
from util import files
import numpy as np
from numpy import genfromtxt

dataset = genfromtxt("dataset/breast-cancer/data.csv", delimiter=",")
reduced = genfromtxt("dataset/breast-cancer/data-reduced.csv", delimiter=",")
populated = genfromtxt("dataset/breast-cancer/data-populated.csv", delimiter=",")
populate_mean = genfromtxt("dataset/breast-cancer/data-populated-mean.csv", delimiter=",")

indexes = np.argwhere(np.isnan(reduced))

xy = np.hsplit(indexes,2)

expected = dataset[xy[0],xy[1]]
imputed = populated[xy[0],xy[1]]
imputed_mean = populate_mean[xy[0],xy[1]]

diff = (expected - imputed)
diff_mean = (expected - imputed_mean)

diffsquare = (expected - imputed)*(expected - imputed)
diffsquare_mean = (expected - imputed_mean)*(expected - imputed_mean)


print("Clustered method mean squared error: ",np.mean(diffsquare))
print("General method mean squared error: ",np.mean(diffsquare_mean))
